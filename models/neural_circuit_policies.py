import tensorflow as tf
import numpy as np


class Wiring:
    def __init__(self, units):
        self.units = units
        self.adjacency_matrix = np.zeros([units, units], dtype=np.int32)
        self.input_dim = None
        self.output_dim = None

    def build(self, input_shape):
        input_dim = int(input_shape[1])
        if self.input_dim is not None and self.input_dim != input_dim:
            raise ValueError(
                "Conflicting input dimensions provided. set_input_dim() was called with {} but actual input has dimension {}".format(
                    self.input_dim, input_dim
                )
            )
        if self.input_dim is None:
            self.set_input_dim(input_dim)

    def erev_initializer(self, shape, dtype=None):
        return tf.convert_to_tensor(self.adjacency_matrix, dtype=tf.float32)

    def sensory_erev_initializer(self, shape, dtype=None):
        return tf.convert_to_tensor(self.sensory_adjacency_matrix, dtype=tf.float32)

    def set_input_dim(self, input_dim):
        self.input_dim = input_dim
        self.sensory_adjacency_matrix = np.zeros(
            [input_dim, self.units], dtype=np.int32
        )

    def set_output_dim(self, output_dim):
        self.output_dim = output_dim

    # May be overwritten by child class
    def get_type_of_neuron(self, neuron_id):
        return "motor" if neuron_id < self.output_dim else "inter"

    def add_synapse(self, src, dest, polarity):
        if src < 0 or src >= self.units:
            raise ValueError(
                "Cannot add synapse originating in {} if cell has only {} units".format(
                    src, self.units
                )
            )
        if dest < 0 or dest >= self.units:
            raise ValueError(
                "Cannot add synapse feeding into {} if cell has only {} units".format(
                    dest, self.units
                )
            )
        if not polarity in [-1, 1]:
            raise ValueError(
                "Cannot add synapse with polarity {} (expected -1 or +1)".format(
                    polarity
                )
            )
        self.adjacency_matrix[src, dest] = polarity

    def add_sensory_synapse(self, src, dest, polarity):
        if self.input_dim is None:
            raise ValueError(
                "Cannot add sensory synapses before build() has been called!"
            )
        if src < 0 or src >= self.input_dim:
            raise ValueError(
                "Cannot add sensory synapse originating in {} if input has only {} features".format(
                    src, self.input_dim
                )
            )
        if dest < 0 or dest >= self.units:
            raise ValueError(
                "Cannot add synapse feeding into {} if cell has only {} units".format(
                    dest, self.units
                )
            )
        if not polarity in [-1, 1]:
            raise ValueError(
                "Cannot add synapse with polarity {} (expected -1 or +1)".format(
                    polarity
                )
            )
        self.sensory_adjacency_matrix[src, dest] = polarity


