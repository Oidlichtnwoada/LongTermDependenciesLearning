import tensorflow as tf

from models.differentiable_neural_computer import DNC
from models.enhanced_unitary_rnn import EnhancedUnitaryRNN
from models.memory_layer import MemoryLayerCell, MemoryLayerAttention
from models.neural_circuit_policies import NeuralCircuitPolicies
from models.recurrent_transformer import MultiHeadRecurrentAttention
from models.transformer import Transformer, MultiHeadAttention
from models.unitary_rnn import EUNNCell


def get_differentiable_neural_computer_output(output_size, input_tensor):
    return tf.keras.layers.RNN(DNC(output_size, 100, 64, 16, 4), return_sequences=True)(input_tensor)


def get_unitary_rnn_output(output_size, input_tensor):
    return tf.keras.layers.TimeDistributed(tf.keras.layers.Dense(output_size))(
        tf.math.real(tf.keras.layers.RNN(EUNNCell(128, 4), return_sequences=True)(input_tensor)))


def get_enhanced_unitary_rnn_output(output_size, input_tensor):
    return tf.keras.layers.RNN(EnhancedUnitaryRNN(128, output_size), return_sequences=True)(input_tensor)


def get_lstm_output(output_size, input_tensor):
    return tf.keras.layers.TimeDistributed(tf.keras.layers.Dense(output_size))(
        tf.keras.layers.LSTM(40, return_sequences=True)(input_tensor))


def get_transformer_output(output_size, input_tensor):
    return Transformer(token_amount=1, token_size=output_size, d_model=64, num_heads=4, d_ff=128,
                       num_layers=4, dropout_rate=0.1, attention=MultiHeadAttention)(input_tensor)


def get_memory_layer_transformer_output(output_size, input_tensor):
    return Transformer(token_amount=1, token_size=output_size, d_model=64, num_heads=4, d_ff=128,
                       num_layers=4, dropout_rate=0.1, attention=MemoryLayerAttention)(input_tensor)


def get_recurrent_transformer_output(output_size, input_tensor):
    return Transformer(token_amount=1, token_size=output_size, d_model=64, num_heads=4, d_ff=128,
                       num_layers=4, dropout_rate=0.1, attention=MultiHeadRecurrentAttention)(input_tensor)


def get_neural_circuit_policies_output(output_size, input_tensor):
    return NeuralCircuitPolicies(
        output_length=output_size, inter_neurons=32, command_neurons=16, motor_neurons=output_size,
        sensory_fanout=4, inter_fanout=4, recurrent_command_synapses=8, motor_fanin=6)(input_tensor)


def get_memory_layer_output(output_size, input_tensor):
    return tf.keras.layers.RNN(MemoryLayerCell(output_size=output_size), return_sequences=True)(input_tensor)


def get_model_output_by_name(model_name, output_size, input_tensor):
    return eval(f'get_{model_name}_output')(output_size, input_tensor if len(input_tensor) > 1 else input_tensor[0])