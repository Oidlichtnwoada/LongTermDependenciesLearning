import numpy as np
import tensorflow as tf

from benchmark import Benchmark
from models.differentiable_neural_computer import DNC
from models.enhanced_unitary_rnn import EnhancedUnitaryRNN
from models.memory_layer import MemoryLayerCell
from models.unitary_rnn import EUNNCell


class MemoryBenchmark(Benchmark):
    def __init__(self):
        super().__init__('memory', True,
                         (('--model', 'memory_layer', str),
                          ('--memory_length', 100, int),
                          ('--sequence_length', 10, int),
                          ('--category_amount', 10, int),
                          ('--sample_amount', 128_000, int),
                          ('--loss_name', 'SparseCategoricalCrossentropy', str),
                          ('--loss_config', {'from_logits': True}, dict),
                          ('--metric_name', 'SparseCategoricalAccuracy', str)))
        self.add_model_output('memory_layer',
                              tf.keras.layers.RNN(MemoryLayerCell(output_size=self.args.category_amount), return_sequences=True)(self.inputs[0]), True)
        self.add_model_output('lstm',
                              tf.keras.layers.TimeDistributed(tf.keras.layers.Dense(self.args.category_amount))(
                                  tf.keras.layers.LSTM(40, return_sequences=True)(self.inputs[0])), True)
        self.add_model_output('differentiable_neural_computer',
                              tf.keras.layers.RNN(DNC(self.args.category_amount, 100, 64, 16, 4), return_sequences=True)(self.inputs[0]), True)
        self.add_model_output('unitary_rnn',
                              tf.keras.layers.TimeDistributed(tf.keras.layers.Dense(self.args.category_amount))(
                                  tf.math.real(tf.keras.layers.RNN(EUNNCell(128, 4), return_sequences=True)(self.inputs[0]))), True)
        self.add_model_output('enhanced_unitary_rnn',
                              tf.keras.layers.RNN(EnhancedUnitaryRNN(128, self.args.category_amount), return_sequences=True)(self.inputs[0]), True)
        self.train_and_test()

    def get_data(self):
        memory_length = self.args.memory_length
        sequence_length = self.args.sequence_length
        category_amount = self.args.category_amount
        sample_amount = self.args.sample_amount
        memory_sequence = np.random.randint(low=0, high=category_amount - 2, size=(sample_amount, sequence_length, 1))
        first_blank_sequence = (category_amount - 2) * np.ones((sample_amount, memory_length - 1, 1))
        marker_sequence = (category_amount - 1) * np.ones((sample_amount, 1, 1))
        second_blank_sequence = (category_amount - 2) * np.ones((sample_amount, sequence_length, 1))
        input_sequence = np.concatenate((memory_sequence, first_blank_sequence, marker_sequence, second_blank_sequence), 1)
        time_sequence = np.ones_like(input_sequence)
        third_blank_sequence = (category_amount - 2) * np.ones((sample_amount, memory_length + sequence_length, 1))
        output_sequence = np.concatenate((third_blank_sequence, memory_sequence), 1)
        return np.stack((input_sequence, time_sequence)), np.stack((output_sequence,))


MemoryBenchmark()