class NCP(Wiring):
    def __init__(
            self,
            inter_neurons,
            command_neurons,
            motor_neurons,
            sensory_fanout,
            inter_fanout,
            recurrent_command_synapses,
            motor_fanin,
            seed=22222,
    ):

        super(NCP, self).__init__(inter_neurons + command_neurons + motor_neurons)
        self.set_output_dim(motor_neurons)
        self._rng = np.random.RandomState(seed)
        self._num_inter_neurons = inter_neurons
        self._num_command_neurons = command_neurons
        self._num_motor_neurons = motor_neurons
        self._sensory_fanout = sensory_fanout
        self._inter_fanout = inter_fanout
        self._recurrent_command_synapses = recurrent_command_synapses
        self._motor_fanin = motor_fanin

        # Neuron IDs: [0..motor ... command ... inter]
        self._motor_neurons = list(range(0, self._num_motor_neurons))
        self._command_neurons = list(
            range(
                self._num_motor_neurons,
                self._num_motor_neurons + self._num_command_neurons,
            )
        )
        self._inter_neurons = list(
            range(
                self._num_motor_neurons + self._num_command_neurons,
                self._num_motor_neurons
                + self._num_command_neurons
                + self._num_inter_neurons,
            )
        )

        if self._motor_fanin > self._num_command_neurons:
            raise ValueError(
                "Error: Motor fanin parameter is {} but there are only {} command neurons".format(
                    self._motor_fanin, self._num_command_neurons
                )
            )
        if self._sensory_fanout > self._num_inter_neurons:
            raise ValueError(
                "Error: Sensory fanout parameter is {} but there are only {} inter neurons".format(
                    self._sensory_fanout, self._num_inter_neurons
                )
            )
        if self._inter_fanout > self._num_command_neurons:
            raise ValueError(
                "Error:: Inter fanout parameter is {} but there are only {} command neurons".format(
                    self._inter_fanout, self._num_command_neurons
                )
            )

    def get_type_of_neuron(self, neuron_id):
        if neuron_id < self._num_motor_neurons:
            return "motor"
        if neuron_id < self._num_motor_neurons + self._num_command_neurons:
            return "command"
        return "inter"

    def _build_sensory_to_inter_layer(self):
        unreachable_inter_neurons = [l for l in self._inter_neurons]
        # Randomly connects each sensory neuron to exactly _sensory_fanout number of interneurons
        for src in self._sensory_neurons:
            for dest in self._rng.choice(
                    self._inter_neurons, size=self._sensory_fanout, replace=False
            ):
                if dest in unreachable_inter_neurons:
                    unreachable_inter_neurons.remove(dest)
                polarity = self._rng.choice([-1, 1])
                self.add_sensory_synapse(src, dest, polarity)

        # If it happens that some interneurons are not connected, connect them now
        mean_inter_neuron_fanin = int(
            self._num_sensory_neurons * self._sensory_fanout / self._num_inter_neurons
        )
        # Connect "forgotten" inter neuron by at least 1 and at most all sensory neuron
        mean_inter_neuron_fanin = np.clip(
            mean_inter_neuron_fanin, 1, self._num_sensory_neurons
        )
        for dest in unreachable_inter_neurons:
            for src in self._rng.choice(
                    self._sensory_neurons, size=mean_inter_neuron_fanin, replace=False
            ):
                polarity = self._rng.choice([-1, 1])
                self.add_sensory_synapse(src, dest, polarity)

    def _build_inter_to_command_layer(self):
        # Randomly connect interneurons to command neurons
        unreachable_command_neurons = [l for l in self._command_neurons]
        for src in self._inter_neurons:
            for dest in self._rng.choice(
                    self._command_neurons, size=self._inter_fanout, replace=False
            ):
                if dest in unreachable_command_neurons:
                    unreachable_command_neurons.remove(dest)
                polarity = self._rng.choice([-1, 1])
                self.add_synapse(src, dest, polarity)

        # If it happens that some command neurons are not connected, connect them now
        mean_command_neurons_fanin = int(
            self._num_inter_neurons * self._inter_fanout / self._num_command_neurons
        )
        # Connect "forgotten" command neuron by at least 1 and at most all inter neuron
        mean_command_neurons_fanin = np.clip(
            mean_command_neurons_fanin, 1, self._num_command_neurons
        )
        for dest in unreachable_command_neurons:
            for src in self._rng.choice(
                    self._inter_neurons, size=mean_command_neurons_fanin, replace=False
            ):
                polarity = self._rng.choice([-1, 1])
                self.add_synapse(src, dest, polarity)

    def _build_recurrent_command_layer(self):
        # Add recurrency in command neurons
        for i in range(self._recurrent_command_synapses):
            src = self._rng.choice(self._command_neurons)
            dest = self._rng.choice(self._command_neurons)
            polarity = self._rng.choice([-1, 1])
            self.add_synapse(src, dest, polarity)

    def _build_command__to_motor_layer(self):
        # Randomly connect command neurons to motor neurons
        unreachable_command_neurons = [l for l in self._command_neurons]
        for dest in self._motor_neurons:
            for src in self._rng.choice(
                    self._command_neurons, size=self._motor_fanin, replace=False
            ):
                if src in unreachable_command_neurons:
                    unreachable_command_neurons.remove(src)
                polarity = self._rng.choice([-1, 1])
                self.add_synapse(src, dest, polarity)

        # If it happens that some command neurons are not connected, connect them now
        mean_command_fanout = int(
            self._num_motor_neurons * self._motor_fanin / self._num_command_neurons
        )
        # Connect "forgotten" command neuron to at least 1 and at most all motor neuron
        mean_command_fanout = np.clip(mean_command_fanout, 1, self._num_motor_neurons)
        for src in unreachable_command_neurons:
            for dest in self._rng.choice(
                    self._motor_neurons, size=mean_command_fanout, replace=False
            ):
                polarity = self._rng.choice([-1, 1])
                self.add_synapse(src, dest, polarity)

    def build(self, input_shape):
        super().build(input_shape)
        self._num_sensory_neurons = self.input_dim
        self._sensory_neurons = list(range(0, self._num_sensory_neurons))

        self._build_sensory_to_inter_layer()
        self._build_inter_to_command_layer()
        self._build_recurrent_command_layer()
        self._build_command__to_motor_layer()


