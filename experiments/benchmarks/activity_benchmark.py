import os

import numpy as np
import pandas as pd

import experiments.benchmarks.benchmark as benchmark


class ActivityBenchmark(benchmark.Benchmark):
    def __init__(self):
        super().__init__('activity',
                         (('--sequence_length', 64, int),
                          ('--max_sample_amount', 10_000, int),
                          ('--loss_name', 'SparseCategoricalCrossentropy', str),
                          ('--loss_config', {'from_logits': True}, dict),
                          ('--metric_name', 'SparseCategoricalAccuracy', str)))

    def get_data_and_output_size(self):
        sequence_length = self.args.sequence_length
        max_sample_amount = self.args.max_sample_amount
        activity_table = pd.read_csv(os.path.join(self.supplementary_data_dir, 'activity.csv'), header=None)
        sensor_inputs = []
        time_inputs = []
        activity_outputs = []
        for activity_marker in activity_table[0].unique():
            activity_series = activity_table[activity_table[0] == activity_marker].iloc[:, 1:]
            for start_index in range(0, len(activity_series) - sequence_length + 1, sequence_length // 4):
                current_sequence = np.array(activity_series[start_index:start_index + sequence_length])
                sensor_inputs.append(current_sequence[:, 1:8])
                time_inputs.append(current_sequence[:, :1])
                activity_outputs.append(current_sequence[-1, 8:])
        return (np.stack(sensor_inputs)[:max_sample_amount], np.stack(time_inputs)[:max_sample_amount]), (np.stack(activity_outputs)[:max_sample_amount],), 7


ActivityBenchmark()
