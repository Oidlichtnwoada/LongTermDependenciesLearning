import numpy as np

import experiments.benchmarks.benchmark


class CellBenchmark(experiments.benchmarks.benchmark.Benchmark):
    def __init__(self):
        super().__init__('cell', True,
                         (('--memory_high_symbol', 1, int),
                          ('--memory_low_symbol', 0, int),
                          ('--memory_length', 128, int),
                          ('--cell_switches', 2, int),
                          ('--sample_size', 1_000, int),
                          ('--loss_name', 'MeanSquaredError', str),
                          ('--loss_config', {}, dict),
                          ('--metric_name', 'MeanAbsoluteError', str)))

    def get_data(self):
        memory_high_symbol = self.args.memory_high_symbol
        memory_low_symbol = self.args.memory_low_symbol
        memory_length = self.args.memory_length
        cell_switches = self.args.cell_switches
        sample_size = self.args.sample_size
        model_input = np.zeros((sample_size, (cell_switches + 1) * memory_length, 2))
        model_output = np.zeros((sample_size, (cell_switches + 1) * memory_length, 2))
        for i in range(cell_switches + 1):
            even = int(i % 2 == 0)
            odd = int(i % 2 == 1)
            model_input[0::2, i * memory_length, odd] = memory_high_symbol
            model_input[0::2, i * memory_length, even] = memory_low_symbol
            model_output[0::2, i * memory_length:(i + 1) * memory_length, 0] = even * memory_high_symbol
            model_output[0::2, i * memory_length:(i + 1) * memory_length, 1] = odd * memory_high_symbol
            model_input[1::2, i * memory_length, even] = memory_high_symbol
            model_input[1::2, i * memory_length, odd] = memory_low_symbol
            model_output[1::2, i * memory_length:(i + 1) * memory_length, 0] = odd * memory_high_symbol
            model_output[1::2, i * memory_length:(i + 1) * memory_length, 1] = even * memory_high_symbol
        return (model_input,), (model_output,), (2, slice(None))


CellBenchmark()