class LTCCell(tf.keras.layers.Layer):
    def __init__(
            self,
            wiring,
            input_mapping="affine",
            output_mapping="affine",
            ode_unfolds=6,
            epsilon=1e-8,
            initialization_ranges=None,
            **kwargs
    ):

        self._init_ranges = {
            "gleak": (0.001, 1.0),
            "vleak": (-0.2, 0.2),
            "cm": (0.4, 0.6),
            "w": (0.001, 1.0),
            "sigma": (3, 8),
            "mu": (0.3, 0.8),
            "sensory_w": (0.001, 1.0),
            "sensory_sigma": (3, 8),
            "sensory_mu": (0.3, 0.8),
        }
        if not initialization_ranges is None:
            for k, v in initialization_ranges.items():
                if k not in self._init_ranges.keys():
                    raise ValueError(
                        "Unknown parameter '{}' in initialization range dictionary! (Expected only {})".format(
                            k, str(list(self._init_range.keys()))
                        )
                    )
                if k in ["gleak", "cm", "w", "sensory_w"] and v[0] < 0:
                    raise ValueError(
                        "Initialization range of parameter '{}' must be non-negative!".format(
                            k
                        )
                    )
                if v[0] > v[1]:
                    raise ValueError(
                        "Initialization range of parameter '{}' is not a valid range".format(
                            k
                        )
                    )
                self._init_ranges[k] = v

        self._wiring = wiring
        self._input_mapping = input_mapping
        self._output_mapping = output_mapping
        self._ode_unfolds = ode_unfolds
        self._epsilon = epsilon
        super(LTCCell, self).__init__(name="wormnet", **kwargs)

    @property
    def state_size(self):
        return self._wiring.units

    @property
    def sensory_size(self):
        return self._wiring.input_dim

    @property
    def motor_size(self):
        return self._wiring.output_dim

    @property
    def synapse_count(self):
        return np.sum(np.abs(self._wiring.adjacency_matrix))

    @property
    def sensory_synapse_count(self):
        return np.sum(np.abs(self._wiring.adjacency_matrix))

    def _get_initializer(self, param_name):
        minval, maxval = self._init_ranges[param_name]
        if minval == maxval:
            return tf.keras.initializers.Constant(minval)
        else:
            return tf.keras.initializers.RandomUniform(minval, maxval)

    def build(self, input_shape):

        self._wiring.build(input_shape)

        self._params = {}
        self._params["gleak"] = self.add_weight(
            name="gleak",
            shape=(self.state_size,),
            dtype=tf.float32,
            constraint=tf.keras.constraints.NonNeg(),
            initializer=self._get_initializer("gleak"),
        )
        self._params["vleak"] = self.add_weight(
            name="vleak",
            shape=(self.state_size,),
            dtype=tf.float32,
            initializer=self._get_initializer("vleak"),
        )
        self._params["cm"] = self.add_weight(
            name="cm",
            shape=(self.state_size,),
            dtype=tf.float32,
            constraint=tf.keras.constraints.NonNeg(),
            initializer=self._get_initializer("cm"),
        )
        self._params["sigma"] = self.add_weight(
            name="sigma",
            shape=(self.state_size, self.state_size),
            dtype=tf.float32,
            initializer=self._get_initializer("sigma"),
        )
        self._params["mu"] = self.add_weight(
            name="mu",
            shape=(self.state_size, self.state_size),
            dtype=tf.float32,
            initializer=self._get_initializer("mu"),
        )
        self._params["w"] = self.add_weight(
            name="w",
            shape=(self.state_size, self.state_size),
            dtype=tf.float32,
            constraint=tf.keras.constraints.NonNeg(),
            initializer=self._get_initializer("w"),
        )
        self._params["erev"] = self.add_weight(
            name="erev",
            shape=(self.state_size, self.state_size),
            dtype=tf.float32,
            initializer=self._wiring.erev_initializer,
        )

        self._params["sensory_sigma"] = self.add_weight(
            name="sensory_sigma",
            shape=(self.sensory_size, self.state_size),
            dtype=tf.float32,
            initializer=self._get_initializer("sensory_sigma"),
        )
        self._params["sensory_mu"] = self.add_weight(
            name="sensory_mu",
            shape=(self.sensory_size, self.state_size),
            dtype=tf.float32,
            initializer=self._get_initializer("sensory_mu"),
        )
        self._params["sensory_w"] = self.add_weight(
            name="sensory_w",
            shape=(self.sensory_size, self.state_size),
            dtype=tf.float32,
            constraint=tf.keras.constraints.NonNeg(),
            initializer=self._get_initializer("sensory_w"),
        )
        self._params["sensory_erev"] = self.add_weight(
            name="sensory_erev",
            shape=(self.sensory_size, self.state_size),
            dtype=tf.float32,
            initializer=self._wiring.sensory_erev_initializer,
        )

        self._params["sparsity_mask"] = tf.constant(
            np.abs(self._wiring.adjacency_matrix), dtype=tf.float32
        )
        self._params["sensory_sparsity_mask"] = tf.constant(
            np.abs(self._wiring.sensory_adjacency_matrix), dtype=tf.float32
        )

        if self._input_mapping in ["affine", "linear"]:
            self._params["input_w"] = self.add_weight(
                name="input_w",
                shape=(self.sensory_size,),
                dtype=tf.float32,
                initializer=tf.keras.initializers.Constant(1),
            )
        if self._input_mapping == "affine":
            self._params["input_b"] = self.add_weight(
                name="input_b",
                shape=(self.sensory_size,),
                dtype=tf.float32,
                initializer=tf.keras.initializers.Constant(0),
            )

        if self._output_mapping in ["affine", "linear"]:
            self._params["output_w"] = self.add_weight(
                name="output_w",
                shape=(self.motor_size,),
                dtype=tf.float32,
                initializer=tf.keras.initializers.Constant(1),
            )
        if self._output_mapping == "affine":
            self._params["output_b"] = self.add_weight(
                name="output_b",
                shape=(self.motor_size,),
                dtype=tf.float32,
                initializer=tf.keras.initializers.Constant(0),
            )
        self.built = True

    def _sigmoid(self, v_pre, mu, sigma):
        v_pre = tf.expand_dims(v_pre, axis=-1)  # For broadcasting
        mues = v_pre - mu
        x = sigma * mues
        return tf.nn.sigmoid(x)

    def _ode_solver(self, inputs, state):
        v_pre = state

        # We can pre-compute the effects of the sensory neurons here
        sensory_w_activation = self._params["sensory_w"] * self._sigmoid(
            inputs, self._params["sensory_mu"], self._params["sensory_sigma"]
        )
        sensory_w_activation *= self._params["sensory_sparsity_mask"]

        sensory_rev_activation = sensory_w_activation * self._params["sensory_erev"]

        # Reduce over dimension 1 (=source sensory neurons)
        w_numerator_sensory = tf.reduce_sum(sensory_rev_activation, axis=1)
        w_denominator_sensory = tf.reduce_sum(sensory_w_activation, axis=1)

        # Unfold the multiply ODE multiple times into one RNN step
        for t in range(self._ode_unfolds):
            w_activation = self._params["w"] * self._sigmoid(
                v_pre, self._params["mu"], self._params["sigma"]
            )

            w_activation *= self._params["sparsity_mask"]

            rev_activation = w_activation * self._params["erev"]

            # Reduce over dimension 1 (=source neurons)
            w_numerator = tf.reduce_sum(rev_activation, axis=1) + w_numerator_sensory
            w_denominator = tf.reduce_sum(w_activation, axis=1) + w_denominator_sensory

            cm_t = self._params["cm"] / (1.0 / self._ode_unfolds)
            numerator = (
                    cm_t * v_pre
                    + self._params["gleak"] * self._params["vleak"]
                    + w_numerator
            )
            denominator = cm_t + self._params["gleak"] + w_denominator

            # Avoid dividing by 0
            v_pre = numerator / (denominator + self._epsilon)

        return v_pre

    def _map_inputs(self, inputs):
        if self._input_mapping in ["affine", "linear"]:
            inputs = inputs * self._params["input_w"]
        if self._input_mapping == "affine":
            inputs = inputs + self._params["input_b"]
        return inputs

    def _map_outputs(self, state):
        output = state
        if self.motor_size < self.state_size:
            output = output[:, 0: self.motor_size]

        if self._output_mapping in ["affine", "linear"]:
            output = output * self._params["output_w"]
        if self._output_mapping == "affine":
            output = output + self._params["output_b"]
        return output

    def call(self, inputs, states):
        inputs = self._map_inputs(inputs)

        next_state = self._ode_solver(inputs, states[0])

        outputs = self._map_outputs(next_state)

        return outputs, [next_state]

    def get_graph(self, include_sensory_neurons=True):
        if not self.built:
            raise ValueError(
                "LTCCell layer is not built yet.\n"
                "This is probably because the input shape is not known yet.\n"
                "Consider calling the model.build(...) method using the shape of the inputs."
            )
        # Only import networkx if we really need it
        import networkx as nx

        DG = nx.DiGraph()
        for i in range(self.state_size):
            neuron_type = self._wiring.get_type_of_neuron(i)
            DG.add_node("neuron_{:d}".format(i), neuron_type=neuron_type)
        for i in range(self.sensory_size):
            DG.add_node("sensory_{:d}".format(i), neuron_type="sensory")

        erev = self._params["erev"].numpy()
        sensory_erev = self._params["sensory_erev"].numpy()

        for src in range(self.sensory_size):
            for dest in range(self.state_size):
                if self._wiring.sensory_adjacency_matrix[src, dest] != 0:
                    polarity = (
                        "excitatory" if sensory_erev[src, dest] >= 0.0 else "inhibitory"
                    )
                    DG.add_edge(
                        "sensory_{:d}".format(src),
                        "neuron_{:d}".format(dest),
                        polarity=polarity,
                    )

        for src in range(self.state_size):
            for dest in range(self.state_size):
                if self._wiring.adjacency_matrix[src, dest] != 0:
                    polarity = "excitatory" if erev[src, dest] >= 0.0 else "inhibitory"
                    DG.add_edge(
                        "neuron_{:d}".format(src),
                        "neuron_{:d}".format(dest),
                        polarity=polarity,
                    )
        return DG

    def draw_graph(
            self,
            layout="shell",
            neuron_colors=None,
            synapse_colors=None,
            draw_labels=False,
    ):
        # May switch to Cytoscape once support in Google Colab is available
        # https://stackoverflow.com/questions/62421021/how-do-i-install-cytoscape-on-google-colab
        import networkx as nx
        import matplotlib.patches as mpatches
        import matplotlib.pyplot as plt

        if isinstance(synapse_colors, str):
            synapse_colors = {
                "excitatory": synapse_colors,
                "inhibitory": synapse_colors,
            }
        elif synapse_colors is None:
            synapse_colors = {"excitatory": "tab:green", "inhibitory": "tab:red"}

        default_colors = {
            "inter": "tab:blue",
            "motor": "tab:orange",
            "sensory": "tab:olive",
        }
        if neuron_colors is None:
            neuron_colors = {}
        # Merge default with user provided color dict
        for k, v in default_colors.items():
            if not k in neuron_colors.keys():
                neuron_colors[k] = v

        legend_patches = []
        for k, v in neuron_colors.items():
            label = "{}{} neurons".format(k[0].upper(), k[1:])
            color = v
            legend_patches.append(mpatches.Patch(color=color, label=label))

        G = self.get_graph()
        layouts = {
            "kamada": nx.kamada_kawai_layout,
            "circular": nx.circular_layout,
            "random": nx.random_layout,
            "shell": nx.shell_layout,
            "spring": nx.spring_layout,
            "spectral": nx.spectral_layout,
            "spiral": nx.spiral_layout,
        }
        if layout not in layouts.keys():
            raise ValueError(
                "Unknown layer '{}', use one of '{}'".format(
                    layout, str(layouts.keys())
                )
            )
        pos = layouts[layout](G)

        # Draw neurons
        for i in range(self.state_size):
            node_name = "neuron_{:d}".format(i)
            neuron_type = G.nodes[node_name]["neuron_type"]
            neuron_color = "tab:blue"
            if neuron_type in neuron_colors.keys():
                neuron_color = neuron_colors[neuron_type]
            nx.draw_networkx_nodes(G, pos, [node_name], node_color=neuron_color)

        # Draw sensory neurons
        for i in range(self.sensory_size):
            node_name = "sensory_{:d}".format(i)
            neuron_color = "blue"
            if "sensory" in neuron_colors.keys():
                neuron_color = neuron_colors["sensory"]
            nx.draw_networkx_nodes(G, pos, [node_name], node_color=neuron_color)

        # Optional: draw labels
        if draw_labels:
            nx.draw_networkx_labels(G, pos)

        # Draw edges
        for node1, node2, data in G.edges(data=True):
            polarity = data["polarity"]
            edge_color = synapse_colors[polarity]
            nx.draw_networkx_edges(G, pos, [(node1, node2)], edge_color=edge_color)

        return legend_patches
