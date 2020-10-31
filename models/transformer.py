import numpy as np
import tensorflow as tf


def positional_encoding(positions, d_model):
    # compute factors for all dimensions
    positional_encoding_factors = 1 / np.power(1E4, 2 * (np.arange(d_model) // 2) / d_model)
    # multiply each factor with the corresponding position to get the argument for the trigonometric functions
    positional_encoding_matrix = positions.numpy() * positional_encoding_factors
    # apply a sine to the even dimensions
    positional_encoding_matrix[:, :, 0::2] = np.sin(positional_encoding_matrix[:, :, 0::2])
    # apply a cosine to the odd dimensions
    positional_encoding_matrix[:, :, 1::2] = np.cos(positional_encoding_matrix[:, :, 1::2])
    # cast the result and return a tensor
    return tf.cast(positional_encoding_matrix, dtype=tf.float32)


def feed_forward_network(d_model, d_ff):
    # return the feed forward network structure used in the transformer layers
    return tf.keras.Sequential([
        # a dense layer with relu activation
        tf.keras.layers.Dense(d_ff, activation='relu'),
        # a dense layer without an activation function
        tf.keras.layers.Dense(d_model)
    ])


def dot_product_attention(queries, keys, values, d_qkv):
    # compute the attention logits from each query to each key
    attention_logits = tf.matmul(queries, tf.transpose(keys, perm=[0, 1, 3, 2]))
    # scale the attention logits
    scaled_attention_logits = attention_logits / tf.math.sqrt(tf.cast(d_qkv, dtype=tf.float32))
    # compute the attention weight to each value per query
    attention_weights = tf.nn.softmax(scaled_attention_logits)
    # compute the dpa output by weighting each value with the corresponding attention weight
    return tf.matmul(attention_weights, values)


def split_heads(qkv, num_heads, d_qkv):
    # split queries, key or values into num_heads - permutation necessary to compute right dot product
    return tf.transpose(tf.reshape(qkv, qkv.shape[:-1] + (num_heads, d_qkv)), perm=[0, 2, 1, 3])


class MultiHeadAttention(tf.keras.layers.Layer):
    def __init__(self, d_model, num_heads):
        super(MultiHeadAttention, self).__init__()
        # parameters
        self.d_model = d_model
        self.num_heads = num_heads
        # set size of queries, keys and values to d_model / num_heads
        assert self.d_model % self.num_heads == 0
        self.d_qkv = self.d_model // self.num_heads
        # used models or layers
        self.query_generator_network = tf.keras.layers.Dense(self.d_model)
        self.key_generator_network = tf.keras.layers.Dense(self.d_model)
        self.value_generator_network = tf.keras.layers.Dense(self.d_model)
        self.mha_output_generator_network = tf.keras.layers.Dense(self.d_model)

    def call(self, inputs, **kwargs):
        # split inputs tuple into the three arguments
        query_gen_input, key_gen_input, value_gen_input = inputs
        # generate queries, keys and values
        queries = self.query_generator_network(query_gen_input)
        keys = self.key_generator_network(key_gen_input)
        values = self.value_generator_network(value_gen_input)
        # split queries, keys and values to the right amount of heads
        queries_heads = split_heads(queries, self.num_heads, self.d_qkv)
        keys_heads = split_heads(keys, self.num_heads, self.d_qkv)
        value_heads = split_heads(values, self.num_heads, self.d_qkv)
        # compute the dot product attention
        dpa = dot_product_attention(queries_heads, keys_heads, value_heads, self.d_qkv)
        # transpose dpa matrix such that attention is behind input dimension
        reshaped_dpa = tf.transpose(dpa, perm=[0, 2, 1, 3])
        # merge heads to single value dimension
        concatenated_dpa = tf.reshape(reshaped_dpa, reshaped_dpa.shape[:-2] + (self.d_model,))
        # transform concatenated dpa to vectors of size d_model
        return self.mha_output_generator_network(concatenated_dpa)


class EncoderLayer(tf.keras.layers.Layer):
    def __init__(self, d_model, num_heads, d_ff):
        super(EncoderLayer, self).__init__()
        # parameters
        self.d_model = d_model
        self.num_heads = num_heads
        self.d_ff = d_ff
        # used models or layers
        self.mha = MultiHeadAttention(self.d_model, self.num_heads)
        self.ffn = feed_forward_network(self.d_model, self.d_ff)
        self.mha_layer_norm = tf.keras.layers.LayerNormalization(epsilon=1e-6)
        self.ffn_layer_norm = tf.keras.layers.LayerNormalization(epsilon=1e-6)

    def call(self, inputs, **kwargs):
        # compute multi head self attention output values
        mha_output = self.mha((inputs, inputs, inputs))
        # normalize mha output with residual connection
        mha_layer_norm_output = self.mha_layer_norm(inputs + mha_output)
        # compute feed forward network output values
        ffn_output = self.ffn(mha_layer_norm_output)
        # normalize ffn output with residual connection
        ffn_layer_norm_output = self.ffn_layer_norm(mha_layer_norm_output + ffn_output)
        # the output of the second normalization layer is the output of the encoder layer
        return ffn_layer_norm_output


class Encoder(tf.keras.layers.Layer):
    def __init__(self, d_model, num_heads, d_ff, num_layers):
        super(Encoder, self).__init__()
        # parameters
        self.d_model = d_model
        self.num_heads = num_heads
        self.d_ff = d_ff
        self.num_layers = num_layers
        # used models or layers
        self.embedding = tf.keras.layers.Dense(self.d_model)
        self.encoder_layers = [EncoderLayer(self.d_model, self.num_heads, self.d_ff) for _ in range(self.num_layers)]

    def call(self, inputs, **kwargs):
        # this function computes the output of the encoder
        signals, times = inputs
        # embed the signal vectors into vectors of size d_model
        embedded_signals = self.embedding(signals)
        # scale with with factor
        embedded_signals *= tf.math.sqrt(tf.cast(self.d_model, dtype=tf.float32))
        # add positional information to the embedded signals using times
        positional_embedded_signals = embedded_signals + positional_encoding(tf.cumsum(times, axis=1), self.d_model)
        # create variable that is updated by each encoder layer
        encoder_layer_inout = positional_embedded_signals
        for i in range(self.num_layers):
            # compute output of each encoder layer
            encoder_layer_inout = self.encoder_layers[i](encoder_layer_inout)
        # the output of the last encoder layer is the output of the encoder
        return encoder_layer_inout


class Decoder(tf.keras.layers.Layer):
    def __init__(self, token_amount):
        super(Decoder, self).__init__()
        # parameters
        self.token_amount = token_amount
        # used models or layers
        self.flatten_layer = tf.keras.layers.Flatten()
        self.dense_layer = tf.keras.layers.Dense(self.token_amount)

    def call(self, inputs, **kwargs):
        # this function computes the output of the decoder
        flattened_inputs = self.flatten_layer(inputs)
        return self.dense_layer(flattened_inputs)


class Transformer(tf.keras.Model):
    def __init__(self, token_amount, d_model=512, num_heads=8, d_ff=2048, num_layers=6):
        super(Transformer, self).__init__()
        # parameters
        self.token_amount = token_amount
        self.d_model = d_model
        self.num_heads = num_heads
        self.d_ff = d_ff
        self.num_layers = num_layers
        # used models or layers
        self.encoder = Encoder(self.d_model, self.num_heads, self.d_ff, self.num_layers)
        self.decoder = Decoder(self.token_amount)

    def call(self, inputs, training=None, mask=None):
        # build the encoder output
        encoder_output = self.encoder(inputs)
        # build the decoder output
        decoder_output = self.decoder(encoder_output)
        # the output of the transformer is the output of the decoder
        return decoder_output

    def get_config(self):
        pass
