ђЉ3
є█
B
AddV2
x"T
y"T
z"T"
Ttype:
2	ђљ
B
AssignVariableOp
resource
value"dtype"
dtypetypeѕ
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
.
Identity

input"T
output"T"	
Ttype
:
Less
x"T
y"T
z
"
Ttype:
2	
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(ѕ
=
Mul
x"T
y"T
z"T"
Ttype:
2	љ

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
│
PartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetypeѕ
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0ѕ
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0ѕ
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
Й
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ѕ
џ
StatelessWhile

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint

@
StaticRegexFullMatch	
input

output
"
patternstring
Ш
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
-
Tanh
x"T
y"T"
Ttype:

2
њ
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type
output_handle"
element_dtypetype"

shape_typetype:
2	
Ђ
TensorListReserve
element_shape"
shape_type
num_elements

handle"
element_dtypetype"

shape_typetype:
2	
ѕ
TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint         
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
ќ
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ѕ"serve*2.4.12v2.4.0-49-g85c8b2a817f8ЈМ1
t
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@
*
shared_namedense/kernel
m
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes

:@
*
dtype0
l

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_name
dense/bias
e
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes
:
*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
Є
lstm/lstm_cell/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ђ*&
shared_namelstm/lstm_cell/kernel
ђ
)lstm/lstm_cell/kernel/Read/ReadVariableOpReadVariableOplstm/lstm_cell/kernel*
_output_shapes
:	ђ*
dtype0
Џ
lstm/lstm_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@ђ*0
shared_name!lstm/lstm_cell/recurrent_kernel
ћ
3lstm/lstm_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOplstm/lstm_cell/recurrent_kernel*
_output_shapes
:	@ђ*
dtype0

lstm/lstm_cell/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*$
shared_namelstm/lstm_cell/bias
x
'lstm/lstm_cell/bias/Read/ReadVariableOpReadVariableOplstm/lstm_cell/bias*
_output_shapes	
:ђ*
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
ѓ
Adam/dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@
*$
shared_nameAdam/dense/kernel/m
{
'Adam/dense/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/m*
_output_shapes

:@
*
dtype0
z
Adam/dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*"
shared_nameAdam/dense/bias/m
s
%Adam/dense/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense/bias/m*
_output_shapes
:
*
dtype0
Ћ
Adam/lstm/lstm_cell/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ђ*-
shared_nameAdam/lstm/lstm_cell/kernel/m
ј
0Adam/lstm/lstm_cell/kernel/m/Read/ReadVariableOpReadVariableOpAdam/lstm/lstm_cell/kernel/m*
_output_shapes
:	ђ*
dtype0
Е
&Adam/lstm/lstm_cell/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@ђ*7
shared_name(&Adam/lstm/lstm_cell/recurrent_kernel/m
б
:Adam/lstm/lstm_cell/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp&Adam/lstm/lstm_cell/recurrent_kernel/m*
_output_shapes
:	@ђ*
dtype0
Ї
Adam/lstm/lstm_cell/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*+
shared_nameAdam/lstm/lstm_cell/bias/m
є
.Adam/lstm/lstm_cell/bias/m/Read/ReadVariableOpReadVariableOpAdam/lstm/lstm_cell/bias/m*
_output_shapes	
:ђ*
dtype0
ѓ
Adam/dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@
*$
shared_nameAdam/dense/kernel/v
{
'Adam/dense/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/v*
_output_shapes

:@
*
dtype0
z
Adam/dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*"
shared_nameAdam/dense/bias/v
s
%Adam/dense/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense/bias/v*
_output_shapes
:
*
dtype0
Ћ
Adam/lstm/lstm_cell/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ђ*-
shared_nameAdam/lstm/lstm_cell/kernel/v
ј
0Adam/lstm/lstm_cell/kernel/v/Read/ReadVariableOpReadVariableOpAdam/lstm/lstm_cell/kernel/v*
_output_shapes
:	ђ*
dtype0
Е
&Adam/lstm/lstm_cell/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@ђ*7
shared_name(&Adam/lstm/lstm_cell/recurrent_kernel/v
б
:Adam/lstm/lstm_cell/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp&Adam/lstm/lstm_cell/recurrent_kernel/v*
_output_shapes
:	@ђ*
dtype0
Ї
Adam/lstm/lstm_cell/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*+
shared_nameAdam/lstm/lstm_cell/bias/v
є
.Adam/lstm/lstm_cell/bias/v/Read/ReadVariableOpReadVariableOpAdam/lstm/lstm_cell/bias/v*
_output_shapes	
:ђ*
dtype0

NoOpNoOp
ї#
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*К"
valueй"B║" B│"
┘
layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
	optimizer
trainable_variables
regularization_losses
	variables
		keras_api


signatures
 
l
cell

state_spec
trainable_variables
regularization_losses
	variables
	keras_api
 
h

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
џ
iter

beta_1

beta_2
	decay
learning_ratemCmDmEmFmGvHvIvJvKvL
#
0
1
2
3
4
 
#
0
1
2
3
4
Г
non_trainable_variables
 layer_metrics

!layers
trainable_variables
"layer_regularization_losses
regularization_losses
#metrics
	variables
 
~

kernel
recurrent_kernel
bias
$trainable_variables
%regularization_losses
&	variables
'	keras_api
 

0
1
2
 

0
1
2
╣
(non_trainable_variables
)layer_metrics

*layers
trainable_variables
+layer_regularization_losses
regularization_losses
,metrics

-states
	variables
XV
VARIABLE_VALUEdense/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUE
dense/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
Г
.non_trainable_variables
/layer_metrics

0layers
trainable_variables
1layer_regularization_losses
regularization_losses
2metrics
	variables
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
[Y
VARIABLE_VALUElstm/lstm_cell/kernel0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUElstm/lstm_cell/recurrent_kernel0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm/lstm_cell/bias0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUE
 
 

0
1
2
3
 

30
41

0
1
2
 

0
1
2
Г
5non_trainable_variables
6layer_metrics

7layers
$trainable_variables
8layer_regularization_losses
%regularization_losses
9metrics
&	variables
 
 

0
 
 
 
 
 
 
 
 
4
	:total
	;count
<	variables
=	keras_api
D
	>total
	?count
@
_fn_kwargs
A	variables
B	keras_api
 
 
 
 
 
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

:0
;1

<	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

>0
?1

A	variables
{y
VARIABLE_VALUEAdam/dense/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/dense/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/lstm/lstm_cell/kernel/mLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
Ѕє
VARIABLE_VALUE&Adam/lstm/lstm_cell/recurrent_kernel/mLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/lstm/lstm_cell/bias/mLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/dense/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/lstm/lstm_cell/kernel/vLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Ѕє
VARIABLE_VALUE&Adam/lstm/lstm_cell/recurrent_kernel/vLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/lstm/lstm_cell/bias/vLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
r
serving_default_input_1Placeholder*#
_output_shapes
:ђf*
dtype0*
shape:ђf
r
serving_default_input_2Placeholder*#
_output_shapes
:ђf*
dtype0*
shape:ђf
┤
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1serving_default_input_2lstm/lstm_cell/kernellstm/lstm_cell/recurrent_kernellstm/lstm_cell/biasdense/kernel
dense/bias*
Tin
	2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:	ђ
*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8ѓ *,
f'R%
#__inference_signature_wrapper_22027
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
Ы	
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp)lstm/lstm_cell/kernel/Read/ReadVariableOp3lstm/lstm_cell/recurrent_kernel/Read/ReadVariableOp'lstm/lstm_cell/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp'Adam/dense/kernel/m/Read/ReadVariableOp%Adam/dense/bias/m/Read/ReadVariableOp0Adam/lstm/lstm_cell/kernel/m/Read/ReadVariableOp:Adam/lstm/lstm_cell/recurrent_kernel/m/Read/ReadVariableOp.Adam/lstm/lstm_cell/bias/m/Read/ReadVariableOp'Adam/dense/kernel/v/Read/ReadVariableOp%Adam/dense/bias/v/Read/ReadVariableOp0Adam/lstm/lstm_cell/kernel/v/Read/ReadVariableOp:Adam/lstm/lstm_cell/recurrent_kernel/v/Read/ReadVariableOp.Adam/lstm/lstm_cell/bias/v/Read/ReadVariableOpConst*%
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *'
f"R 
__inference__traced_save_24868
Ї
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense/kernel
dense/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm/lstm_cell/kernellstm/lstm_cell/recurrent_kernellstm/lstm_cell/biastotalcounttotal_1count_1Adam/dense/kernel/mAdam/dense/bias/mAdam/lstm/lstm_cell/kernel/m&Adam/lstm/lstm_cell/recurrent_kernel/mAdam/lstm/lstm_cell/bias/mAdam/dense/kernel/vAdam/dense/bias/vAdam/lstm/lstm_cell/kernel/v&Adam/lstm/lstm_cell/recurrent_kernel/vAdam/lstm/lstm_cell/bias/v*$
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ **
f%R#
!__inference__traced_restore_24950ов0
ѓ	
╝
while_cond_20606
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice3
/while_while_cond_20606___redundant_placeholder03
/while_while_cond_20606___redundant_placeholder13
/while_while_cond_20606___redundant_placeholder23
/while_while_cond_20606___redundant_placeholder3
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*S
_input_shapesB
@: : : : :         @:         @: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         @:-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
Ыр
и
9__inference___backward_gpu_lstm_with_fallback_22290_22465
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4A
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_17
3gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_2=
9gradients_transpose_grad_invertpermutation_transpose_perm-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5ѕm
gradients/grad_ys_0Identityplaceholder*
T0*
_output_shapes
:	ђ@2
gradients/grad_ys_0s
gradients/grad_ys_1Identityplaceholder_1*
T0*#
_output_shapes
:ђf@2
gradients/grad_ys_1o
gradients/grad_ys_2Identityplaceholder_2*
T0*
_output_shapes
:	ђ@2
gradients/grad_ys_2o
gradients/grad_ys_3Identityplaceholder_3*
T0*
_output_shapes
:	ђ@2
gradients/grad_ys_3f
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: 2
gradients/grad_ys_4Ю
"gradients/strided_slice_grad/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"f   ђ   @   2$
"gradients/strided_slice_grad/Shape┐
3gradients/strided_slice_grad/StridedSliceGrad/shapeConst*
_output_shapes
:*
dtype0*!
valueB"f   ђ   @   25
3gradients/strided_slice_grad/StridedSliceGrad/shapeй
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
         25
3gradients/strided_slice_grad/StridedSliceGrad/begin░
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 23
1gradients/strided_slice_grad/StridedSliceGrad/endИ
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:27
5gradients/strided_slice_grad/StridedSliceGrad/strides█
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad<gradients/strided_slice_grad/StridedSliceGrad/shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*#
_output_shapes
:fђ@*
shrink_axis_mask2/
-gradients/strided_slice_grad/StridedSliceGrad╠
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:2.
,gradients/transpose_9_grad/InvertPermutationО
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*#
_output_shapes
:fђ@2&
$gradients/transpose_9_grad/transposeЉ
gradients/Squeeze_grad/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"   ђ   @   2
gradients/Squeeze_grad/ShapeЙ
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*#
_output_shapes
:ђ@2 
gradients/Squeeze_grad/ReshapeЋ
gradients/Squeeze_1_grad/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"   ђ   @   2 
gradients/Squeeze_1_grad/Shape─
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*#
_output_shapes
:ђ@2"
 gradients/Squeeze_1_grad/ReshapeЃ
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*#
_output_shapes
:fђ@2
gradients/AddN{
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:2
gradients/zeros_likeх
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_11gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn3gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_13gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_2gradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*I
_output_shapes7
5:fђ:ђ@:ђ@:ђє2*
(gradients/CudnnRNN_grad/CudnnRNNBackprop─
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:2,
*gradients/transpose_grad/InvertPermutationЬ
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*#
_output_shapes
:ђf2$
"gradients/transpose_grad/transposeЊ
gradients/ExpandDims_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"ђ   @   2!
gradients/ExpandDims_grad/ShapeР
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*
_output_shapes
:	ђ@2#
!gradients/ExpandDims_grad/ReshapeЌ
!gradients/ExpandDims_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"ђ   @   2#
!gradients/ExpandDims_1_grad/ShapeУ
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*
_output_shapes
:	ђ@2%
#gradients/ExpandDims_1_grad/Reshape~
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_1_grad/Rank╣
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_1_grad/modѕ
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2
gradients/concat_1_grad/Shapeї
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/concat_1_grad/Shape_1ї
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/concat_1_grad/Shape_2ї
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/concat_1_grad/Shape_3Ї
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:ђ 2!
gradients/concat_1_grad/Shape_4Ї
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:ђ 2!
gradients/concat_1_grad/Shape_5Ї
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:ђ 2!
gradients/concat_1_grad/Shape_6Ї
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:ђ 2!
gradients/concat_1_grad/Shape_7ї
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/concat_1_grad/Shape_8ї
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/concat_1_grad/Shape_9ј
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gradients/concat_1_grad/Shape_10ј
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gradients/concat_1_grad/Shape_11ј
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gradients/concat_1_grad/Shape_12ј
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gradients/concat_1_grad/Shape_13ј
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gradients/concat_1_grad/Shape_14ј
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gradients/concat_1_grad/Shape_15а
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::2&
$gradients/concat_1_grad/ConcatOffsetї
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes
:@2
gradients/concat_1_grad/Sliceњ
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes
:@2!
gradients/concat_1_grad/Slice_1њ
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes
:@2!
gradients/concat_1_grad/Slice_2њ
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes
:@2!
gradients/concat_1_grad/Slice_3Њ
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:ђ 2!
gradients/concat_1_grad/Slice_4Њ
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:ђ 2!
gradients/concat_1_grad/Slice_5Њ
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
:ђ 2!
gradients/concat_1_grad/Slice_6Њ
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
:ђ 2!
gradients/concat_1_grad/Slice_7њ
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:@2!
gradients/concat_1_grad/Slice_8њ
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:@2!
gradients/concat_1_grad/Slice_9ќ
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:@2"
 gradients/concat_1_grad/Slice_10ќ
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:@2"
 gradients/concat_1_grad/Slice_11ќ
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
:@2"
 gradients/concat_1_grad/Slice_12ќ
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
:@2"
 gradients/concat_1_grad/Slice_13ќ
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
:@2"
 gradients/concat_1_grad/Slice_14ќ
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
:@2"
 gradients/concat_1_grad/Slice_15Ї
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@      2
gradients/Reshape_grad/Shape├
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes

:@2 
gradients/Reshape_grad/ReshapeЉ
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@      2 
gradients/Reshape_1_grad/Shape╦
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:@2"
 gradients/Reshape_1_grad/ReshapeЉ
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@      2 
gradients/Reshape_2_grad/Shape╦
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:@2"
 gradients/Reshape_2_grad/ReshapeЉ
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@      2 
gradients/Reshape_3_grad/Shape╦
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:@2"
 gradients/Reshape_3_grad/ReshapeЉ
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   2 
gradients/Reshape_4_grad/Shape╦
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:@@2"
 gradients/Reshape_4_grad/ReshapeЉ
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   2 
gradients/Reshape_5_grad/Shape╦
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:@@2"
 gradients/Reshape_5_grad/ReshapeЉ
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   2 
gradients/Reshape_6_grad/Shape╦
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:@@2"
 gradients/Reshape_6_grad/ReshapeЉ
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   2 
gradients/Reshape_7_grad/Shape╦
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:@@2"
 gradients/Reshape_7_grad/Reshapeі
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2 
gradients/Reshape_8_grad/ShapeК
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:@2"
 gradients/Reshape_8_grad/Reshapeі
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2 
gradients/Reshape_9_grad/ShapeК
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:@2"
 gradients/Reshape_9_grad/Reshapeї
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/Reshape_10_grad/Shape╦
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:@2#
!gradients/Reshape_10_grad/Reshapeї
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/Reshape_11_grad/Shape╦
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:@2#
!gradients/Reshape_11_grad/Reshapeї
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/Reshape_12_grad/Shape╦
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:@2#
!gradients/Reshape_12_grad/Reshapeї
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/Reshape_13_grad/Shape╦
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
:@2#
!gradients/Reshape_13_grad/Reshapeї
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/Reshape_14_grad/Shape╦
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
:@2#
!gradients/Reshape_14_grad/Reshapeї
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/Reshape_15_grad/Shape╦
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
:@2#
!gradients/Reshape_15_grad/Reshape╠
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:2.
,gradients/transpose_1_grad/InvertPermutationП
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@2&
$gradients/transpose_1_grad/transpose╠
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:2.
,gradients/transpose_2_grad/InvertPermutation▀
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@2&
$gradients/transpose_2_grad/transpose╠
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:2.
,gradients/transpose_3_grad/InvertPermutation▀
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@2&
$gradients/transpose_3_grad/transpose╠
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:2.
,gradients/transpose_4_grad/InvertPermutation▀
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@2&
$gradients/transpose_4_grad/transpose╠
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:2.
,gradients/transpose_5_grad/InvertPermutation▀
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@2&
$gradients/transpose_5_grad/transpose╠
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:2.
,gradients/transpose_6_grad/InvertPermutation▀
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@2&
$gradients/transpose_6_grad/transpose╠
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:2.
,gradients/transpose_7_grad/InvertPermutation▀
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@2&
$gradients/transpose_7_grad/transpose╠
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:2.
,gradients/transpose_8_grad/InvertPermutation▀
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@2&
$gradients/transpose_8_grad/transposeѕ
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:ђ2
gradients/split_2_grad/concat╬
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	ђ2
gradients/split_grad/concatо
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	@ђ2
gradients/split_1_grad/concatz
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_grad/Rank»
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_grad/modЁ
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ђ2
gradients/concat_grad/ShapeЅ
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:ђ2
gradients/concat_grad/Shape_1­
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::2$
"gradients/concat_grad/ConcatOffsetы
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:ђ2
gradients/concat_grad/Sliceэ
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:ђ2
gradients/concat_grad/Slice_1v
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*#
_output_shapes
:ђf2

Identityz

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*
_output_shapes
:	ђ@2

Identity_1|

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*
_output_shapes
:	ђ@2

Identity_2t

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	ђ2

Identity_3v

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	@ђ2

Identity_4r

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:ђ2

Identity_5"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*з
_input_shapesр
я:	ђ@:ђf@:	ђ@:	ђ@: :::fђ:ђ@:ђ@:ђє:fђ@:ђ@:ђ@:: ::::::::: : : : *=
api_implements+)lstm_567777ca-3aeb-4e05-a205-3dee308fbbc2*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_lstm_with_fallback_22464*
go_backwards( *

time_major( :% !

_output_shapes
:	ђ@:)%
#
_output_shapes
:ђf@:%!

_output_shapes
:	ђ@:%!

_output_shapes
:	ђ@:

_output_shapes
: : 

_output_shapes
::

_output_shapes
::)%
#
_output_shapes
:fђ:)%
#
_output_shapes
:ђ@:)	%
#
_output_shapes
:ђ@:"


_output_shapes

:ђє:)%
#
_output_shapes
:fђ@:)%
#
_output_shapes
:ђ@:)%
#
_output_shapes
:ђ@: 

_output_shapes
::

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
Ѓ"
љ
?__inference_lstm_layer_call_and_return_conditional_losses_24292

inputs 
read_readvariableop_resource"
read_1_readvariableop_resource"
read_2_readvariableop_resource

identity_3ѕбRead/ReadVariableOpбRead_1/ReadVariableOpбRead_2/ReadVariableOpc
ShapeConst*
_output_shapes
:*
dtype0*!
valueB"ђ   f      2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2Р
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :У2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros/packed/1Ѓ
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constm
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*
_output_shapes
:	ђ@2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :У2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros_1/packed/1Ѕ
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Constu
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*
_output_shapes
:	ђ@2	
zeros_1ѕ
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	ђ*
dtype02
Read/ReadVariableOpg
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	ђ2

Identityј
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes
:	@ђ*
dtype02
Read_1/ReadVariableOpm

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	@ђ2

Identity_1і
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:ђ*
dtype02
Read_2/ReadVariableOpi

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:ђ2

Identity_2ц
PartitionedCallPartitionedCallinputszeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *F
_output_shapes4
2:	ђ@:ђf@:	ђ@:	ђ@: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *(
f#R!
__inference_standard_lstm_240172
PartitionedCall«

Identity_3IdentityPartitionedCall:output:0^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*
T0*
_output_shapes
:	ђ@2

Identity_3"!

identity_3Identity_3:output:0*.
_input_shapes
:ђf:::2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:K G
#
_output_shapes
:ђf
 
_user_specified_nameinputs
Ы
│
#__inference_signature_wrapper_22027
input_1
input_2
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
identityѕбStatefulPartitionedCallЩ
StatefulPartitionedCallStatefulPartitionedCallinput_1input_2unknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin
	2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:	ђ
*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8ѓ *)
f$R"
 __inference__wrapped_model_191942
StatefulPartitionedCallє
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*
_output_shapes
:	ђ
2

Identity"
identityIdentity:output:0*E
_input_shapes4
2:ђf:ђf:::::22
StatefulPartitionedCallStatefulPartitionedCall:L H
#
_output_shapes
:ђf
!
_user_specified_name	input_1:LH
#
_output_shapes
:ђf
!
_user_specified_name	input_2
љV
Б
&__forward_gpu_lstm_with_fallback_20515

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
cudnnrnn
transpose_9_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisѕu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permO
transpose_0	Transposeinputstranspose/perm:output:0*
T02
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:         @2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dimЁ
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:         @2
ExpandDims_1P
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimЉ
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:@:@:@:@*
	num_split2
splitT
Const_1Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimА
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:@@:@@:@@:@@*
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:ђ*
dtype0*
valueBђ*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis|
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:ђ2
concatT
Const_2Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_2h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dimе
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:@:@:@:@:@:@:@:@*
	num_split2	
split_2e
Const_3Const*
_output_shapes
:*
dtype0*
valueB:
         2	
Const_3u
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm{
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:@2
transpose_1e
ReshapeReshapetranspose_1:y:0Const_3:output:0*
T0*
_output_shapes
:@2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:@2
transpose_2i
	Reshape_1Reshapetranspose_2:y:0Const_3:output:0*
T0*
_output_shapes
:@2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:@2
transpose_3i
	Reshape_2Reshapetranspose_3:y:0Const_3:output:0*
T0*
_output_shapes
:@2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm{
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:@2
transpose_4i
	Reshape_3Reshapetranspose_4:y:0Const_3:output:0*
T0*
_output_shapes
:@2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:@@2
transpose_5j
	Reshape_4Reshapetranspose_5:y:0Const_3:output:0*
T0*
_output_shapes	
:ђ 2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:@@2
transpose_6j
	Reshape_5Reshapetranspose_6:y:0Const_3:output:0*
T0*
_output_shapes	
:ђ 2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm}
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:@@2
transpose_7j
	Reshape_6Reshapetranspose_7:y:0Const_3:output:0*
T0*
_output_shapes	
:ђ 2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm}
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:@@2
transpose_8j
	Reshape_7Reshapetranspose_8:y:0Const_3:output:0*
T0*
_output_shapes	
:ђ 2
	Reshape_7j
	Reshape_8Reshapesplit_2:output:0Const_3:output:0*
T0*
_output_shapes
:@2
	Reshape_8j
	Reshape_9Reshapesplit_2:output:1Const_3:output:0*
T0*
_output_shapes
:@2
	Reshape_9l

Reshape_10Reshapesplit_2:output:2Const_3:output:0*
T0*
_output_shapes
:@2

Reshape_10l

Reshape_11Reshapesplit_2:output:3Const_3:output:0*
T0*
_output_shapes
:@2

Reshape_11l

Reshape_12Reshapesplit_2:output:4Const_3:output:0*
T0*
_output_shapes
:@2

Reshape_12l

Reshape_13Reshapesplit_2:output:5Const_3:output:0*
T0*
_output_shapes
:@2

Reshape_13l

Reshape_14Reshapesplit_2:output:6Const_3:output:0*
T0*
_output_shapes
:@2

Reshape_14l

Reshape_15Reshapesplit_2:output:7Const_3:output:0*
T0*
_output_shapes
:@2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axisљ

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T02

concat_1с
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*f
_output_shapesT
R:                  @:         @:         @:2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2Ш
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         @*
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/permћ
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*4
_output_shapes"
 :                  @2
transpose_9{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:         @*
squeeze_dims
 2	
Squeeze
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:         @*
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimej
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:         @2

Identityt

Identity_1Identitytranspose_9:y:0*
T0*4
_output_shapes"
 :                  @2

Identity_1h

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:         @2

Identity_2j

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:         @2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0*v
_input_shapese
c:                  :         @:         @:	ђ:	@ђ:ђ*=
api_implements+)lstm_c0c21977-f7f4-41d5-acc6-fdf72bb98b2b*
api_preferred_deviceGPU*U
backward_function_name;9__inference___backward_gpu_lstm_with_fallback_20340_20516*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs:OK
'
_output_shapes
:         @
 
_user_specified_nameinit_h:OK
'
_output_shapes
:         @
 
_user_specified_nameinit_c:GC

_output_shapes
:	ђ
 
_user_specified_namekernel:QM

_output_shapes
:	@ђ
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:ђ

_user_specified_namebias
ц?
┐
__inference_standard_lstm_22192

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permr
	transpose	Transposeinputstranspose/perm:output:0*
T0*#
_output_shapes
:fђ2
	transposec
ShapeConst*
_output_shapes
:*
dtype0*!
valueB"f   ђ      2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2Р
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceЁ
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         2
TensorArrayV2/element_shape░
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2┐
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ђ      27
5TensorArrayUnstack/TensorListFromTensor/element_shapeЭ
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2З
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	ђ*
shrink_axis_mask2
strided_slice_1g
MatMulMatMulstrided_slice_1:output:0kernel*
T0* 
_output_shapes
:
ђђ2
MatMulc
MatMul_1MatMulinit_hrecurrent_kernel*
T0* 
_output_shapes
:
ђђ2

MatMul_1d
addAddV2MatMul:product:0MatMul_1:product:0*
T0* 
_output_shapes
:
ђђ2
addW
BiasAddBiasAddadd:z:0bias*
T0* 
_output_shapes
:
ђђ2	
BiasAddP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimЪ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*@
_output_shapes.
,:	ђ@:	ђ@:	ђ@:	ђ@*
	num_split2
splitW
SigmoidSigmoidsplit:output:0*
T0*
_output_shapes
:	ђ@2	
Sigmoid[
	Sigmoid_1Sigmoidsplit:output:1*
T0*
_output_shapes
:	ђ@2
	Sigmoid_1R
mulMulSigmoid_1:y:0init_c*
T0*
_output_shapes
:	ђ@2
mulN
TanhTanhsplit:output:2*
T0*
_output_shapes
:	ђ@2
TanhV
mul_1MulSigmoid:y:0Tanh:y:0*
T0*
_output_shapes
:	ђ@2
mul_1U
add_1AddV2mul:z:0	mul_1:z:0*
T0*
_output_shapes
:	ђ@2
add_1[
	Sigmoid_2Sigmoidsplit:output:3*
T0*
_output_shapes
:	ђ@2
	Sigmoid_2M
Tanh_1Tanh	add_1:z:0*
T0*
_output_shapes
:	ђ@2
Tanh_1Z
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*
_output_shapes
:	ђ@2
mul_2Ј
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ђ   @   2
TensorArrayV2_1/element_shapeХ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterђ
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*S
_output_shapesA
?: : : : :	ђ@:	ђ@: : :	ђ:	@ђ:ђ* 
_read_only_resource_inputs
 *
bodyR
while_body_22106*
condR
while_cond_22105*R
output_shapesA
?: : : : :	ђ@:	ђ@: : :	ђ:	@ђ:ђ*
parallel_iterations 2
whileх
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ђ   @   22
0TensorArrayV2Stack/TensorListStack/element_shapeЯ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*#
_output_shapes
:fђ@*
element_dtype02$
"TensorArrayV2Stack/TensorListStackЂ
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2њ
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	ђ@*
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЮ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*#
_output_shapes
:ђf@2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ђ?2	
runtimed
IdentityIdentitystrided_slice_2:output:0*
T0*
_output_shapes
:	ђ@2

Identityc

Identity_1Identitytranspose_1:y:0*
T0*#
_output_shapes
:ђf@2

Identity_1^

Identity_2Identitywhile:output:4*
T0*
_output_shapes
:	ђ@2

Identity_2^

Identity_3Identitywhile:output:5*
T0*
_output_shapes
:	ђ@2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*U
_input_shapesD
B:ђf:	ђ@:	ђ@:	ђ:	@ђ:ђ*=
api_implements+)lstm_567777ca-3aeb-4e05-a205-3dee308fbbc2*
api_preferred_deviceCPU*
go_backwards( *

time_major( :K G
#
_output_shapes
:ђf
 
_user_specified_nameinputs:GC

_output_shapes
:	ђ@
 
_user_specified_nameinit_h:GC

_output_shapes
:	ђ@
 
_user_specified_nameinit_c:GC

_output_shapes
:	ђ
 
_user_specified_namekernel:QM

_output_shapes
:	@ђ
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:ђ

_user_specified_namebias
ѓ	
╝
while_cond_23468
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice3
/while_while_cond_23468___redundant_placeholder03
/while_while_cond_23468___redundant_placeholder13
/while_while_cond_23468___redundant_placeholder23
/while_while_cond_23468___redundant_placeholder3
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*S
_input_shapesB
@: : : : :         @:         @: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         @:-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
сA
┐
__inference_standard_lstm_20242

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permЃ
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  2
	transposeK
ShapeShapetranspose:y:0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2Р
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceЁ
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         2
TensorArrayV2/element_shape░
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2┐
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       27
5TensorArrayUnstack/TensorListFromTensor/element_shapeЭ
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2Ч
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_mask2
strided_slice_1o
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:         ђ2
MatMulk
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:         ђ2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         ђ2
add_
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:         ђ2	
BiasAddP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim┐
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         @:         @:         @:         @*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         @2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         @2
	Sigmoid_1Z
mulMulSigmoid_1:y:0init_c*
T0*'
_output_shapes
:         @2
mulV
TanhTanhsplit:output:2*
T0*'
_output_shapes
:         @2
Tanh^
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:         @2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         @2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         @2
	Sigmoid_2U
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:         @2
Tanh_1b
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:         @2
mul_2Ј
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   2
TensorArrayV2_1/element_shapeХ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterа
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*c
_output_shapesQ
O: : : : :         @:         @: : :	ђ:	@ђ:ђ* 
_read_only_resource_inputs
 *
bodyR
while_body_20156*
condR
while_cond_20155*b
output_shapesQ
O: : : : :         @:         @: : :	ђ:	@ђ:ђ*
parallel_iterations 2
whileх
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   22
0TensorArrayV2Stack/TensorListStack/element_shapeы
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  @*
element_dtype02$
"TensorArrayV2Stack/TensorListStackЂ
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2џ
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         @*
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm«
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  @2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ђ?2	
runtimel
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:         @2

Identityt

Identity_1Identitytranspose_1:y:0*
T0*4
_output_shapes"
 :                  @2

Identity_1f

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:         @2

Identity_2f

Identity_3Identitywhile:output:5*
T0*'
_output_shapes
:         @2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*v
_input_shapese
c:                  :         @:         @:	ђ:	@ђ:ђ*=
api_implements+)lstm_c0c21977-f7f4-41d5-acc6-fdf72bb98b2b*
api_preferred_deviceCPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs:OK
'
_output_shapes
:         @
 
_user_specified_nameinit_h:OK
'
_output_shapes
:         @
 
_user_specified_nameinit_c:GC

_output_shapes
:	ђ
 
_user_specified_namekernel:QM

_output_shapes
:	@ђ
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:ђ

_user_specified_namebias
р+
╬
while_body_24370
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_bias├
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ђ      29
7while/TensorArrayV2Read/TensorListGetItem/element_shape╦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes
:	ђ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemџ
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0* 
_output_shapes
:
ђђ2
while/MatMulЇ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0* 
_output_shapes
:
ђђ2
while/MatMul_1|
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0* 
_output_shapes
:
ђђ2
	while/addy
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0* 
_output_shapes
:
ђђ2
while/BiasAdd\
while/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/Constp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dimи
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*@
_output_shapes.
,:	ђ@:	ђ@:	ђ@:	ђ@*
	num_split2
while/spliti
while/SigmoidSigmoidwhile/split:output:0*
T0*
_output_shapes
:	ђ@2
while/Sigmoidm
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*
_output_shapes
:	ђ@2
while/Sigmoid_1q
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*
_output_shapes
:	ђ@2
	while/mul`

while/TanhTanhwhile/split:output:2*
T0*
_output_shapes
:	ђ@2

while/Tanhn
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*
_output_shapes
:	ђ@2
while/mul_1m
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*
_output_shapes
:	ђ@2
while/add_1m
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*
_output_shapes
:	ђ@2
while/Sigmoid_2_
while/Tanh_1Tanhwhile/add_1:z:0*
T0*
_output_shapes
:	ђ@2
while/Tanh_1r
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*
_output_shapes
:	ђ@2
while/mul_2М
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem`
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_2/yo
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: 2
while/add_2`
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_3/yv
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: 2
while/add_3^
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: 2
while/Identityq
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: 2
while/Identity_1b
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: 2
while/Identity_2Ї
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: 2
while/Identity_3k
while/Identity_4Identitywhile/mul_2:z:0*
T0*
_output_shapes
:	ђ@2
while/Identity_4k
while/Identity_5Identitywhile/add_1:z:0*
T0*
_output_shapes
:	ђ@2
while/Identity_5"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*R
_input_shapesA
?: : : : :	ђ@:	ђ@: : :	ђ:	@ђ:ђ: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	ђ@:%!

_output_shapes
:	ђ@:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	ђ:%	!

_output_shapes
:	@ђ:!


_output_shapes	
:ђ
сA
┐
__inference_standard_lstm_23555

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permЃ
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  2
	transposeK
ShapeShapetranspose:y:0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2Р
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceЁ
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         2
TensorArrayV2/element_shape░
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2┐
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       27
5TensorArrayUnstack/TensorListFromTensor/element_shapeЭ
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2Ч
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_mask2
strided_slice_1o
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:         ђ2
MatMulk
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:         ђ2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         ђ2
add_
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:         ђ2	
BiasAddP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim┐
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         @:         @:         @:         @*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         @2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         @2
	Sigmoid_1Z
mulMulSigmoid_1:y:0init_c*
T0*'
_output_shapes
:         @2
mulV
TanhTanhsplit:output:2*
T0*'
_output_shapes
:         @2
Tanh^
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:         @2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         @2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         @2
	Sigmoid_2U
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:         @2
Tanh_1b
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:         @2
mul_2Ј
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   2
TensorArrayV2_1/element_shapeХ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterа
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*c
_output_shapesQ
O: : : : :         @:         @: : :	ђ:	@ђ:ђ* 
_read_only_resource_inputs
 *
bodyR
while_body_23469*
condR
while_cond_23468*b
output_shapesQ
O: : : : :         @:         @: : :	ђ:	@ђ:ђ*
parallel_iterations 2
whileх
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   22
0TensorArrayV2Stack/TensorListStack/element_shapeы
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  @*
element_dtype02$
"TensorArrayV2Stack/TensorListStackЂ
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2џ
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         @*
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm«
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  @2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ђ?2	
runtimel
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:         @2

Identityt

Identity_1Identitytranspose_1:y:0*
T0*4
_output_shapes"
 :                  @2

Identity_1f

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:         @2

Identity_2f

Identity_3Identitywhile:output:5*
T0*'
_output_shapes
:         @2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*v
_input_shapese
c:                  :         @:         @:	ђ:	@ђ:ђ*=
api_implements+)lstm_6552cd95-371a-4b6b-8563-0d87bf465dff*
api_preferred_deviceCPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs:OK
'
_output_shapes
:         @
 
_user_specified_nameinit_h:OK
'
_output_shapes
:         @
 
_user_specified_nameinit_c:GC

_output_shapes
:	ђ
 
_user_specified_namekernel:QM

_output_shapes
:	@ђ
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:ђ

_user_specified_namebias
ЩС
ы
9__inference___backward_gpu_lstm_with_fallback_20791_20967
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5ѕu
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:         @2
gradients/grad_ys_0ё
gradients/grad_ys_1Identityplaceholder_1*
T0*4
_output_shapes"
 :                  @2
gradients/grad_ys_1w
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:         @2
gradients/grad_ys_2w
gradients/grad_ys_3Identityplaceholder_3*
T0*'
_output_shapes
:         @2
gradients/grad_ys_3f
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: 2
gradients/grad_ys_4Б
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:2$
"gradients/strided_slice_grad/Shapeй
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
         25
3gradients/strided_slice_grad/StridedSliceGrad/begin░
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 23
1gradients/strided_slice_grad/StridedSliceGrad/endИ
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:27
5gradients/strided_slice_grad/StridedSliceGrad/strides█
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*4
_output_shapes"
 :                  @*
shrink_axis_mask2/
-gradients/strided_slice_grad/StridedSliceGrad╠
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:2.
,gradients/transpose_9_grad/InvertPermutationУ
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :                  @2&
$gradients/transpose_9_grad/transposeЉ
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:2
gradients/Squeeze_grad/Shapeк
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:         @2 
gradients/Squeeze_grad/ReshapeЌ
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:2 
gradients/Squeeze_1_grad/Shape╠
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*+
_output_shapes
:         @2"
 gradients/Squeeze_1_grad/Reshapeћ
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*4
_output_shapes"
 :                  @2
gradients/AddN{
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:2
gradients/zeros_likeХ
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*j
_output_shapesX
V:                  :         @:         @:ђє2*
(gradients/CudnnRNN_grad/CudnnRNNBackprop─
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:2,
*gradients/transpose_grad/InvertPermutation 
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :                  2$
"gradients/transpose_grad/transposeў
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:2!
gradients/ExpandDims_grad/ShapeЖ
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:         @2#
!gradients/ExpandDims_grad/Reshapeъ
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:2#
!gradients/ExpandDims_1_grad/Shape­
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:         @2%
#gradients/ExpandDims_1_grad/Reshape~
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_1_grad/Rank╣
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_1_grad/modѕ
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2
gradients/concat_1_grad/Shapeї
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/concat_1_grad/Shape_1ї
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/concat_1_grad/Shape_2ї
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/concat_1_grad/Shape_3Ї
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:ђ 2!
gradients/concat_1_grad/Shape_4Ї
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:ђ 2!
gradients/concat_1_grad/Shape_5Ї
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:ђ 2!
gradients/concat_1_grad/Shape_6Ї
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:ђ 2!
gradients/concat_1_grad/Shape_7ї
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/concat_1_grad/Shape_8ї
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/concat_1_grad/Shape_9ј
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gradients/concat_1_grad/Shape_10ј
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gradients/concat_1_grad/Shape_11ј
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gradients/concat_1_grad/Shape_12ј
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gradients/concat_1_grad/Shape_13ј
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gradients/concat_1_grad/Shape_14ј
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gradients/concat_1_grad/Shape_15а
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::2&
$gradients/concat_1_grad/ConcatOffsetї
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes
:@2
gradients/concat_1_grad/Sliceњ
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes
:@2!
gradients/concat_1_grad/Slice_1њ
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes
:@2!
gradients/concat_1_grad/Slice_2њ
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes
:@2!
gradients/concat_1_grad/Slice_3Њ
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:ђ 2!
gradients/concat_1_grad/Slice_4Њ
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:ђ 2!
gradients/concat_1_grad/Slice_5Њ
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
:ђ 2!
gradients/concat_1_grad/Slice_6Њ
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
:ђ 2!
gradients/concat_1_grad/Slice_7њ
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:@2!
gradients/concat_1_grad/Slice_8њ
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:@2!
gradients/concat_1_grad/Slice_9ќ
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:@2"
 gradients/concat_1_grad/Slice_10ќ
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:@2"
 gradients/concat_1_grad/Slice_11ќ
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
:@2"
 gradients/concat_1_grad/Slice_12ќ
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
:@2"
 gradients/concat_1_grad/Slice_13ќ
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
:@2"
 gradients/concat_1_grad/Slice_14ќ
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
:@2"
 gradients/concat_1_grad/Slice_15Ї
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@      2
gradients/Reshape_grad/Shape├
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes

:@2 
gradients/Reshape_grad/ReshapeЉ
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@      2 
gradients/Reshape_1_grad/Shape╦
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:@2"
 gradients/Reshape_1_grad/ReshapeЉ
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@      2 
gradients/Reshape_2_grad/Shape╦
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:@2"
 gradients/Reshape_2_grad/ReshapeЉ
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@      2 
gradients/Reshape_3_grad/Shape╦
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:@2"
 gradients/Reshape_3_grad/ReshapeЉ
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   2 
gradients/Reshape_4_grad/Shape╦
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:@@2"
 gradients/Reshape_4_grad/ReshapeЉ
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   2 
gradients/Reshape_5_grad/Shape╦
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:@@2"
 gradients/Reshape_5_grad/ReshapeЉ
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   2 
gradients/Reshape_6_grad/Shape╦
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:@@2"
 gradients/Reshape_6_grad/ReshapeЉ
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   2 
gradients/Reshape_7_grad/Shape╦
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:@@2"
 gradients/Reshape_7_grad/Reshapeі
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2 
gradients/Reshape_8_grad/ShapeК
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:@2"
 gradients/Reshape_8_grad/Reshapeі
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2 
gradients/Reshape_9_grad/ShapeК
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:@2"
 gradients/Reshape_9_grad/Reshapeї
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/Reshape_10_grad/Shape╦
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:@2#
!gradients/Reshape_10_grad/Reshapeї
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/Reshape_11_grad/Shape╦
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:@2#
!gradients/Reshape_11_grad/Reshapeї
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/Reshape_12_grad/Shape╦
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:@2#
!gradients/Reshape_12_grad/Reshapeї
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/Reshape_13_grad/Shape╦
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
:@2#
!gradients/Reshape_13_grad/Reshapeї
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/Reshape_14_grad/Shape╦
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
:@2#
!gradients/Reshape_14_grad/Reshapeї
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/Reshape_15_grad/Shape╦
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
:@2#
!gradients/Reshape_15_grad/Reshape╠
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:2.
,gradients/transpose_1_grad/InvertPermutationП
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@2&
$gradients/transpose_1_grad/transpose╠
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:2.
,gradients/transpose_2_grad/InvertPermutation▀
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@2&
$gradients/transpose_2_grad/transpose╠
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:2.
,gradients/transpose_3_grad/InvertPermutation▀
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@2&
$gradients/transpose_3_grad/transpose╠
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:2.
,gradients/transpose_4_grad/InvertPermutation▀
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@2&
$gradients/transpose_4_grad/transpose╠
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:2.
,gradients/transpose_5_grad/InvertPermutation▀
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@2&
$gradients/transpose_5_grad/transpose╠
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:2.
,gradients/transpose_6_grad/InvertPermutation▀
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@2&
$gradients/transpose_6_grad/transpose╠
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:2.
,gradients/transpose_7_grad/InvertPermutation▀
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@2&
$gradients/transpose_7_grad/transpose╠
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:2.
,gradients/transpose_8_grad/InvertPermutation▀
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@2&
$gradients/transpose_8_grad/transposeѕ
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:ђ2
gradients/split_2_grad/concat╬
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	ђ2
gradients/split_grad/concatо
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	@ђ2
gradients/split_1_grad/concatz
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_grad/Rank»
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_grad/modЁ
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ђ2
gradients/concat_grad/ShapeЅ
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:ђ2
gradients/concat_grad/Shape_1­
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::2$
"gradients/concat_grad/ConcatOffsetы
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:ђ2
gradients/concat_grad/Sliceэ
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:ђ2
gradients/concat_grad/Slice_1Є
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*4
_output_shapes"
 :                  2

Identityѓ

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:         @2

Identity_1ё

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*'
_output_shapes
:         @2

Identity_2t

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	ђ2

Identity_3v

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	@ђ2

Identity_4r

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:ђ2

Identity_5"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*ё
_input_shapesЫ
№:         @:                  @:         @:         @: :                  @::         @:         @::                  :         @:         @:ђє::         @:         @: ::::::::: : : : *=
api_implements+)lstm_d14c1f77-7846-415f-a0e1-e7ae7d0beb0c*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_lstm_with_fallback_20966*
go_backwards( *

time_major( :- )
'
_output_shapes
:         @::6
4
_output_shapes"
 :                  @:-)
'
_output_shapes
:         @:-)
'
_output_shapes
:         @:

_output_shapes
: ::6
4
_output_shapes"
 :                  @: 

_output_shapes
::1-
+
_output_shapes
:         @:1-
+
_output_shapes
:         @:	

_output_shapes
:::
6
4
_output_shapes"
 :                  :1-
+
_output_shapes
:         @:1-
+
_output_shapes
:         @:"

_output_shapes

:ђє: 

_output_shapes
::-)
'
_output_shapes
:         @:-)
'
_output_shapes
:         @:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
йJ
╦
(__inference_gpu_lstm_with_fallback_20339

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4ѕu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permЃ
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  2
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim}

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:         @2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dimЃ
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*+
_output_shapes
:         @2
ExpandDims_1P
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimЉ
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:@:@:@:@*
	num_split2
splitT
Const_1Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimА
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:@@:@@:@@:@@*
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:ђ*
dtype0*
valueBђ*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis|
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:ђ2
concatT
Const_2Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_2h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dimе
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:@:@:@:@:@:@:@:@*
	num_split2	
split_2e
Const_3Const*
_output_shapes
:*
dtype0*
valueB:
         2	
Const_3u
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm{
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:@2
transpose_1e
ReshapeReshapetranspose_1:y:0Const_3:output:0*
T0*
_output_shapes
:@2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:@2
transpose_2i
	Reshape_1Reshapetranspose_2:y:0Const_3:output:0*
T0*
_output_shapes
:@2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:@2
transpose_3i
	Reshape_2Reshapetranspose_3:y:0Const_3:output:0*
T0*
_output_shapes
:@2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm{
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:@2
transpose_4i
	Reshape_3Reshapetranspose_4:y:0Const_3:output:0*
T0*
_output_shapes
:@2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:@@2
transpose_5j
	Reshape_4Reshapetranspose_5:y:0Const_3:output:0*
T0*
_output_shapes	
:ђ 2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:@@2
transpose_6j
	Reshape_5Reshapetranspose_6:y:0Const_3:output:0*
T0*
_output_shapes	
:ђ 2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm}
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:@@2
transpose_7j
	Reshape_6Reshapetranspose_7:y:0Const_3:output:0*
T0*
_output_shapes	
:ђ 2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm}
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:@@2
transpose_8j
	Reshape_7Reshapetranspose_8:y:0Const_3:output:0*
T0*
_output_shapes	
:ђ 2
	Reshape_7j
	Reshape_8Reshapesplit_2:output:0Const_3:output:0*
T0*
_output_shapes
:@2
	Reshape_8j
	Reshape_9Reshapesplit_2:output:1Const_3:output:0*
T0*
_output_shapes
:@2
	Reshape_9l

Reshape_10Reshapesplit_2:output:2Const_3:output:0*
T0*
_output_shapes
:@2

Reshape_10l

Reshape_11Reshapesplit_2:output:3Const_3:output:0*
T0*
_output_shapes
:@2

Reshape_11l

Reshape_12Reshapesplit_2:output:4Const_3:output:0*
T0*
_output_shapes
:@2

Reshape_12l

Reshape_13Reshapesplit_2:output:5Const_3:output:0*
T0*
_output_shapes
:@2

Reshape_13l

Reshape_14Reshapesplit_2:output:6Const_3:output:0*
T0*
_output_shapes
:@2

Reshape_14l

Reshape_15Reshapesplit_2:output:7Const_3:output:0*
T0*
_output_shapes
:@2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axisг
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:ђє2

concat_1▀
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*f
_output_shapesT
R:                  @:         @:         @:2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2Ш
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         @*
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/permћ
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*4
_output_shapes"
 :                  @2
transpose_9{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:         @*
squeeze_dims
 2	
Squeeze
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:         @*
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimej
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:         @2

Identityt

Identity_1Identitytranspose_9:y:0*
T0*4
_output_shapes"
 :                  @2

Identity_1h

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:         @2

Identity_2j

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:         @2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*v
_input_shapese
c:                  :         @:         @:	ђ:	@ђ:ђ*=
api_implements+)lstm_c0c21977-f7f4-41d5-acc6-fdf72bb98b2b*
api_preferred_deviceGPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs:OK
'
_output_shapes
:         @
 
_user_specified_nameinit_h:OK
'
_output_shapes
:         @
 
_user_specified_nameinit_c:GC

_output_shapes
:	ђ
 
_user_specified_namekernel:QM

_output_shapes
:	@ђ
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:ђ

_user_specified_namebias
¤"
њ
?__inference_lstm_layer_call_and_return_conditional_losses_23391
inputs_0 
read_readvariableop_resource"
read_1_readvariableop_resource"
read_2_readvariableop_resource

identity_3ѕбRead/ReadVariableOpбRead_1/ReadVariableOpбRead_2/ReadVariableOpF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2Р
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :У2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros/packed/1Ѓ
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         @2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :У2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros_1/packed/1Ѕ
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         @2	
zeros_1ѕ
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	ђ*
dtype02
Read/ReadVariableOpg
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	ђ2

Identityј
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes
:	@ђ*
dtype02
Read_1/ReadVariableOpm

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	@ђ2

Identity_1і
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:ђ*
dtype02
Read_2/ReadVariableOpi

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:ђ2

Identity_2¤
PartitionedCallPartitionedCallinputs_0zeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *o
_output_shapes]
[:         @:                  @:         @:         @: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *(
f#R!
__inference_standard_lstm_231152
PartitionedCallХ

Identity_3IdentityPartitionedCall:output:0^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*
T0*'
_output_shapes
:         @2

Identity_3"!

identity_3Identity_3:output:0*?
_input_shapes.
,:                  :::2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs/0
ЩС
ы
9__inference___backward_gpu_lstm_with_fallback_23213_23389
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5ѕu
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:         @2
gradients/grad_ys_0ё
gradients/grad_ys_1Identityplaceholder_1*
T0*4
_output_shapes"
 :                  @2
gradients/grad_ys_1w
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:         @2
gradients/grad_ys_2w
gradients/grad_ys_3Identityplaceholder_3*
T0*'
_output_shapes
:         @2
gradients/grad_ys_3f
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: 2
gradients/grad_ys_4Б
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:2$
"gradients/strided_slice_grad/Shapeй
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
         25
3gradients/strided_slice_grad/StridedSliceGrad/begin░
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 23
1gradients/strided_slice_grad/StridedSliceGrad/endИ
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:27
5gradients/strided_slice_grad/StridedSliceGrad/strides█
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*4
_output_shapes"
 :                  @*
shrink_axis_mask2/
-gradients/strided_slice_grad/StridedSliceGrad╠
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:2.
,gradients/transpose_9_grad/InvertPermutationУ
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :                  @2&
$gradients/transpose_9_grad/transposeЉ
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:2
gradients/Squeeze_grad/Shapeк
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:         @2 
gradients/Squeeze_grad/ReshapeЌ
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:2 
gradients/Squeeze_1_grad/Shape╠
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*+
_output_shapes
:         @2"
 gradients/Squeeze_1_grad/Reshapeћ
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*4
_output_shapes"
 :                  @2
gradients/AddN{
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:2
gradients/zeros_likeХ
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*j
_output_shapesX
V:                  :         @:         @:ђє2*
(gradients/CudnnRNN_grad/CudnnRNNBackprop─
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:2,
*gradients/transpose_grad/InvertPermutation 
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :                  2$
"gradients/transpose_grad/transposeў
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:2!
gradients/ExpandDims_grad/ShapeЖ
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:         @2#
!gradients/ExpandDims_grad/Reshapeъ
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:2#
!gradients/ExpandDims_1_grad/Shape­
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:         @2%
#gradients/ExpandDims_1_grad/Reshape~
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_1_grad/Rank╣
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_1_grad/modѕ
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2
gradients/concat_1_grad/Shapeї
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/concat_1_grad/Shape_1ї
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/concat_1_grad/Shape_2ї
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/concat_1_grad/Shape_3Ї
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:ђ 2!
gradients/concat_1_grad/Shape_4Ї
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:ђ 2!
gradients/concat_1_grad/Shape_5Ї
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:ђ 2!
gradients/concat_1_grad/Shape_6Ї
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:ђ 2!
gradients/concat_1_grad/Shape_7ї
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/concat_1_grad/Shape_8ї
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/concat_1_grad/Shape_9ј
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gradients/concat_1_grad/Shape_10ј
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gradients/concat_1_grad/Shape_11ј
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gradients/concat_1_grad/Shape_12ј
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gradients/concat_1_grad/Shape_13ј
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gradients/concat_1_grad/Shape_14ј
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gradients/concat_1_grad/Shape_15а
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::2&
$gradients/concat_1_grad/ConcatOffsetї
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes
:@2
gradients/concat_1_grad/Sliceњ
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes
:@2!
gradients/concat_1_grad/Slice_1њ
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes
:@2!
gradients/concat_1_grad/Slice_2њ
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes
:@2!
gradients/concat_1_grad/Slice_3Њ
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:ђ 2!
gradients/concat_1_grad/Slice_4Њ
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:ђ 2!
gradients/concat_1_grad/Slice_5Њ
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
:ђ 2!
gradients/concat_1_grad/Slice_6Њ
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
:ђ 2!
gradients/concat_1_grad/Slice_7њ
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:@2!
gradients/concat_1_grad/Slice_8њ
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:@2!
gradients/concat_1_grad/Slice_9ќ
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:@2"
 gradients/concat_1_grad/Slice_10ќ
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:@2"
 gradients/concat_1_grad/Slice_11ќ
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
:@2"
 gradients/concat_1_grad/Slice_12ќ
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
:@2"
 gradients/concat_1_grad/Slice_13ќ
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
:@2"
 gradients/concat_1_grad/Slice_14ќ
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
:@2"
 gradients/concat_1_grad/Slice_15Ї
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@      2
gradients/Reshape_grad/Shape├
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes

:@2 
gradients/Reshape_grad/ReshapeЉ
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@      2 
gradients/Reshape_1_grad/Shape╦
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:@2"
 gradients/Reshape_1_grad/ReshapeЉ
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@      2 
gradients/Reshape_2_grad/Shape╦
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:@2"
 gradients/Reshape_2_grad/ReshapeЉ
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@      2 
gradients/Reshape_3_grad/Shape╦
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:@2"
 gradients/Reshape_3_grad/ReshapeЉ
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   2 
gradients/Reshape_4_grad/Shape╦
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:@@2"
 gradients/Reshape_4_grad/ReshapeЉ
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   2 
gradients/Reshape_5_grad/Shape╦
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:@@2"
 gradients/Reshape_5_grad/ReshapeЉ
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   2 
gradients/Reshape_6_grad/Shape╦
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:@@2"
 gradients/Reshape_6_grad/ReshapeЉ
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   2 
gradients/Reshape_7_grad/Shape╦
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:@@2"
 gradients/Reshape_7_grad/Reshapeі
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2 
gradients/Reshape_8_grad/ShapeК
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:@2"
 gradients/Reshape_8_grad/Reshapeі
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2 
gradients/Reshape_9_grad/ShapeК
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:@2"
 gradients/Reshape_9_grad/Reshapeї
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/Reshape_10_grad/Shape╦
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:@2#
!gradients/Reshape_10_grad/Reshapeї
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/Reshape_11_grad/Shape╦
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:@2#
!gradients/Reshape_11_grad/Reshapeї
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/Reshape_12_grad/Shape╦
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:@2#
!gradients/Reshape_12_grad/Reshapeї
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/Reshape_13_grad/Shape╦
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
:@2#
!gradients/Reshape_13_grad/Reshapeї
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/Reshape_14_grad/Shape╦
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
:@2#
!gradients/Reshape_14_grad/Reshapeї
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/Reshape_15_grad/Shape╦
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
:@2#
!gradients/Reshape_15_grad/Reshape╠
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:2.
,gradients/transpose_1_grad/InvertPermutationП
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@2&
$gradients/transpose_1_grad/transpose╠
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:2.
,gradients/transpose_2_grad/InvertPermutation▀
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@2&
$gradients/transpose_2_grad/transpose╠
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:2.
,gradients/transpose_3_grad/InvertPermutation▀
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@2&
$gradients/transpose_3_grad/transpose╠
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:2.
,gradients/transpose_4_grad/InvertPermutation▀
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@2&
$gradients/transpose_4_grad/transpose╠
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:2.
,gradients/transpose_5_grad/InvertPermutation▀
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@2&
$gradients/transpose_5_grad/transpose╠
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:2.
,gradients/transpose_6_grad/InvertPermutation▀
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@2&
$gradients/transpose_6_grad/transpose╠
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:2.
,gradients/transpose_7_grad/InvertPermutation▀
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@2&
$gradients/transpose_7_grad/transpose╠
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:2.
,gradients/transpose_8_grad/InvertPermutation▀
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@2&
$gradients/transpose_8_grad/transposeѕ
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:ђ2
gradients/split_2_grad/concat╬
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	ђ2
gradients/split_grad/concatо
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	@ђ2
gradients/split_1_grad/concatz
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_grad/Rank»
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_grad/modЁ
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ђ2
gradients/concat_grad/ShapeЅ
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:ђ2
gradients/concat_grad/Shape_1­
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::2$
"gradients/concat_grad/ConcatOffsetы
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:ђ2
gradients/concat_grad/Sliceэ
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:ђ2
gradients/concat_grad/Slice_1Є
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*4
_output_shapes"
 :                  2

Identityѓ

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:         @2

Identity_1ё

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*'
_output_shapes
:         @2

Identity_2t

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	ђ2

Identity_3v

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	@ђ2

Identity_4r

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:ђ2

Identity_5"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*ё
_input_shapesЫ
№:         @:                  @:         @:         @: :                  @::         @:         @::                  :         @:         @:ђє::         @:         @: ::::::::: : : : *=
api_implements+)lstm_de577cae-309e-4566-b5b0-e95948335ab9*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_lstm_with_fallback_23388*
go_backwards( *

time_major( :- )
'
_output_shapes
:         @::6
4
_output_shapes"
 :                  @:-)
'
_output_shapes
:         @:-)
'
_output_shapes
:         @:

_output_shapes
: ::6
4
_output_shapes"
 :                  @: 

_output_shapes
::1-
+
_output_shapes
:         @:1-
+
_output_shapes
:         @:	

_output_shapes
:::
6
4
_output_shapes"
 :                  :1-
+
_output_shapes
:         @:1-
+
_output_shapes
:         @:"

_output_shapes

:ђє: 

_output_shapes
::-)
'
_output_shapes
:         @:-)
'
_output_shapes
:         @:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
ў
Х
$__inference_lstm_layer_call_fn_22951
inputs_0
inputs_1
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
identityѕбStatefulPartitionedCallЏ
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin
	2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:	ђ
*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8ѓ *H
fCRA
?__inference_lstm_layer_call_and_return_conditional_losses_219882
StatefulPartitionedCallє
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*
_output_shapes
:	ђ
2

Identity"
identityIdentity:output:0*E
_input_shapes4
2:ђf:ђf:::::22
StatefulPartitionedCallStatefulPartitionedCall:M I
#
_output_shapes
:ђf
"
_user_specified_name
inputs/0:MI
#
_output_shapes
:ђf
"
_user_specified_name
inputs/1
њ
┤
$__inference_lstm_layer_call_fn_21968
input_1
input_2
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
identityѕбStatefulPartitionedCallЎ
StatefulPartitionedCallStatefulPartitionedCallinput_1input_2unknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin
	2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:	ђ
*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8ѓ *H
fCRA
?__inference_lstm_layer_call_and_return_conditional_losses_219552
StatefulPartitionedCallє
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*
_output_shapes
:	ђ
2

Identity"
identityIdentity:output:0*E
_input_shapes4
2:ђf:ђf:::::22
StatefulPartitionedCallStatefulPartitionedCall:L H
#
_output_shapes
:ђf
!
_user_specified_name	input_1:LH
#
_output_shapes
:ђf
!
_user_specified_name	input_2
Ыр
и
9__inference___backward_gpu_lstm_with_fallback_24554_24729
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4A
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_17
3gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_2=
9gradients_transpose_grad_invertpermutation_transpose_perm-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5ѕm
gradients/grad_ys_0Identityplaceholder*
T0*
_output_shapes
:	ђ@2
gradients/grad_ys_0s
gradients/grad_ys_1Identityplaceholder_1*
T0*#
_output_shapes
:ђf@2
gradients/grad_ys_1o
gradients/grad_ys_2Identityplaceholder_2*
T0*
_output_shapes
:	ђ@2
gradients/grad_ys_2o
gradients/grad_ys_3Identityplaceholder_3*
T0*
_output_shapes
:	ђ@2
gradients/grad_ys_3f
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: 2
gradients/grad_ys_4Ю
"gradients/strided_slice_grad/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"f   ђ   @   2$
"gradients/strided_slice_grad/Shape┐
3gradients/strided_slice_grad/StridedSliceGrad/shapeConst*
_output_shapes
:*
dtype0*!
valueB"f   ђ   @   25
3gradients/strided_slice_grad/StridedSliceGrad/shapeй
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
         25
3gradients/strided_slice_grad/StridedSliceGrad/begin░
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 23
1gradients/strided_slice_grad/StridedSliceGrad/endИ
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:27
5gradients/strided_slice_grad/StridedSliceGrad/strides█
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad<gradients/strided_slice_grad/StridedSliceGrad/shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*#
_output_shapes
:fђ@*
shrink_axis_mask2/
-gradients/strided_slice_grad/StridedSliceGrad╠
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:2.
,gradients/transpose_9_grad/InvertPermutationО
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*#
_output_shapes
:fђ@2&
$gradients/transpose_9_grad/transposeЉ
gradients/Squeeze_grad/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"   ђ   @   2
gradients/Squeeze_grad/ShapeЙ
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*#
_output_shapes
:ђ@2 
gradients/Squeeze_grad/ReshapeЋ
gradients/Squeeze_1_grad/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"   ђ   @   2 
gradients/Squeeze_1_grad/Shape─
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*#
_output_shapes
:ђ@2"
 gradients/Squeeze_1_grad/ReshapeЃ
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*#
_output_shapes
:fђ@2
gradients/AddN{
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:2
gradients/zeros_likeх
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_11gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn3gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_13gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_2gradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*I
_output_shapes7
5:fђ:ђ@:ђ@:ђє2*
(gradients/CudnnRNN_grad/CudnnRNNBackprop─
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:2,
*gradients/transpose_grad/InvertPermutationЬ
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*#
_output_shapes
:ђf2$
"gradients/transpose_grad/transposeЊ
gradients/ExpandDims_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"ђ   @   2!
gradients/ExpandDims_grad/ShapeР
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*
_output_shapes
:	ђ@2#
!gradients/ExpandDims_grad/ReshapeЌ
!gradients/ExpandDims_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"ђ   @   2#
!gradients/ExpandDims_1_grad/ShapeУ
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*
_output_shapes
:	ђ@2%
#gradients/ExpandDims_1_grad/Reshape~
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_1_grad/Rank╣
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_1_grad/modѕ
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2
gradients/concat_1_grad/Shapeї
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/concat_1_grad/Shape_1ї
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/concat_1_grad/Shape_2ї
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/concat_1_grad/Shape_3Ї
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:ђ 2!
gradients/concat_1_grad/Shape_4Ї
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:ђ 2!
gradients/concat_1_grad/Shape_5Ї
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:ђ 2!
gradients/concat_1_grad/Shape_6Ї
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:ђ 2!
gradients/concat_1_grad/Shape_7ї
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/concat_1_grad/Shape_8ї
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/concat_1_grad/Shape_9ј
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gradients/concat_1_grad/Shape_10ј
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gradients/concat_1_grad/Shape_11ј
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gradients/concat_1_grad/Shape_12ј
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gradients/concat_1_grad/Shape_13ј
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gradients/concat_1_grad/Shape_14ј
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gradients/concat_1_grad/Shape_15а
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::2&
$gradients/concat_1_grad/ConcatOffsetї
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes
:@2
gradients/concat_1_grad/Sliceњ
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes
:@2!
gradients/concat_1_grad/Slice_1њ
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes
:@2!
gradients/concat_1_grad/Slice_2њ
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes
:@2!
gradients/concat_1_grad/Slice_3Њ
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:ђ 2!
gradients/concat_1_grad/Slice_4Њ
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:ђ 2!
gradients/concat_1_grad/Slice_5Њ
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
:ђ 2!
gradients/concat_1_grad/Slice_6Њ
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
:ђ 2!
gradients/concat_1_grad/Slice_7њ
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:@2!
gradients/concat_1_grad/Slice_8њ
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:@2!
gradients/concat_1_grad/Slice_9ќ
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:@2"
 gradients/concat_1_grad/Slice_10ќ
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:@2"
 gradients/concat_1_grad/Slice_11ќ
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
:@2"
 gradients/concat_1_grad/Slice_12ќ
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
:@2"
 gradients/concat_1_grad/Slice_13ќ
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
:@2"
 gradients/concat_1_grad/Slice_14ќ
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
:@2"
 gradients/concat_1_grad/Slice_15Ї
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@      2
gradients/Reshape_grad/Shape├
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes

:@2 
gradients/Reshape_grad/ReshapeЉ
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@      2 
gradients/Reshape_1_grad/Shape╦
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:@2"
 gradients/Reshape_1_grad/ReshapeЉ
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@      2 
gradients/Reshape_2_grad/Shape╦
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:@2"
 gradients/Reshape_2_grad/ReshapeЉ
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@      2 
gradients/Reshape_3_grad/Shape╦
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:@2"
 gradients/Reshape_3_grad/ReshapeЉ
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   2 
gradients/Reshape_4_grad/Shape╦
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:@@2"
 gradients/Reshape_4_grad/ReshapeЉ
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   2 
gradients/Reshape_5_grad/Shape╦
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:@@2"
 gradients/Reshape_5_grad/ReshapeЉ
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   2 
gradients/Reshape_6_grad/Shape╦
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:@@2"
 gradients/Reshape_6_grad/ReshapeЉ
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   2 
gradients/Reshape_7_grad/Shape╦
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:@@2"
 gradients/Reshape_7_grad/Reshapeі
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2 
gradients/Reshape_8_grad/ShapeК
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:@2"
 gradients/Reshape_8_grad/Reshapeі
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2 
gradients/Reshape_9_grad/ShapeК
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:@2"
 gradients/Reshape_9_grad/Reshapeї
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/Reshape_10_grad/Shape╦
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:@2#
!gradients/Reshape_10_grad/Reshapeї
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/Reshape_11_grad/Shape╦
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:@2#
!gradients/Reshape_11_grad/Reshapeї
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/Reshape_12_grad/Shape╦
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:@2#
!gradients/Reshape_12_grad/Reshapeї
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/Reshape_13_grad/Shape╦
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
:@2#
!gradients/Reshape_13_grad/Reshapeї
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/Reshape_14_grad/Shape╦
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
:@2#
!gradients/Reshape_14_grad/Reshapeї
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/Reshape_15_grad/Shape╦
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
:@2#
!gradients/Reshape_15_grad/Reshape╠
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:2.
,gradients/transpose_1_grad/InvertPermutationП
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@2&
$gradients/transpose_1_grad/transpose╠
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:2.
,gradients/transpose_2_grad/InvertPermutation▀
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@2&
$gradients/transpose_2_grad/transpose╠
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:2.
,gradients/transpose_3_grad/InvertPermutation▀
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@2&
$gradients/transpose_3_grad/transpose╠
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:2.
,gradients/transpose_4_grad/InvertPermutation▀
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@2&
$gradients/transpose_4_grad/transpose╠
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:2.
,gradients/transpose_5_grad/InvertPermutation▀
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@2&
$gradients/transpose_5_grad/transpose╠
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:2.
,gradients/transpose_6_grad/InvertPermutation▀
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@2&
$gradients/transpose_6_grad/transpose╠
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:2.
,gradients/transpose_7_grad/InvertPermutation▀
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@2&
$gradients/transpose_7_grad/transpose╠
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:2.
,gradients/transpose_8_grad/InvertPermutation▀
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@2&
$gradients/transpose_8_grad/transposeѕ
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:ђ2
gradients/split_2_grad/concat╬
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	ђ2
gradients/split_grad/concatо
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	@ђ2
gradients/split_1_grad/concatz
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_grad/Rank»
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_grad/modЁ
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ђ2
gradients/concat_grad/ShapeЅ
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:ђ2
gradients/concat_grad/Shape_1­
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::2$
"gradients/concat_grad/ConcatOffsetы
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:ђ2
gradients/concat_grad/Sliceэ
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:ђ2
gradients/concat_grad/Slice_1v
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*#
_output_shapes
:ђf2

Identityz

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*
_output_shapes
:	ђ@2

Identity_1|

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*
_output_shapes
:	ђ@2

Identity_2t

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	ђ2

Identity_3v

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	@ђ2

Identity_4r

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:ђ2

Identity_5"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*з
_input_shapesр
я:	ђ@:ђf@:	ђ@:	ђ@: :::fђ:ђ@:ђ@:ђє:fђ@:ђ@:ђ@:: ::::::::: : : : *=
api_implements+)lstm_8f282312-5714-4ae2-bf31-6bbfff406048*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_lstm_with_fallback_24728*
go_backwards( *

time_major( :% !

_output_shapes
:	ђ@:)%
#
_output_shapes
:ђf@:%!

_output_shapes
:	ђ@:%!

_output_shapes
:	ђ@:

_output_shapes
: : 

_output_shapes
::

_output_shapes
::)%
#
_output_shapes
:fђ:)%
#
_output_shapes
:ђ@:)	%
#
_output_shapes
:ђ@:"


_output_shapes

:ђє:)%
#
_output_shapes
:fђ@:)%
#
_output_shapes
:ђ@:)%
#
_output_shapes
:ђ@: 

_output_shapes
::

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
Р
╝
while_cond_21059
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice3
/while_while_cond_21059___redundant_placeholder03
/while_while_cond_21059___redundant_placeholder13
/while_while_cond_21059___redundant_placeholder23
/while_while_cond_21059___redundant_placeholder3
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*C
_input_shapes2
0: : : : :	ђ@:	ђ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	ђ@:%!

_output_shapes
:	ђ@:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
Ыр
и
9__inference___backward_gpu_lstm_with_fallback_19011_19186
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4A
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_17
3gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_2=
9gradients_transpose_grad_invertpermutation_transpose_perm-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5ѕm
gradients/grad_ys_0Identityplaceholder*
T0*
_output_shapes
:	ђ@2
gradients/grad_ys_0s
gradients/grad_ys_1Identityplaceholder_1*
T0*#
_output_shapes
:ђf@2
gradients/grad_ys_1o
gradients/grad_ys_2Identityplaceholder_2*
T0*
_output_shapes
:	ђ@2
gradients/grad_ys_2o
gradients/grad_ys_3Identityplaceholder_3*
T0*
_output_shapes
:	ђ@2
gradients/grad_ys_3f
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: 2
gradients/grad_ys_4Ю
"gradients/strided_slice_grad/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"f   ђ   @   2$
"gradients/strided_slice_grad/Shape┐
3gradients/strided_slice_grad/StridedSliceGrad/shapeConst*
_output_shapes
:*
dtype0*!
valueB"f   ђ   @   25
3gradients/strided_slice_grad/StridedSliceGrad/shapeй
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
         25
3gradients/strided_slice_grad/StridedSliceGrad/begin░
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 23
1gradients/strided_slice_grad/StridedSliceGrad/endИ
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:27
5gradients/strided_slice_grad/StridedSliceGrad/strides█
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad<gradients/strided_slice_grad/StridedSliceGrad/shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*#
_output_shapes
:fђ@*
shrink_axis_mask2/
-gradients/strided_slice_grad/StridedSliceGrad╠
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:2.
,gradients/transpose_9_grad/InvertPermutationО
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*#
_output_shapes
:fђ@2&
$gradients/transpose_9_grad/transposeЉ
gradients/Squeeze_grad/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"   ђ   @   2
gradients/Squeeze_grad/ShapeЙ
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*#
_output_shapes
:ђ@2 
gradients/Squeeze_grad/ReshapeЋ
gradients/Squeeze_1_grad/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"   ђ   @   2 
gradients/Squeeze_1_grad/Shape─
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*#
_output_shapes
:ђ@2"
 gradients/Squeeze_1_grad/ReshapeЃ
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*#
_output_shapes
:fђ@2
gradients/AddN{
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:2
gradients/zeros_likeх
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_11gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn3gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_13gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_2gradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*I
_output_shapes7
5:fђ:ђ@:ђ@:ђє2*
(gradients/CudnnRNN_grad/CudnnRNNBackprop─
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:2,
*gradients/transpose_grad/InvertPermutationЬ
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*#
_output_shapes
:ђf2$
"gradients/transpose_grad/transposeЊ
gradients/ExpandDims_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"ђ   @   2!
gradients/ExpandDims_grad/ShapeР
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*
_output_shapes
:	ђ@2#
!gradients/ExpandDims_grad/ReshapeЌ
!gradients/ExpandDims_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"ђ   @   2#
!gradients/ExpandDims_1_grad/ShapeУ
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*
_output_shapes
:	ђ@2%
#gradients/ExpandDims_1_grad/Reshape~
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_1_grad/Rank╣
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_1_grad/modѕ
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2
gradients/concat_1_grad/Shapeї
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/concat_1_grad/Shape_1ї
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/concat_1_grad/Shape_2ї
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/concat_1_grad/Shape_3Ї
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:ђ 2!
gradients/concat_1_grad/Shape_4Ї
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:ђ 2!
gradients/concat_1_grad/Shape_5Ї
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:ђ 2!
gradients/concat_1_grad/Shape_6Ї
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:ђ 2!
gradients/concat_1_grad/Shape_7ї
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/concat_1_grad/Shape_8ї
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/concat_1_grad/Shape_9ј
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gradients/concat_1_grad/Shape_10ј
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gradients/concat_1_grad/Shape_11ј
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gradients/concat_1_grad/Shape_12ј
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gradients/concat_1_grad/Shape_13ј
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gradients/concat_1_grad/Shape_14ј
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gradients/concat_1_grad/Shape_15а
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::2&
$gradients/concat_1_grad/ConcatOffsetї
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes
:@2
gradients/concat_1_grad/Sliceњ
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes
:@2!
gradients/concat_1_grad/Slice_1њ
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes
:@2!
gradients/concat_1_grad/Slice_2њ
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes
:@2!
gradients/concat_1_grad/Slice_3Њ
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:ђ 2!
gradients/concat_1_grad/Slice_4Њ
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:ђ 2!
gradients/concat_1_grad/Slice_5Њ
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
:ђ 2!
gradients/concat_1_grad/Slice_6Њ
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
:ђ 2!
gradients/concat_1_grad/Slice_7њ
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:@2!
gradients/concat_1_grad/Slice_8њ
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:@2!
gradients/concat_1_grad/Slice_9ќ
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:@2"
 gradients/concat_1_grad/Slice_10ќ
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:@2"
 gradients/concat_1_grad/Slice_11ќ
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
:@2"
 gradients/concat_1_grad/Slice_12ќ
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
:@2"
 gradients/concat_1_grad/Slice_13ќ
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
:@2"
 gradients/concat_1_grad/Slice_14ќ
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
:@2"
 gradients/concat_1_grad/Slice_15Ї
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@      2
gradients/Reshape_grad/Shape├
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes

:@2 
gradients/Reshape_grad/ReshapeЉ
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@      2 
gradients/Reshape_1_grad/Shape╦
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:@2"
 gradients/Reshape_1_grad/ReshapeЉ
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@      2 
gradients/Reshape_2_grad/Shape╦
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:@2"
 gradients/Reshape_2_grad/ReshapeЉ
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@      2 
gradients/Reshape_3_grad/Shape╦
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:@2"
 gradients/Reshape_3_grad/ReshapeЉ
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   2 
gradients/Reshape_4_grad/Shape╦
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:@@2"
 gradients/Reshape_4_grad/ReshapeЉ
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   2 
gradients/Reshape_5_grad/Shape╦
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:@@2"
 gradients/Reshape_5_grad/ReshapeЉ
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   2 
gradients/Reshape_6_grad/Shape╦
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:@@2"
 gradients/Reshape_6_grad/ReshapeЉ
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   2 
gradients/Reshape_7_grad/Shape╦
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:@@2"
 gradients/Reshape_7_grad/Reshapeі
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2 
gradients/Reshape_8_grad/ShapeК
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:@2"
 gradients/Reshape_8_grad/Reshapeі
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2 
gradients/Reshape_9_grad/ShapeК
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:@2"
 gradients/Reshape_9_grad/Reshapeї
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/Reshape_10_grad/Shape╦
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:@2#
!gradients/Reshape_10_grad/Reshapeї
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/Reshape_11_grad/Shape╦
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:@2#
!gradients/Reshape_11_grad/Reshapeї
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/Reshape_12_grad/Shape╦
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:@2#
!gradients/Reshape_12_grad/Reshapeї
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/Reshape_13_grad/Shape╦
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
:@2#
!gradients/Reshape_13_grad/Reshapeї
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/Reshape_14_grad/Shape╦
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
:@2#
!gradients/Reshape_14_grad/Reshapeї
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/Reshape_15_grad/Shape╦
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
:@2#
!gradients/Reshape_15_grad/Reshape╠
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:2.
,gradients/transpose_1_grad/InvertPermutationП
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@2&
$gradients/transpose_1_grad/transpose╠
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:2.
,gradients/transpose_2_grad/InvertPermutation▀
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@2&
$gradients/transpose_2_grad/transpose╠
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:2.
,gradients/transpose_3_grad/InvertPermutation▀
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@2&
$gradients/transpose_3_grad/transpose╠
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:2.
,gradients/transpose_4_grad/InvertPermutation▀
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@2&
$gradients/transpose_4_grad/transpose╠
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:2.
,gradients/transpose_5_grad/InvertPermutation▀
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@2&
$gradients/transpose_5_grad/transpose╠
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:2.
,gradients/transpose_6_grad/InvertPermutation▀
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@2&
$gradients/transpose_6_grad/transpose╠
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:2.
,gradients/transpose_7_grad/InvertPermutation▀
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@2&
$gradients/transpose_7_grad/transpose╠
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:2.
,gradients/transpose_8_grad/InvertPermutation▀
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@2&
$gradients/transpose_8_grad/transposeѕ
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:ђ2
gradients/split_2_grad/concat╬
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	ђ2
gradients/split_grad/concatо
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	@ђ2
gradients/split_1_grad/concatz
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_grad/Rank»
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_grad/modЁ
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ђ2
gradients/concat_grad/ShapeЅ
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:ђ2
gradients/concat_grad/Shape_1­
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::2$
"gradients/concat_grad/ConcatOffsetы
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:ђ2
gradients/concat_grad/Sliceэ
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:ђ2
gradients/concat_grad/Slice_1v
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*#
_output_shapes
:ђf2

Identityz

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*
_output_shapes
:	ђ@2

Identity_1|

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*
_output_shapes
:	ђ@2

Identity_2t

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	ђ2

Identity_3v

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	@ђ2

Identity_4r

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:ђ2

Identity_5"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*з
_input_shapesр
я:	ђ@:ђf@:	ђ@:	ђ@: :::fђ:ђ@:ђ@:ђє:fђ@:ђ@:ђ@:: ::::::::: : : : *=
api_implements+)lstm_7813e473-cff4-46ad-842d-35e9cb4bb2b1*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_lstm_with_fallback_19185*
go_backwards( *

time_major( :% !

_output_shapes
:	ђ@:)%
#
_output_shapes
:ђf@:%!

_output_shapes
:	ђ@:%!

_output_shapes
:	ђ@:

_output_shapes
: : 

_output_shapes
::

_output_shapes
::)%
#
_output_shapes
:fђ:)%
#
_output_shapes
:ђ@:)	%
#
_output_shapes
:ђ@:"


_output_shapes

:ђє:)%
#
_output_shapes
:fђ@:)%
#
_output_shapes
:ђ@:)%
#
_output_shapes
:ђ@: 

_output_shapes
::

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
т
┘
@__inference_dense_layer_call_and_return_conditional_losses_21900

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpЇ
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@
*
dtype02
MatMul/ReadVariableOpk
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	ђ
2
MatMulї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	ђ
2	
BiasAddЇ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*
_output_shapes
:	ђ
2

Identity"
identityIdentity:output:0*&
_input_shapes
:	ђ@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:G C

_output_shapes
:	ђ@
 
_user_specified_nameinputs
ѓT
Є
&__forward_gpu_lstm_with_fallback_21418

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
transpose_9_perm
cudnnrnn
	transpose

expanddims
expanddims_1
concat_1

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
transpose_perm
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisѕu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permO
transpose_0	Transposeinputstranspose/perm:output:0*
T02
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dimu

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*#
_output_shapes
:ђ@2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dim{
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*#
_output_shapes
:ђ@2
ExpandDims_1P
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimЉ
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:@:@:@:@*
	num_split2
splitT
Const_1Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimА
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:@@:@@:@@:@@*
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:ђ*
dtype0*
valueBђ*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis|
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:ђ2
concatT
Const_2Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_2h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dimе
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:@:@:@:@:@:@:@:@*
	num_split2	
split_2e
Const_3Const*
_output_shapes
:*
dtype0*
valueB:
         2	
Const_3u
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm{
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:@2
transpose_1e
ReshapeReshapetranspose_1:y:0Const_3:output:0*
T0*
_output_shapes
:@2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:@2
transpose_2i
	Reshape_1Reshapetranspose_2:y:0Const_3:output:0*
T0*
_output_shapes
:@2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:@2
transpose_3i
	Reshape_2Reshapetranspose_3:y:0Const_3:output:0*
T0*
_output_shapes
:@2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm{
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:@2
transpose_4i
	Reshape_3Reshapetranspose_4:y:0Const_3:output:0*
T0*
_output_shapes
:@2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:@@2
transpose_5j
	Reshape_4Reshapetranspose_5:y:0Const_3:output:0*
T0*
_output_shapes	
:ђ 2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:@@2
transpose_6j
	Reshape_5Reshapetranspose_6:y:0Const_3:output:0*
T0*
_output_shapes	
:ђ 2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm}
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:@@2
transpose_7j
	Reshape_6Reshapetranspose_7:y:0Const_3:output:0*
T0*
_output_shapes	
:ђ 2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm}
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:@@2
transpose_8j
	Reshape_7Reshapetranspose_8:y:0Const_3:output:0*
T0*
_output_shapes	
:ђ 2
	Reshape_7j
	Reshape_8Reshapesplit_2:output:0Const_3:output:0*
T0*
_output_shapes
:@2
	Reshape_8j
	Reshape_9Reshapesplit_2:output:1Const_3:output:0*
T0*
_output_shapes
:@2
	Reshape_9l

Reshape_10Reshapesplit_2:output:2Const_3:output:0*
T0*
_output_shapes
:@2

Reshape_10l

Reshape_11Reshapesplit_2:output:3Const_3:output:0*
T0*
_output_shapes
:@2

Reshape_11l

Reshape_12Reshapesplit_2:output:4Const_3:output:0*
T0*
_output_shapes
:@2

Reshape_12l

Reshape_13Reshapesplit_2:output:5Const_3:output:0*
T0*
_output_shapes
:@2

Reshape_13l

Reshape_14Reshapesplit_2:output:6Const_3:output:0*
T0*
_output_shapes
:@2

Reshape_14l

Reshape_15Reshapesplit_2:output:7Const_3:output:0*
T0*
_output_shapes
:@2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axisљ

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T02

concat_1┬
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*E
_output_shapes3
1:fђ@:ђ@:ђ@:2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2Ь
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	ђ@*
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/permЃ
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*#
_output_shapes
:ђf@2
transpose_9s
SqueezeSqueezeCudnnRNN:output_h:0*
T0*
_output_shapes
:	ђ@*
squeeze_dims
 2	
Squeezew
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*
_output_shapes
:	ђ@*
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimeb
IdentityIdentitystrided_slice:output:0*
T0*
_output_shapes
:	ђ@2

Identityc

Identity_1Identitytranspose_9:y:0*
T0*#
_output_shapes
:ђf@2

Identity_1`

Identity_2IdentitySqueeze:output:0*
T0*
_output_shapes
:	ђ@2

Identity_2b

Identity_3IdentitySqueeze_1:output:0*
T0*
_output_shapes
:	ђ@2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"$
cudnnrnnCudnnRNN:reserve_space:0"

cudnnrnn_0CudnnRNN:output:0"!

cudnnrnn_1CudnnRNN:output_h:0"!

cudnnrnn_2CudnnRNN:output_c:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0*U
_input_shapesD
B:ђf:	ђ@:	ђ@:	ђ:	@ђ:ђ*=
api_implements+)lstm_2b7b0801-3979-4fdb-bb76-cb9bf7d17a22*
api_preferred_deviceGPU*U
backward_function_name;9__inference___backward_gpu_lstm_with_fallback_21244_21419*
go_backwards( *

time_major( :K G
#
_output_shapes
:ђf
 
_user_specified_nameinputs:GC

_output_shapes
:	ђ@
 
_user_specified_nameinit_h:GC

_output_shapes
:	ђ@
 
_user_specified_nameinit_c:GC

_output_shapes
:	ђ
 
_user_specified_namekernel:QM

_output_shapes
:	@ђ
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:ђ

_user_specified_namebias
ѓT
Є
&__forward_gpu_lstm_with_fallback_21857

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
transpose_9_perm
cudnnrnn
	transpose

expanddims
expanddims_1
concat_1

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
transpose_perm
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisѕu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permO
transpose_0	Transposeinputstranspose/perm:output:0*
T02
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dimu

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*#
_output_shapes
:ђ@2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dim{
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*#
_output_shapes
:ђ@2
ExpandDims_1P
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimЉ
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:@:@:@:@*
	num_split2
splitT
Const_1Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimА
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:@@:@@:@@:@@*
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:ђ*
dtype0*
valueBђ*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis|
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:ђ2
concatT
Const_2Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_2h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dimе
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:@:@:@:@:@:@:@:@*
	num_split2	
split_2e
Const_3Const*
_output_shapes
:*
dtype0*
valueB:
         2	
Const_3u
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm{
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:@2
transpose_1e
ReshapeReshapetranspose_1:y:0Const_3:output:0*
T0*
_output_shapes
:@2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:@2
transpose_2i
	Reshape_1Reshapetranspose_2:y:0Const_3:output:0*
T0*
_output_shapes
:@2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:@2
transpose_3i
	Reshape_2Reshapetranspose_3:y:0Const_3:output:0*
T0*
_output_shapes
:@2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm{
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:@2
transpose_4i
	Reshape_3Reshapetranspose_4:y:0Const_3:output:0*
T0*
_output_shapes
:@2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:@@2
transpose_5j
	Reshape_4Reshapetranspose_5:y:0Const_3:output:0*
T0*
_output_shapes	
:ђ 2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:@@2
transpose_6j
	Reshape_5Reshapetranspose_6:y:0Const_3:output:0*
T0*
_output_shapes	
:ђ 2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm}
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:@@2
transpose_7j
	Reshape_6Reshapetranspose_7:y:0Const_3:output:0*
T0*
_output_shapes	
:ђ 2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm}
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:@@2
transpose_8j
	Reshape_7Reshapetranspose_8:y:0Const_3:output:0*
T0*
_output_shapes	
:ђ 2
	Reshape_7j
	Reshape_8Reshapesplit_2:output:0Const_3:output:0*
T0*
_output_shapes
:@2
	Reshape_8j
	Reshape_9Reshapesplit_2:output:1Const_3:output:0*
T0*
_output_shapes
:@2
	Reshape_9l

Reshape_10Reshapesplit_2:output:2Const_3:output:0*
T0*
_output_shapes
:@2

Reshape_10l

Reshape_11Reshapesplit_2:output:3Const_3:output:0*
T0*
_output_shapes
:@2

Reshape_11l

Reshape_12Reshapesplit_2:output:4Const_3:output:0*
T0*
_output_shapes
:@2

Reshape_12l

Reshape_13Reshapesplit_2:output:5Const_3:output:0*
T0*
_output_shapes
:@2

Reshape_13l

Reshape_14Reshapesplit_2:output:6Const_3:output:0*
T0*
_output_shapes
:@2

Reshape_14l

Reshape_15Reshapesplit_2:output:7Const_3:output:0*
T0*
_output_shapes
:@2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axisљ

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T02

concat_1┬
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*E
_output_shapes3
1:fђ@:ђ@:ђ@:2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2Ь
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	ђ@*
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/permЃ
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*#
_output_shapes
:ђf@2
transpose_9s
SqueezeSqueezeCudnnRNN:output_h:0*
T0*
_output_shapes
:	ђ@*
squeeze_dims
 2	
Squeezew
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*
_output_shapes
:	ђ@*
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimeb
IdentityIdentitystrided_slice:output:0*
T0*
_output_shapes
:	ђ@2

Identityc

Identity_1Identitytranspose_9:y:0*
T0*#
_output_shapes
:ђf@2

Identity_1`

Identity_2IdentitySqueeze:output:0*
T0*
_output_shapes
:	ђ@2

Identity_2b

Identity_3IdentitySqueeze_1:output:0*
T0*
_output_shapes
:	ђ@2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"$
cudnnrnnCudnnRNN:reserve_space:0"

cudnnrnn_0CudnnRNN:output:0"!

cudnnrnn_1CudnnRNN:output_h:0"!

cudnnrnn_2CudnnRNN:output_c:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0*U
_input_shapesD
B:ђf:	ђ@:	ђ@:	ђ:	@ђ:ђ*=
api_implements+)lstm_0093f45e-1073-4167-8d7b-88c523642bab*
api_preferred_deviceGPU*U
backward_function_name;9__inference___backward_gpu_lstm_with_fallback_21683_21858*
go_backwards( *

time_major( :K G
#
_output_shapes
:ђf
 
_user_specified_nameinputs:GC

_output_shapes
:	ђ@
 
_user_specified_nameinit_h:GC

_output_shapes
:	ђ@
 
_user_specified_nameinit_c:GC

_output_shapes
:	ђ
 
_user_specified_namekernel:QM

_output_shapes
:	@ђ
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:ђ

_user_specified_namebias
Р
╝
while_cond_24369
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice3
/while_while_cond_24369___redundant_placeholder03
/while_while_cond_24369___redundant_placeholder13
/while_while_cond_24369___redundant_placeholder23
/while_while_cond_24369___redundant_placeholder3
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*C
_input_shapes2
0: : : : :	ђ@:	ђ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	ђ@:%!

_output_shapes
:	ђ@:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
О
§
?__inference_lstm_layer_call_and_return_conditional_losses_21917
input_1
input_2

lstm_21883

lstm_21885

lstm_21887
dense_21911
dense_21913
identityѕбdense/StatefulPartitionedCallбlstm/StatefulPartitionedCallё
lstm/StatefulPartitionedCallStatefulPartitionedCallinput_1
lstm_21883
lstm_21885
lstm_21887*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:	ђ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *H
fCRA
?__inference_lstm_layer_call_and_return_conditional_losses_214212
lstm/StatefulPartitionedCallЎ
dense/StatefulPartitionedCallStatefulPartitionedCall%lstm/StatefulPartitionedCall:output:0dense_21911dense_21913*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:	ђ
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_219002
dense/StatefulPartitionedCall▒
IdentityIdentity&dense/StatefulPartitionedCall:output:0^dense/StatefulPartitionedCall^lstm/StatefulPartitionedCall*
T0*
_output_shapes
:	ђ
2

Identity"
identityIdentity:output:0*E
_input_shapes4
2:ђf:ђf:::::2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2<
lstm/StatefulPartitionedCalllstm/StatefulPartitionedCall:L H
#
_output_shapes
:ђf
!
_user_specified_name	input_1:LH
#
_output_shapes
:ђf
!
_user_specified_name	input_2
ц?
┐
__inference_standard_lstm_21585

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permr
	transpose	Transposeinputstranspose/perm:output:0*
T0*#
_output_shapes
:fђ2
	transposec
ShapeConst*
_output_shapes
:*
dtype0*!
valueB"f   ђ      2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2Р
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceЁ
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         2
TensorArrayV2/element_shape░
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2┐
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ђ      27
5TensorArrayUnstack/TensorListFromTensor/element_shapeЭ
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2З
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	ђ*
shrink_axis_mask2
strided_slice_1g
MatMulMatMulstrided_slice_1:output:0kernel*
T0* 
_output_shapes
:
ђђ2
MatMulc
MatMul_1MatMulinit_hrecurrent_kernel*
T0* 
_output_shapes
:
ђђ2

MatMul_1d
addAddV2MatMul:product:0MatMul_1:product:0*
T0* 
_output_shapes
:
ђђ2
addW
BiasAddBiasAddadd:z:0bias*
T0* 
_output_shapes
:
ђђ2	
BiasAddP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimЪ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*@
_output_shapes.
,:	ђ@:	ђ@:	ђ@:	ђ@*
	num_split2
splitW
SigmoidSigmoidsplit:output:0*
T0*
_output_shapes
:	ђ@2	
Sigmoid[
	Sigmoid_1Sigmoidsplit:output:1*
T0*
_output_shapes
:	ђ@2
	Sigmoid_1R
mulMulSigmoid_1:y:0init_c*
T0*
_output_shapes
:	ђ@2
mulN
TanhTanhsplit:output:2*
T0*
_output_shapes
:	ђ@2
TanhV
mul_1MulSigmoid:y:0Tanh:y:0*
T0*
_output_shapes
:	ђ@2
mul_1U
add_1AddV2mul:z:0	mul_1:z:0*
T0*
_output_shapes
:	ђ@2
add_1[
	Sigmoid_2Sigmoidsplit:output:3*
T0*
_output_shapes
:	ђ@2
	Sigmoid_2M
Tanh_1Tanh	add_1:z:0*
T0*
_output_shapes
:	ђ@2
Tanh_1Z
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*
_output_shapes
:	ђ@2
mul_2Ј
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ђ   @   2
TensorArrayV2_1/element_shapeХ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterђ
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*S
_output_shapesA
?: : : : :	ђ@:	ђ@: : :	ђ:	@ђ:ђ* 
_read_only_resource_inputs
 *
bodyR
while_body_21499*
condR
while_cond_21498*R
output_shapesA
?: : : : :	ђ@:	ђ@: : :	ђ:	@ђ:ђ*
parallel_iterations 2
whileх
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ђ   @   22
0TensorArrayV2Stack/TensorListStack/element_shapeЯ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*#
_output_shapes
:fђ@*
element_dtype02$
"TensorArrayV2Stack/TensorListStackЂ
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2њ
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	ђ@*
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЮ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*#
_output_shapes
:ђf@2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ђ?2	
runtimed
IdentityIdentitystrided_slice_2:output:0*
T0*
_output_shapes
:	ђ@2

Identityc

Identity_1Identitytranspose_1:y:0*
T0*#
_output_shapes
:ђf@2

Identity_1^

Identity_2Identitywhile:output:4*
T0*
_output_shapes
:	ђ@2

Identity_2^

Identity_3Identitywhile:output:5*
T0*
_output_shapes
:	ђ@2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*U
_input_shapesD
B:ђf:	ђ@:	ђ@:	ђ:	@ђ:ђ*=
api_implements+)lstm_0093f45e-1073-4167-8d7b-88c523642bab*
api_preferred_deviceCPU*
go_backwards( *

time_major( :K G
#
_output_shapes
:ђf
 
_user_specified_nameinputs:GC

_output_shapes
:	ђ@
 
_user_specified_nameinit_h:GC

_output_shapes
:	ђ@
 
_user_specified_nameinit_c:GC

_output_shapes
:	ђ
 
_user_specified_namekernel:QM

_output_shapes
:	@ђ
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:ђ

_user_specified_namebias
Р
╝
while_cond_23930
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice3
/while_while_cond_23930___redundant_placeholder03
/while_while_cond_23930___redundant_placeholder13
/while_while_cond_23930___redundant_placeholder23
/while_while_cond_23930___redundant_placeholder3
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*C
_input_shapes2
0: : : : :	ђ@:	ђ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	ђ@:%!

_output_shapes
:	ђ@:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
р+
╬
while_body_21060
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_bias├
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ђ      29
7while/TensorArrayV2Read/TensorListGetItem/element_shape╦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes
:	ђ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemџ
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0* 
_output_shapes
:
ђђ2
while/MatMulЇ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0* 
_output_shapes
:
ђђ2
while/MatMul_1|
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0* 
_output_shapes
:
ђђ2
	while/addy
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0* 
_output_shapes
:
ђђ2
while/BiasAdd\
while/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/Constp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dimи
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*@
_output_shapes.
,:	ђ@:	ђ@:	ђ@:	ђ@*
	num_split2
while/spliti
while/SigmoidSigmoidwhile/split:output:0*
T0*
_output_shapes
:	ђ@2
while/Sigmoidm
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*
_output_shapes
:	ђ@2
while/Sigmoid_1q
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*
_output_shapes
:	ђ@2
	while/mul`

while/TanhTanhwhile/split:output:2*
T0*
_output_shapes
:	ђ@2

while/Tanhn
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*
_output_shapes
:	ђ@2
while/mul_1m
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*
_output_shapes
:	ђ@2
while/add_1m
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*
_output_shapes
:	ђ@2
while/Sigmoid_2_
while/Tanh_1Tanhwhile/add_1:z:0*
T0*
_output_shapes
:	ђ@2
while/Tanh_1r
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*
_output_shapes
:	ђ@2
while/mul_2М
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem`
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_2/yo
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: 2
while/add_2`
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_3/yv
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: 2
while/add_3^
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: 2
while/Identityq
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: 2
while/Identity_1b
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: 2
while/Identity_2Ї
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: 2
while/Identity_3k
while/Identity_4Identitywhile/mul_2:z:0*
T0*
_output_shapes
:	ђ@2
while/Identity_4k
while/Identity_5Identitywhile/add_1:z:0*
T0*
_output_shapes
:	ђ@2
while/Identity_5"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*R
_input_shapesA
?: : : : :	ђ@:	ђ@: : :	ђ:	@ђ:ђ: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	ђ@:%!

_output_shapes
:	ђ@:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	ђ:%	!

_output_shapes
:	@ђ:!


_output_shapes	
:ђ
Ѕ3
▀
 __inference__wrapped_model_19194
input_1
input_2*
&lstm_lstm_read_readvariableop_resource,
(lstm_lstm_read_1_readvariableop_resource,
(lstm_lstm_read_2_readvariableop_resource-
)lstm_dense_matmul_readvariableop_resource.
*lstm_dense_biasadd_readvariableop_resource
identityѕб!lstm/dense/BiasAdd/ReadVariableOpб lstm/dense/MatMul/ReadVariableOpбlstm/lstm/Read/ReadVariableOpбlstm/lstm/Read_1/ReadVariableOpбlstm/lstm/Read_2/ReadVariableOpw
lstm/lstm/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"ђ   f      2
lstm/lstm/Shapeѕ
lstm/lstm/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm/lstm/strided_slice/stackї
lstm/lstm/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm/lstm/strided_slice/stack_1ї
lstm/lstm/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm/lstm/strided_slice/stack_2ъ
lstm/lstm/strided_sliceStridedSlicelstm/lstm/Shape:output:0&lstm/lstm/strided_slice/stack:output:0(lstm/lstm/strided_slice/stack_1:output:0(lstm/lstm/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm/lstm/strided_slicep
lstm/lstm/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
lstm/lstm/zeros/mul/yћ
lstm/lstm/zeros/mulMul lstm/lstm/strided_slice:output:0lstm/lstm/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm/lstm/zeros/muls
lstm/lstm/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :У2
lstm/lstm/zeros/Less/yЈ
lstm/lstm/zeros/LessLesslstm/lstm/zeros/mul:z:0lstm/lstm/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm/lstm/zeros/Lessv
lstm/lstm/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
lstm/lstm/zeros/packed/1Ф
lstm/lstm/zeros/packedPack lstm/lstm/strided_slice:output:0!lstm/lstm/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm/lstm/zeros/packeds
lstm/lstm/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm/lstm/zeros/ConstЋ
lstm/lstm/zerosFilllstm/lstm/zeros/packed:output:0lstm/lstm/zeros/Const:output:0*
T0*
_output_shapes
:	ђ@2
lstm/lstm/zerost
lstm/lstm/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
lstm/lstm/zeros_1/mul/yџ
lstm/lstm/zeros_1/mulMul lstm/lstm/strided_slice:output:0 lstm/lstm/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm/lstm/zeros_1/mulw
lstm/lstm/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :У2
lstm/lstm/zeros_1/Less/yЌ
lstm/lstm/zeros_1/LessLesslstm/lstm/zeros_1/mul:z:0!lstm/lstm/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm/lstm/zeros_1/Lessz
lstm/lstm/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
lstm/lstm/zeros_1/packed/1▒
lstm/lstm/zeros_1/packedPack lstm/lstm/strided_slice:output:0#lstm/lstm/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm/lstm/zeros_1/packedw
lstm/lstm/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm/lstm/zeros_1/ConstЮ
lstm/lstm/zeros_1Fill!lstm/lstm/zeros_1/packed:output:0 lstm/lstm/zeros_1/Const:output:0*
T0*
_output_shapes
:	ђ@2
lstm/lstm/zeros_1д
lstm/lstm/Read/ReadVariableOpReadVariableOp&lstm_lstm_read_readvariableop_resource*
_output_shapes
:	ђ*
dtype02
lstm/lstm/Read/ReadVariableOpЁ
lstm/lstm/IdentityIdentity%lstm/lstm/Read/ReadVariableOp:value:0*
T0*
_output_shapes
:	ђ2
lstm/lstm/Identityг
lstm/lstm/Read_1/ReadVariableOpReadVariableOp(lstm_lstm_read_1_readvariableop_resource*
_output_shapes
:	@ђ*
dtype02!
lstm/lstm/Read_1/ReadVariableOpІ
lstm/lstm/Identity_1Identity'lstm/lstm/Read_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	@ђ2
lstm/lstm/Identity_1е
lstm/lstm/Read_2/ReadVariableOpReadVariableOp(lstm_lstm_read_2_readvariableop_resource*
_output_shapes	
:ђ*
dtype02!
lstm/lstm/Read_2/ReadVariableOpЄ
lstm/lstm/Identity_2Identity'lstm/lstm/Read_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:ђ2
lstm/lstm/Identity_2в
lstm/lstm/PartitionedCallPartitionedCallinput_1lstm/lstm/zeros:output:0lstm/lstm/zeros_1:output:0lstm/lstm/Identity:output:0lstm/lstm/Identity_1:output:0lstm/lstm/Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *F
_output_shapes4
2:	ђ@:ђf@:	ђ@:	ђ@: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *(
f#R!
__inference_standard_lstm_189132
lstm/lstm/PartitionedCall«
 lstm/dense/MatMul/ReadVariableOpReadVariableOp)lstm_dense_matmul_readvariableop_resource*
_output_shapes

:@
*
dtype02"
 lstm/dense/MatMul/ReadVariableOpе
lstm/dense/MatMulMatMul"lstm/lstm/PartitionedCall:output:0(lstm/dense/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	ђ
2
lstm/dense/MatMulГ
!lstm/dense/BiasAdd/ReadVariableOpReadVariableOp*lstm_dense_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02#
!lstm/dense/BiasAdd/ReadVariableOpЦ
lstm/dense/BiasAddBiasAddlstm/dense/MatMul:product:0)lstm/dense/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	ђ
2
lstm/dense/BiasAddњ
IdentityIdentitylstm/dense/BiasAdd:output:0"^lstm/dense/BiasAdd/ReadVariableOp!^lstm/dense/MatMul/ReadVariableOp^lstm/lstm/Read/ReadVariableOp ^lstm/lstm/Read_1/ReadVariableOp ^lstm/lstm/Read_2/ReadVariableOp*
T0*
_output_shapes
:	ђ
2

Identity"
identityIdentity:output:0*E
_input_shapes4
2:ђf:ђf:::::2F
!lstm/dense/BiasAdd/ReadVariableOp!lstm/dense/BiasAdd/ReadVariableOp2D
 lstm/dense/MatMul/ReadVariableOp lstm/dense/MatMul/ReadVariableOp2>
lstm/lstm/Read/ReadVariableOplstm/lstm/Read/ReadVariableOp2B
lstm/lstm/Read_1/ReadVariableOplstm/lstm/Read_1/ReadVariableOp2B
lstm/lstm/Read_2/ReadVariableOplstm/lstm/Read_2/ReadVariableOp:L H
#
_output_shapes
:ђf
!
_user_specified_name	input_1:LH
#
_output_shapes
:ђf
!
_user_specified_name	input_2
тH
╦
(__inference_gpu_lstm_with_fallback_24553

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4ѕu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permr
	transpose	Transposeinputstranspose/perm:output:0*
T0*#
_output_shapes
:fђ2
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dimu

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*#
_output_shapes
:ђ@2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dim{
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*#
_output_shapes
:ђ@2
ExpandDims_1P
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimЉ
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:@:@:@:@*
	num_split2
splitT
Const_1Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimА
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:@@:@@:@@:@@*
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:ђ*
dtype0*
valueBђ*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis|
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:ђ2
concatT
Const_2Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_2h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dimе
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:@:@:@:@:@:@:@:@*
	num_split2	
split_2e
Const_3Const*
_output_shapes
:*
dtype0*
valueB:
         2	
Const_3u
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm{
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:@2
transpose_1e
ReshapeReshapetranspose_1:y:0Const_3:output:0*
T0*
_output_shapes
:@2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:@2
transpose_2i
	Reshape_1Reshapetranspose_2:y:0Const_3:output:0*
T0*
_output_shapes
:@2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:@2
transpose_3i
	Reshape_2Reshapetranspose_3:y:0Const_3:output:0*
T0*
_output_shapes
:@2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm{
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:@2
transpose_4i
	Reshape_3Reshapetranspose_4:y:0Const_3:output:0*
T0*
_output_shapes
:@2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:@@2
transpose_5j
	Reshape_4Reshapetranspose_5:y:0Const_3:output:0*
T0*
_output_shapes	
:ђ 2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:@@2
transpose_6j
	Reshape_5Reshapetranspose_6:y:0Const_3:output:0*
T0*
_output_shapes	
:ђ 2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm}
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:@@2
transpose_7j
	Reshape_6Reshapetranspose_7:y:0Const_3:output:0*
T0*
_output_shapes	
:ђ 2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm}
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:@@2
transpose_8j
	Reshape_7Reshapetranspose_8:y:0Const_3:output:0*
T0*
_output_shapes	
:ђ 2
	Reshape_7j
	Reshape_8Reshapesplit_2:output:0Const_3:output:0*
T0*
_output_shapes
:@2
	Reshape_8j
	Reshape_9Reshapesplit_2:output:1Const_3:output:0*
T0*
_output_shapes
:@2
	Reshape_9l

Reshape_10Reshapesplit_2:output:2Const_3:output:0*
T0*
_output_shapes
:@2

Reshape_10l

Reshape_11Reshapesplit_2:output:3Const_3:output:0*
T0*
_output_shapes
:@2

Reshape_11l

Reshape_12Reshapesplit_2:output:4Const_3:output:0*
T0*
_output_shapes
:@2

Reshape_12l

Reshape_13Reshapesplit_2:output:5Const_3:output:0*
T0*
_output_shapes
:@2

Reshape_13l

Reshape_14Reshapesplit_2:output:6Const_3:output:0*
T0*
_output_shapes
:@2

Reshape_14l

Reshape_15Reshapesplit_2:output:7Const_3:output:0*
T0*
_output_shapes
:@2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axisг
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:ђє2

concat_1Й
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*E
_output_shapes3
1:fђ@:ђ@:ђ@:2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2Ь
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	ђ@*
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/permЃ
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*#
_output_shapes
:ђf@2
transpose_9s
SqueezeSqueezeCudnnRNN:output_h:0*
T0*
_output_shapes
:	ђ@*
squeeze_dims
 2	
Squeezew
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*
_output_shapes
:	ђ@*
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimeb
IdentityIdentitystrided_slice:output:0*
T0*
_output_shapes
:	ђ@2

Identityc

Identity_1Identitytranspose_9:y:0*
T0*#
_output_shapes
:ђf@2

Identity_1`

Identity_2IdentitySqueeze:output:0*
T0*
_output_shapes
:	ђ@2

Identity_2b

Identity_3IdentitySqueeze_1:output:0*
T0*
_output_shapes
:	ђ@2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*U
_input_shapesD
B:ђf:	ђ@:	ђ@:	ђ:	@ђ:ђ*=
api_implements+)lstm_8f282312-5714-4ae2-bf31-6bbfff406048*
api_preferred_deviceGPU*
go_backwards( *

time_major( :K G
#
_output_shapes
:ђf
 
_user_specified_nameinputs:GC

_output_shapes
:	ђ@
 
_user_specified_nameinit_h:GC

_output_shapes
:	ђ@
 
_user_specified_nameinit_c:GC

_output_shapes
:	ђ
 
_user_specified_namekernel:QM

_output_shapes
:	@ђ
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:ђ

_user_specified_namebias
р+
╬
while_body_22106
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_bias├
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ђ      29
7while/TensorArrayV2Read/TensorListGetItem/element_shape╦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes
:	ђ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemџ
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0* 
_output_shapes
:
ђђ2
while/MatMulЇ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0* 
_output_shapes
:
ђђ2
while/MatMul_1|
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0* 
_output_shapes
:
ђђ2
	while/addy
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0* 
_output_shapes
:
ђђ2
while/BiasAdd\
while/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/Constp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dimи
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*@
_output_shapes.
,:	ђ@:	ђ@:	ђ@:	ђ@*
	num_split2
while/spliti
while/SigmoidSigmoidwhile/split:output:0*
T0*
_output_shapes
:	ђ@2
while/Sigmoidm
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*
_output_shapes
:	ђ@2
while/Sigmoid_1q
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*
_output_shapes
:	ђ@2
	while/mul`

while/TanhTanhwhile/split:output:2*
T0*
_output_shapes
:	ђ@2

while/Tanhn
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*
_output_shapes
:	ђ@2
while/mul_1m
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*
_output_shapes
:	ђ@2
while/add_1m
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*
_output_shapes
:	ђ@2
while/Sigmoid_2_
while/Tanh_1Tanhwhile/add_1:z:0*
T0*
_output_shapes
:	ђ@2
while/Tanh_1r
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*
_output_shapes
:	ђ@2
while/mul_2М
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem`
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_2/yo
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: 2
while/add_2`
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_3/yv
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: 2
while/add_3^
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: 2
while/Identityq
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: 2
while/Identity_1b
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: 2
while/Identity_2Ї
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: 2
while/Identity_3k
while/Identity_4Identitywhile/mul_2:z:0*
T0*
_output_shapes
:	ђ@2
while/Identity_4k
while/Identity_5Identitywhile/add_1:z:0*
T0*
_output_shapes
:	ђ@2
while/Identity_5"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*R
_input_shapesA
?: : : : :	ђ@:	ђ@: : :	ђ:	@ђ:ђ: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	ђ@:%!

_output_shapes
:	ђ@:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	ђ:%	!

_output_shapes
:	@ђ:!


_output_shapes	
:ђ
ѓ	
╝
while_cond_20155
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice3
/while_while_cond_20155___redundant_placeholder03
/while_while_cond_20155___redundant_placeholder13
/while_while_cond_20155___redundant_placeholder23
/while_while_cond_20155___redundant_placeholder3
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*S
_input_shapesB
@: : : : :         @:         @: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         @:-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
Г.
╬
?__inference_lstm_layer_call_and_return_conditional_losses_22473
inputs_0
inputs_1%
!lstm_read_readvariableop_resource'
#lstm_read_1_readvariableop_resource'
#lstm_read_2_readvariableop_resource(
$dense_matmul_readvariableop_resource)
%dense_biasadd_readvariableop_resource
identityѕбdense/BiasAdd/ReadVariableOpбdense/MatMul/ReadVariableOpбlstm/Read/ReadVariableOpбlstm/Read_1/ReadVariableOpбlstm/Read_2/ReadVariableOpm

lstm/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"ђ   f      2

lstm/Shape~
lstm/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm/strided_slice/stackѓ
lstm/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm/strided_slice/stack_1ѓ
lstm/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm/strided_slice/stack_2ђ
lstm/strided_sliceStridedSlicelstm/Shape:output:0!lstm/strided_slice/stack:output:0#lstm/strided_slice/stack_1:output:0#lstm/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm/strided_slicef
lstm/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
lstm/zeros/mul/yђ
lstm/zeros/mulMullstm/strided_slice:output:0lstm/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm/zeros/muli
lstm/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :У2
lstm/zeros/Less/y{
lstm/zeros/LessLesslstm/zeros/mul:z:0lstm/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm/zeros/Lessl
lstm/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
lstm/zeros/packed/1Ќ
lstm/zeros/packedPacklstm/strided_slice:output:0lstm/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm/zeros/packedi
lstm/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm/zeros/ConstЂ

lstm/zerosFilllstm/zeros/packed:output:0lstm/zeros/Const:output:0*
T0*
_output_shapes
:	ђ@2

lstm/zerosj
lstm/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
lstm/zeros_1/mul/yє
lstm/zeros_1/mulMullstm/strided_slice:output:0lstm/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm/zeros_1/mulm
lstm/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :У2
lstm/zeros_1/Less/yЃ
lstm/zeros_1/LessLesslstm/zeros_1/mul:z:0lstm/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm/zeros_1/Lessp
lstm/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
lstm/zeros_1/packed/1Ю
lstm/zeros_1/packedPacklstm/strided_slice:output:0lstm/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm/zeros_1/packedm
lstm/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm/zeros_1/ConstЅ
lstm/zeros_1Filllstm/zeros_1/packed:output:0lstm/zeros_1/Const:output:0*
T0*
_output_shapes
:	ђ@2
lstm/zeros_1Ќ
lstm/Read/ReadVariableOpReadVariableOp!lstm_read_readvariableop_resource*
_output_shapes
:	ђ*
dtype02
lstm/Read/ReadVariableOpv
lstm/IdentityIdentity lstm/Read/ReadVariableOp:value:0*
T0*
_output_shapes
:	ђ2
lstm/IdentityЮ
lstm/Read_1/ReadVariableOpReadVariableOp#lstm_read_1_readvariableop_resource*
_output_shapes
:	@ђ*
dtype02
lstm/Read_1/ReadVariableOp|
lstm/Identity_1Identity"lstm/Read_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	@ђ2
lstm/Identity_1Ў
lstm/Read_2/ReadVariableOpReadVariableOp#lstm_read_2_readvariableop_resource*
_output_shapes	
:ђ*
dtype02
lstm/Read_2/ReadVariableOpx
lstm/Identity_2Identity"lstm/Read_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:ђ2
lstm/Identity_2╔
lstm/PartitionedCallPartitionedCallinputs_0lstm/zeros:output:0lstm/zeros_1:output:0lstm/Identity:output:0lstm/Identity_1:output:0lstm/Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *F
_output_shapes4
2:	ђ@:ђf@:	ђ@:	ђ@: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *(
f#R!
__inference_standard_lstm_221922
lstm/PartitionedCallЪ
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes

:@
*
dtype02
dense/MatMul/ReadVariableOpћ
dense/MatMulMatMullstm/PartitionedCall:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	ђ
2
dense/MatMulъ
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
dense/BiasAdd/ReadVariableOpЉ
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	ђ
2
dense/BiasAddЗ
IdentityIdentitydense/BiasAdd:output:0^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^lstm/Read/ReadVariableOp^lstm/Read_1/ReadVariableOp^lstm/Read_2/ReadVariableOp*
T0*
_output_shapes
:	ђ
2

Identity"
identityIdentity:output:0*E
_input_shapes4
2:ђf:ђf:::::2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp24
lstm/Read/ReadVariableOplstm/Read/ReadVariableOp28
lstm/Read_1/ReadVariableOplstm/Read_1/ReadVariableOp28
lstm/Read_2/ReadVariableOplstm/Read_2/ReadVariableOp:M I
#
_output_shapes
:ђf
"
_user_specified_name
inputs/0:MI
#
_output_shapes
:ђf
"
_user_specified_name
inputs/1
К"
љ
?__inference_lstm_layer_call_and_return_conditional_losses_20969

inputs 
read_readvariableop_resource"
read_1_readvariableop_resource"
read_2_readvariableop_resource

identity_3ѕбRead/ReadVariableOpбRead_1/ReadVariableOpбRead_2/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2Р
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :У2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros/packed/1Ѓ
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         @2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :У2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros_1/packed/1Ѕ
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         @2	
zeros_1ѕ
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	ђ*
dtype02
Read/ReadVariableOpg
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	ђ2

Identityј
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes
:	@ђ*
dtype02
Read_1/ReadVariableOpm

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	@ђ2

Identity_1і
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:ђ*
dtype02
Read_2/ReadVariableOpi

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:ђ2

Identity_2═
PartitionedCallPartitionedCallinputszeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *o
_output_shapes]
[:         @:                  @:         @:         @: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *(
f#R!
__inference_standard_lstm_206932
PartitionedCallХ

Identity_3IdentityPartitionedCall:output:0^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*
T0*'
_output_shapes
:         @2

Identity_3"!

identity_3Identity_3:output:0*?
_input_shapes.
,:                  :::2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs
ЩС
ы
9__inference___backward_gpu_lstm_with_fallback_20340_20516
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5ѕu
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:         @2
gradients/grad_ys_0ё
gradients/grad_ys_1Identityplaceholder_1*
T0*4
_output_shapes"
 :                  @2
gradients/grad_ys_1w
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:         @2
gradients/grad_ys_2w
gradients/grad_ys_3Identityplaceholder_3*
T0*'
_output_shapes
:         @2
gradients/grad_ys_3f
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: 2
gradients/grad_ys_4Б
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:2$
"gradients/strided_slice_grad/Shapeй
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
         25
3gradients/strided_slice_grad/StridedSliceGrad/begin░
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 23
1gradients/strided_slice_grad/StridedSliceGrad/endИ
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:27
5gradients/strided_slice_grad/StridedSliceGrad/strides█
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*4
_output_shapes"
 :                  @*
shrink_axis_mask2/
-gradients/strided_slice_grad/StridedSliceGrad╠
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:2.
,gradients/transpose_9_grad/InvertPermutationУ
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :                  @2&
$gradients/transpose_9_grad/transposeЉ
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:2
gradients/Squeeze_grad/Shapeк
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:         @2 
gradients/Squeeze_grad/ReshapeЌ
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:2 
gradients/Squeeze_1_grad/Shape╠
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*+
_output_shapes
:         @2"
 gradients/Squeeze_1_grad/Reshapeћ
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*4
_output_shapes"
 :                  @2
gradients/AddN{
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:2
gradients/zeros_likeХ
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*j
_output_shapesX
V:                  :         @:         @:ђє2*
(gradients/CudnnRNN_grad/CudnnRNNBackprop─
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:2,
*gradients/transpose_grad/InvertPermutation 
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :                  2$
"gradients/transpose_grad/transposeў
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:2!
gradients/ExpandDims_grad/ShapeЖ
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:         @2#
!gradients/ExpandDims_grad/Reshapeъ
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:2#
!gradients/ExpandDims_1_grad/Shape­
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:         @2%
#gradients/ExpandDims_1_grad/Reshape~
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_1_grad/Rank╣
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_1_grad/modѕ
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2
gradients/concat_1_grad/Shapeї
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/concat_1_grad/Shape_1ї
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/concat_1_grad/Shape_2ї
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/concat_1_grad/Shape_3Ї
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:ђ 2!
gradients/concat_1_grad/Shape_4Ї
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:ђ 2!
gradients/concat_1_grad/Shape_5Ї
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:ђ 2!
gradients/concat_1_grad/Shape_6Ї
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:ђ 2!
gradients/concat_1_grad/Shape_7ї
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/concat_1_grad/Shape_8ї
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/concat_1_grad/Shape_9ј
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gradients/concat_1_grad/Shape_10ј
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gradients/concat_1_grad/Shape_11ј
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gradients/concat_1_grad/Shape_12ј
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gradients/concat_1_grad/Shape_13ј
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gradients/concat_1_grad/Shape_14ј
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gradients/concat_1_grad/Shape_15а
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::2&
$gradients/concat_1_grad/ConcatOffsetї
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes
:@2
gradients/concat_1_grad/Sliceњ
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes
:@2!
gradients/concat_1_grad/Slice_1њ
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes
:@2!
gradients/concat_1_grad/Slice_2њ
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes
:@2!
gradients/concat_1_grad/Slice_3Њ
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:ђ 2!
gradients/concat_1_grad/Slice_4Њ
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:ђ 2!
gradients/concat_1_grad/Slice_5Њ
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
:ђ 2!
gradients/concat_1_grad/Slice_6Њ
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
:ђ 2!
gradients/concat_1_grad/Slice_7њ
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:@2!
gradients/concat_1_grad/Slice_8њ
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:@2!
gradients/concat_1_grad/Slice_9ќ
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:@2"
 gradients/concat_1_grad/Slice_10ќ
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:@2"
 gradients/concat_1_grad/Slice_11ќ
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
:@2"
 gradients/concat_1_grad/Slice_12ќ
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
:@2"
 gradients/concat_1_grad/Slice_13ќ
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
:@2"
 gradients/concat_1_grad/Slice_14ќ
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
:@2"
 gradients/concat_1_grad/Slice_15Ї
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@      2
gradients/Reshape_grad/Shape├
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes

:@2 
gradients/Reshape_grad/ReshapeЉ
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@      2 
gradients/Reshape_1_grad/Shape╦
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:@2"
 gradients/Reshape_1_grad/ReshapeЉ
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@      2 
gradients/Reshape_2_grad/Shape╦
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:@2"
 gradients/Reshape_2_grad/ReshapeЉ
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@      2 
gradients/Reshape_3_grad/Shape╦
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:@2"
 gradients/Reshape_3_grad/ReshapeЉ
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   2 
gradients/Reshape_4_grad/Shape╦
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:@@2"
 gradients/Reshape_4_grad/ReshapeЉ
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   2 
gradients/Reshape_5_grad/Shape╦
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:@@2"
 gradients/Reshape_5_grad/ReshapeЉ
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   2 
gradients/Reshape_6_grad/Shape╦
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:@@2"
 gradients/Reshape_6_grad/ReshapeЉ
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   2 
gradients/Reshape_7_grad/Shape╦
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:@@2"
 gradients/Reshape_7_grad/Reshapeі
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2 
gradients/Reshape_8_grad/ShapeК
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:@2"
 gradients/Reshape_8_grad/Reshapeі
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2 
gradients/Reshape_9_grad/ShapeК
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:@2"
 gradients/Reshape_9_grad/Reshapeї
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/Reshape_10_grad/Shape╦
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:@2#
!gradients/Reshape_10_grad/Reshapeї
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/Reshape_11_grad/Shape╦
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:@2#
!gradients/Reshape_11_grad/Reshapeї
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/Reshape_12_grad/Shape╦
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:@2#
!gradients/Reshape_12_grad/Reshapeї
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/Reshape_13_grad/Shape╦
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
:@2#
!gradients/Reshape_13_grad/Reshapeї
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/Reshape_14_grad/Shape╦
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
:@2#
!gradients/Reshape_14_grad/Reshapeї
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/Reshape_15_grad/Shape╦
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
:@2#
!gradients/Reshape_15_grad/Reshape╠
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:2.
,gradients/transpose_1_grad/InvertPermutationП
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@2&
$gradients/transpose_1_grad/transpose╠
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:2.
,gradients/transpose_2_grad/InvertPermutation▀
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@2&
$gradients/transpose_2_grad/transpose╠
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:2.
,gradients/transpose_3_grad/InvertPermutation▀
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@2&
$gradients/transpose_3_grad/transpose╠
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:2.
,gradients/transpose_4_grad/InvertPermutation▀
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@2&
$gradients/transpose_4_grad/transpose╠
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:2.
,gradients/transpose_5_grad/InvertPermutation▀
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@2&
$gradients/transpose_5_grad/transpose╠
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:2.
,gradients/transpose_6_grad/InvertPermutation▀
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@2&
$gradients/transpose_6_grad/transpose╠
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:2.
,gradients/transpose_7_grad/InvertPermutation▀
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@2&
$gradients/transpose_7_grad/transpose╠
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:2.
,gradients/transpose_8_grad/InvertPermutation▀
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@2&
$gradients/transpose_8_grad/transposeѕ
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:ђ2
gradients/split_2_grad/concat╬
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	ђ2
gradients/split_grad/concatо
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	@ђ2
gradients/split_1_grad/concatz
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_grad/Rank»
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_grad/modЁ
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ђ2
gradients/concat_grad/ShapeЅ
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:ђ2
gradients/concat_grad/Shape_1­
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::2$
"gradients/concat_grad/ConcatOffsetы
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:ђ2
gradients/concat_grad/Sliceэ
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:ђ2
gradients/concat_grad/Slice_1Є
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*4
_output_shapes"
 :                  2

Identityѓ

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:         @2

Identity_1ё

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*'
_output_shapes
:         @2

Identity_2t

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	ђ2

Identity_3v

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	@ђ2

Identity_4r

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:ђ2

Identity_5"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*ё
_input_shapesЫ
№:         @:                  @:         @:         @: :                  @::         @:         @::                  :         @:         @:ђє::         @:         @: ::::::::: : : : *=
api_implements+)lstm_c0c21977-f7f4-41d5-acc6-fdf72bb98b2b*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_lstm_with_fallback_20515*
go_backwards( *

time_major( :- )
'
_output_shapes
:         @::6
4
_output_shapes"
 :                  @:-)
'
_output_shapes
:         @:-)
'
_output_shapes
:         @:

_output_shapes
: ::6
4
_output_shapes"
 :                  @: 

_output_shapes
::1-
+
_output_shapes
:         @:1-
+
_output_shapes
:         @:	

_output_shapes
:::
6
4
_output_shapes"
 :                  :1-
+
_output_shapes
:         @:1-
+
_output_shapes
:         @:"

_output_shapes

:ђє: 

_output_shapes
::-)
'
_output_shapes
:         @:-)
'
_output_shapes
:         @:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
љV
Б
&__forward_gpu_lstm_with_fallback_23828

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
cudnnrnn
transpose_9_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisѕu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permO
transpose_0	Transposeinputstranspose/perm:output:0*
T02
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:         @2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dimЁ
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:         @2
ExpandDims_1P
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimЉ
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:@:@:@:@*
	num_split2
splitT
Const_1Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimА
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:@@:@@:@@:@@*
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:ђ*
dtype0*
valueBђ*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis|
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:ђ2
concatT
Const_2Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_2h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dimе
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:@:@:@:@:@:@:@:@*
	num_split2	
split_2e
Const_3Const*
_output_shapes
:*
dtype0*
valueB:
         2	
Const_3u
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm{
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:@2
transpose_1e
ReshapeReshapetranspose_1:y:0Const_3:output:0*
T0*
_output_shapes
:@2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:@2
transpose_2i
	Reshape_1Reshapetranspose_2:y:0Const_3:output:0*
T0*
_output_shapes
:@2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:@2
transpose_3i
	Reshape_2Reshapetranspose_3:y:0Const_3:output:0*
T0*
_output_shapes
:@2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm{
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:@2
transpose_4i
	Reshape_3Reshapetranspose_4:y:0Const_3:output:0*
T0*
_output_shapes
:@2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:@@2
transpose_5j
	Reshape_4Reshapetranspose_5:y:0Const_3:output:0*
T0*
_output_shapes	
:ђ 2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:@@2
transpose_6j
	Reshape_5Reshapetranspose_6:y:0Const_3:output:0*
T0*
_output_shapes	
:ђ 2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm}
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:@@2
transpose_7j
	Reshape_6Reshapetranspose_7:y:0Const_3:output:0*
T0*
_output_shapes	
:ђ 2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm}
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:@@2
transpose_8j
	Reshape_7Reshapetranspose_8:y:0Const_3:output:0*
T0*
_output_shapes	
:ђ 2
	Reshape_7j
	Reshape_8Reshapesplit_2:output:0Const_3:output:0*
T0*
_output_shapes
:@2
	Reshape_8j
	Reshape_9Reshapesplit_2:output:1Const_3:output:0*
T0*
_output_shapes
:@2
	Reshape_9l

Reshape_10Reshapesplit_2:output:2Const_3:output:0*
T0*
_output_shapes
:@2

Reshape_10l

Reshape_11Reshapesplit_2:output:3Const_3:output:0*
T0*
_output_shapes
:@2

Reshape_11l

Reshape_12Reshapesplit_2:output:4Const_3:output:0*
T0*
_output_shapes
:@2

Reshape_12l

Reshape_13Reshapesplit_2:output:5Const_3:output:0*
T0*
_output_shapes
:@2

Reshape_13l

Reshape_14Reshapesplit_2:output:6Const_3:output:0*
T0*
_output_shapes
:@2

Reshape_14l

Reshape_15Reshapesplit_2:output:7Const_3:output:0*
T0*
_output_shapes
:@2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axisљ

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T02

concat_1с
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*f
_output_shapesT
R:                  @:         @:         @:2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2Ш
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         @*
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/permћ
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*4
_output_shapes"
 :                  @2
transpose_9{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:         @*
squeeze_dims
 2	
Squeeze
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:         @*
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimej
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:         @2

Identityt

Identity_1Identitytranspose_9:y:0*
T0*4
_output_shapes"
 :                  @2

Identity_1h

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:         @2

Identity_2j

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:         @2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0*v
_input_shapese
c:                  :         @:         @:	ђ:	@ђ:ђ*=
api_implements+)lstm_6552cd95-371a-4b6b-8563-0d87bf465dff*
api_preferred_deviceGPU*U
backward_function_name;9__inference___backward_gpu_lstm_with_fallback_23653_23829*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs:OK
'
_output_shapes
:         @
 
_user_specified_nameinit_h:OK
'
_output_shapes
:         @
 
_user_specified_nameinit_c:GC

_output_shapes
:	ђ
 
_user_specified_namekernel:QM

_output_shapes
:	@ђ
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:ђ

_user_specified_namebias
т
┘
@__inference_dense_layer_call_and_return_conditional_losses_24763

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpЇ
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@
*
dtype02
MatMul/ReadVariableOpk
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	ђ
2
MatMulї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	ђ
2	
BiasAddЇ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*
_output_shapes
:	ђ
2

Identity"
identityIdentity:output:0*&
_input_shapes
:	ђ@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:G C

_output_shapes
:	ђ@
 
_user_specified_nameinputs
Њ
і
$__inference_lstm_layer_call_fn_23842
inputs_0
unknown
	unknown_0
	unknown_1
identityѕбStatefulPartitionedCall■
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *H
fCRA
?__inference_lstm_layer_call_and_return_conditional_losses_205182
StatefulPartitionedCallј
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         @2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:                  :::22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs/0
йJ
╦
(__inference_gpu_lstm_with_fallback_23652

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4ѕu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permЃ
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  2
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim}

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:         @2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dimЃ
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*+
_output_shapes
:         @2
ExpandDims_1P
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimЉ
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:@:@:@:@*
	num_split2
splitT
Const_1Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimА
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:@@:@@:@@:@@*
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:ђ*
dtype0*
valueBђ*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis|
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:ђ2
concatT
Const_2Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_2h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dimе
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:@:@:@:@:@:@:@:@*
	num_split2	
split_2e
Const_3Const*
_output_shapes
:*
dtype0*
valueB:
         2	
Const_3u
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm{
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:@2
transpose_1e
ReshapeReshapetranspose_1:y:0Const_3:output:0*
T0*
_output_shapes
:@2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:@2
transpose_2i
	Reshape_1Reshapetranspose_2:y:0Const_3:output:0*
T0*
_output_shapes
:@2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:@2
transpose_3i
	Reshape_2Reshapetranspose_3:y:0Const_3:output:0*
T0*
_output_shapes
:@2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm{
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:@2
transpose_4i
	Reshape_3Reshapetranspose_4:y:0Const_3:output:0*
T0*
_output_shapes
:@2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:@@2
transpose_5j
	Reshape_4Reshapetranspose_5:y:0Const_3:output:0*
T0*
_output_shapes	
:ђ 2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:@@2
transpose_6j
	Reshape_5Reshapetranspose_6:y:0Const_3:output:0*
T0*
_output_shapes	
:ђ 2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm}
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:@@2
transpose_7j
	Reshape_6Reshapetranspose_7:y:0Const_3:output:0*
T0*
_output_shapes	
:ђ 2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm}
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:@@2
transpose_8j
	Reshape_7Reshapetranspose_8:y:0Const_3:output:0*
T0*
_output_shapes	
:ђ 2
	Reshape_7j
	Reshape_8Reshapesplit_2:output:0Const_3:output:0*
T0*
_output_shapes
:@2
	Reshape_8j
	Reshape_9Reshapesplit_2:output:1Const_3:output:0*
T0*
_output_shapes
:@2
	Reshape_9l

Reshape_10Reshapesplit_2:output:2Const_3:output:0*
T0*
_output_shapes
:@2

Reshape_10l

Reshape_11Reshapesplit_2:output:3Const_3:output:0*
T0*
_output_shapes
:@2

Reshape_11l

Reshape_12Reshapesplit_2:output:4Const_3:output:0*
T0*
_output_shapes
:@2

Reshape_12l

Reshape_13Reshapesplit_2:output:5Const_3:output:0*
T0*
_output_shapes
:@2

Reshape_13l

Reshape_14Reshapesplit_2:output:6Const_3:output:0*
T0*
_output_shapes
:@2

Reshape_14l

Reshape_15Reshapesplit_2:output:7Const_3:output:0*
T0*
_output_shapes
:@2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axisг
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:ђє2

concat_1▀
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*f
_output_shapesT
R:                  @:         @:         @:2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2Ш
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         @*
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/permћ
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*4
_output_shapes"
 :                  @2
transpose_9{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:         @*
squeeze_dims
 2	
Squeeze
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:         @*
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimej
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:         @2

Identityt

Identity_1Identitytranspose_9:y:0*
T0*4
_output_shapes"
 :                  @2

Identity_1h

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:         @2

Identity_2j

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:         @2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*v
_input_shapese
c:                  :         @:         @:	ђ:	@ђ:ђ*=
api_implements+)lstm_6552cd95-371a-4b6b-8563-0d87bf465dff*
api_preferred_deviceGPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs:OK
'
_output_shapes
:         @
 
_user_specified_nameinit_h:OK
'
_output_shapes
:         @
 
_user_specified_nameinit_c:GC

_output_shapes
:	ђ
 
_user_specified_namekernel:QM

_output_shapes
:	@ђ
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:ђ

_user_specified_namebias
Б-
╬
while_body_20607
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_bias├
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeМ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemб
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:         ђ2
while/MatMulЋ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:         ђ2
while/MatMul_1ё
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:         ђ2
	while/addЂ
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:         ђ2
while/BiasAdd\
while/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/Constp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dimО
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*`
_output_shapesN
L:         @:         @:         @:         @*
	num_split2
while/splitq
while/SigmoidSigmoidwhile/split:output:0*
T0*'
_output_shapes
:         @2
while/Sigmoidu
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*'
_output_shapes
:         @2
while/Sigmoid_1y
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         @2
	while/mulh

while/TanhTanhwhile/split:output:2*
T0*'
_output_shapes
:         @2

while/Tanhv
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*'
_output_shapes
:         @2
while/mul_1u
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*'
_output_shapes
:         @2
while/add_1u
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*'
_output_shapes
:         @2
while/Sigmoid_2g
while/Tanh_1Tanhwhile/add_1:z:0*
T0*'
_output_shapes
:         @2
while/Tanh_1z
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*'
_output_shapes
:         @2
while/mul_2М
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem`
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_2/yo
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: 2
while/add_2`
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_3/yv
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: 2
while/add_3^
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: 2
while/Identityq
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: 2
while/Identity_1b
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: 2
while/Identity_2Ї
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: 2
while/Identity_3s
while/Identity_4Identitywhile/mul_2:z:0*
T0*'
_output_shapes
:         @2
while/Identity_4s
while/Identity_5Identitywhile/add_1:z:0*
T0*'
_output_shapes
:         @2
while/Identity_5"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*b
_input_shapesQ
O: : : : :         @:         @: : :	ђ:	@ђ:ђ: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         @:-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	ђ:%	!

_output_shapes
:	@ђ:!


_output_shapes	
:ђ
ц?
┐
__inference_standard_lstm_18913

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permr
	transpose	Transposeinputstranspose/perm:output:0*
T0*#
_output_shapes
:fђ2
	transposec
ShapeConst*
_output_shapes
:*
dtype0*!
valueB"f   ђ      2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2Р
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceЁ
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         2
TensorArrayV2/element_shape░
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2┐
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ђ      27
5TensorArrayUnstack/TensorListFromTensor/element_shapeЭ
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2З
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	ђ*
shrink_axis_mask2
strided_slice_1g
MatMulMatMulstrided_slice_1:output:0kernel*
T0* 
_output_shapes
:
ђђ2
MatMulc
MatMul_1MatMulinit_hrecurrent_kernel*
T0* 
_output_shapes
:
ђђ2

MatMul_1d
addAddV2MatMul:product:0MatMul_1:product:0*
T0* 
_output_shapes
:
ђђ2
addW
BiasAddBiasAddadd:z:0bias*
T0* 
_output_shapes
:
ђђ2	
BiasAddP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimЪ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*@
_output_shapes.
,:	ђ@:	ђ@:	ђ@:	ђ@*
	num_split2
splitW
SigmoidSigmoidsplit:output:0*
T0*
_output_shapes
:	ђ@2	
Sigmoid[
	Sigmoid_1Sigmoidsplit:output:1*
T0*
_output_shapes
:	ђ@2
	Sigmoid_1R
mulMulSigmoid_1:y:0init_c*
T0*
_output_shapes
:	ђ@2
mulN
TanhTanhsplit:output:2*
T0*
_output_shapes
:	ђ@2
TanhV
mul_1MulSigmoid:y:0Tanh:y:0*
T0*
_output_shapes
:	ђ@2
mul_1U
add_1AddV2mul:z:0	mul_1:z:0*
T0*
_output_shapes
:	ђ@2
add_1[
	Sigmoid_2Sigmoidsplit:output:3*
T0*
_output_shapes
:	ђ@2
	Sigmoid_2M
Tanh_1Tanh	add_1:z:0*
T0*
_output_shapes
:	ђ@2
Tanh_1Z
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*
_output_shapes
:	ђ@2
mul_2Ј
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ђ   @   2
TensorArrayV2_1/element_shapeХ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterђ
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*S
_output_shapesA
?: : : : :	ђ@:	ђ@: : :	ђ:	@ђ:ђ* 
_read_only_resource_inputs
 *
bodyR
while_body_18827*
condR
while_cond_18826*R
output_shapesA
?: : : : :	ђ@:	ђ@: : :	ђ:	@ђ:ђ*
parallel_iterations 2
whileх
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ђ   @   22
0TensorArrayV2Stack/TensorListStack/element_shapeЯ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*#
_output_shapes
:fђ@*
element_dtype02$
"TensorArrayV2Stack/TensorListStackЂ
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2њ
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	ђ@*
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЮ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*#
_output_shapes
:ђf@2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ђ?2	
runtimed
IdentityIdentitystrided_slice_2:output:0*
T0*
_output_shapes
:	ђ@2

Identityc

Identity_1Identitytranspose_1:y:0*
T0*#
_output_shapes
:ђf@2

Identity_1^

Identity_2Identitywhile:output:4*
T0*
_output_shapes
:	ђ@2

Identity_2^

Identity_3Identitywhile:output:5*
T0*
_output_shapes
:	ђ@2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*U
_input_shapesD
B:ђf:	ђ@:	ђ@:	ђ:	@ђ:ђ*=
api_implements+)lstm_7813e473-cff4-46ad-842d-35e9cb4bb2b1*
api_preferred_deviceCPU*
go_backwards( *

time_major( :K G
#
_output_shapes
:ђf
 
_user_specified_nameinputs:GC

_output_shapes
:	ђ@
 
_user_specified_nameinit_h:GC

_output_shapes
:	ђ@
 
_user_specified_nameinit_c:GC

_output_shapes
:	ђ
 
_user_specified_namekernel:QM

_output_shapes
:	@ђ
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:ђ

_user_specified_namebias
р+
╬
while_body_23931
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_bias├
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ђ      29
7while/TensorArrayV2Read/TensorListGetItem/element_shape╦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes
:	ђ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemџ
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0* 
_output_shapes
:
ђђ2
while/MatMulЇ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0* 
_output_shapes
:
ђђ2
while/MatMul_1|
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0* 
_output_shapes
:
ђђ2
	while/addy
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0* 
_output_shapes
:
ђђ2
while/BiasAdd\
while/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/Constp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dimи
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*@
_output_shapes.
,:	ђ@:	ђ@:	ђ@:	ђ@*
	num_split2
while/spliti
while/SigmoidSigmoidwhile/split:output:0*
T0*
_output_shapes
:	ђ@2
while/Sigmoidm
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*
_output_shapes
:	ђ@2
while/Sigmoid_1q
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*
_output_shapes
:	ђ@2
	while/mul`

while/TanhTanhwhile/split:output:2*
T0*
_output_shapes
:	ђ@2

while/Tanhn
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*
_output_shapes
:	ђ@2
while/mul_1m
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*
_output_shapes
:	ђ@2
while/add_1m
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*
_output_shapes
:	ђ@2
while/Sigmoid_2_
while/Tanh_1Tanhwhile/add_1:z:0*
T0*
_output_shapes
:	ђ@2
while/Tanh_1r
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*
_output_shapes
:	ђ@2
while/mul_2М
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem`
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_2/yo
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: 2
while/add_2`
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_3/yv
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: 2
while/add_3^
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: 2
while/Identityq
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: 2
while/Identity_1b
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: 2
while/Identity_2Ї
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: 2
while/Identity_3k
while/Identity_4Identitywhile/mul_2:z:0*
T0*
_output_shapes
:	ђ@2
while/Identity_4k
while/Identity_5Identitywhile/add_1:z:0*
T0*
_output_shapes
:	ђ@2
while/Identity_5"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*R
_input_shapesA
?: : : : :	ђ@:	ђ@: : :	ђ:	@ђ:ђ: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	ђ@:%!

_output_shapes
:	ђ@:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	ђ:%	!

_output_shapes
:	@ђ:!


_output_shapes	
:ђ
тH
╦
(__inference_gpu_lstm_with_fallback_19010

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4ѕu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permr
	transpose	Transposeinputstranspose/perm:output:0*
T0*#
_output_shapes
:fђ2
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dimu

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*#
_output_shapes
:ђ@2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dim{
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*#
_output_shapes
:ђ@2
ExpandDims_1P
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimЉ
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:@:@:@:@*
	num_split2
splitT
Const_1Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimА
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:@@:@@:@@:@@*
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:ђ*
dtype0*
valueBђ*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis|
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:ђ2
concatT
Const_2Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_2h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dimе
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:@:@:@:@:@:@:@:@*
	num_split2	
split_2e
Const_3Const*
_output_shapes
:*
dtype0*
valueB:
         2	
Const_3u
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm{
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:@2
transpose_1e
ReshapeReshapetranspose_1:y:0Const_3:output:0*
T0*
_output_shapes
:@2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:@2
transpose_2i
	Reshape_1Reshapetranspose_2:y:0Const_3:output:0*
T0*
_output_shapes
:@2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:@2
transpose_3i
	Reshape_2Reshapetranspose_3:y:0Const_3:output:0*
T0*
_output_shapes
:@2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm{
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:@2
transpose_4i
	Reshape_3Reshapetranspose_4:y:0Const_3:output:0*
T0*
_output_shapes
:@2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:@@2
transpose_5j
	Reshape_4Reshapetranspose_5:y:0Const_3:output:0*
T0*
_output_shapes	
:ђ 2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:@@2
transpose_6j
	Reshape_5Reshapetranspose_6:y:0Const_3:output:0*
T0*
_output_shapes	
:ђ 2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm}
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:@@2
transpose_7j
	Reshape_6Reshapetranspose_7:y:0Const_3:output:0*
T0*
_output_shapes	
:ђ 2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm}
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:@@2
transpose_8j
	Reshape_7Reshapetranspose_8:y:0Const_3:output:0*
T0*
_output_shapes	
:ђ 2
	Reshape_7j
	Reshape_8Reshapesplit_2:output:0Const_3:output:0*
T0*
_output_shapes
:@2
	Reshape_8j
	Reshape_9Reshapesplit_2:output:1Const_3:output:0*
T0*
_output_shapes
:@2
	Reshape_9l

Reshape_10Reshapesplit_2:output:2Const_3:output:0*
T0*
_output_shapes
:@2

Reshape_10l

Reshape_11Reshapesplit_2:output:3Const_3:output:0*
T0*
_output_shapes
:@2

Reshape_11l

Reshape_12Reshapesplit_2:output:4Const_3:output:0*
T0*
_output_shapes
:@2

Reshape_12l

Reshape_13Reshapesplit_2:output:5Const_3:output:0*
T0*
_output_shapes
:@2

Reshape_13l

Reshape_14Reshapesplit_2:output:6Const_3:output:0*
T0*
_output_shapes
:@2

Reshape_14l

Reshape_15Reshapesplit_2:output:7Const_3:output:0*
T0*
_output_shapes
:@2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axisг
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:ђє2

concat_1Й
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*E
_output_shapes3
1:fђ@:ђ@:ђ@:2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2Ь
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	ђ@*
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/permЃ
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*#
_output_shapes
:ђf@2
transpose_9s
SqueezeSqueezeCudnnRNN:output_h:0*
T0*
_output_shapes
:	ђ@*
squeeze_dims
 2	
Squeezew
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*
_output_shapes
:	ђ@*
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimeb
IdentityIdentitystrided_slice:output:0*
T0*
_output_shapes
:	ђ@2

Identityc

Identity_1Identitytranspose_9:y:0*
T0*#
_output_shapes
:ђf@2

Identity_1`

Identity_2IdentitySqueeze:output:0*
T0*
_output_shapes
:	ђ@2

Identity_2b

Identity_3IdentitySqueeze_1:output:0*
T0*
_output_shapes
:	ђ@2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*U
_input_shapesD
B:ђf:	ђ@:	ђ@:	ђ:	@ђ:ђ*=
api_implements+)lstm_7813e473-cff4-46ad-842d-35e9cb4bb2b1*
api_preferred_deviceGPU*
go_backwards( *

time_major( :K G
#
_output_shapes
:ђf
 
_user_specified_nameinputs:GC

_output_shapes
:	ђ@
 
_user_specified_nameinit_h:GC

_output_shapes
:	ђ@
 
_user_specified_nameinit_c:GC

_output_shapes
:	ђ
 
_user_specified_namekernel:QM

_output_shapes
:	@ђ
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:ђ

_user_specified_namebias
Ыр
и
9__inference___backward_gpu_lstm_with_fallback_21244_21419
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4A
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_17
3gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_2=
9gradients_transpose_grad_invertpermutation_transpose_perm-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5ѕm
gradients/grad_ys_0Identityplaceholder*
T0*
_output_shapes
:	ђ@2
gradients/grad_ys_0s
gradients/grad_ys_1Identityplaceholder_1*
T0*#
_output_shapes
:ђf@2
gradients/grad_ys_1o
gradients/grad_ys_2Identityplaceholder_2*
T0*
_output_shapes
:	ђ@2
gradients/grad_ys_2o
gradients/grad_ys_3Identityplaceholder_3*
T0*
_output_shapes
:	ђ@2
gradients/grad_ys_3f
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: 2
gradients/grad_ys_4Ю
"gradients/strided_slice_grad/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"f   ђ   @   2$
"gradients/strided_slice_grad/Shape┐
3gradients/strided_slice_grad/StridedSliceGrad/shapeConst*
_output_shapes
:*
dtype0*!
valueB"f   ђ   @   25
3gradients/strided_slice_grad/StridedSliceGrad/shapeй
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
         25
3gradients/strided_slice_grad/StridedSliceGrad/begin░
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 23
1gradients/strided_slice_grad/StridedSliceGrad/endИ
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:27
5gradients/strided_slice_grad/StridedSliceGrad/strides█
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad<gradients/strided_slice_grad/StridedSliceGrad/shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*#
_output_shapes
:fђ@*
shrink_axis_mask2/
-gradients/strided_slice_grad/StridedSliceGrad╠
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:2.
,gradients/transpose_9_grad/InvertPermutationО
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*#
_output_shapes
:fђ@2&
$gradients/transpose_9_grad/transposeЉ
gradients/Squeeze_grad/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"   ђ   @   2
gradients/Squeeze_grad/ShapeЙ
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*#
_output_shapes
:ђ@2 
gradients/Squeeze_grad/ReshapeЋ
gradients/Squeeze_1_grad/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"   ђ   @   2 
gradients/Squeeze_1_grad/Shape─
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*#
_output_shapes
:ђ@2"
 gradients/Squeeze_1_grad/ReshapeЃ
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*#
_output_shapes
:fђ@2
gradients/AddN{
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:2
gradients/zeros_likeх
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_11gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn3gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_13gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_2gradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*I
_output_shapes7
5:fђ:ђ@:ђ@:ђє2*
(gradients/CudnnRNN_grad/CudnnRNNBackprop─
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:2,
*gradients/transpose_grad/InvertPermutationЬ
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*#
_output_shapes
:ђf2$
"gradients/transpose_grad/transposeЊ
gradients/ExpandDims_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"ђ   @   2!
gradients/ExpandDims_grad/ShapeР
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*
_output_shapes
:	ђ@2#
!gradients/ExpandDims_grad/ReshapeЌ
!gradients/ExpandDims_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"ђ   @   2#
!gradients/ExpandDims_1_grad/ShapeУ
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*
_output_shapes
:	ђ@2%
#gradients/ExpandDims_1_grad/Reshape~
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_1_grad/Rank╣
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_1_grad/modѕ
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2
gradients/concat_1_grad/Shapeї
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/concat_1_grad/Shape_1ї
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/concat_1_grad/Shape_2ї
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/concat_1_grad/Shape_3Ї
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:ђ 2!
gradients/concat_1_grad/Shape_4Ї
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:ђ 2!
gradients/concat_1_grad/Shape_5Ї
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:ђ 2!
gradients/concat_1_grad/Shape_6Ї
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:ђ 2!
gradients/concat_1_grad/Shape_7ї
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/concat_1_grad/Shape_8ї
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/concat_1_grad/Shape_9ј
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gradients/concat_1_grad/Shape_10ј
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gradients/concat_1_grad/Shape_11ј
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gradients/concat_1_grad/Shape_12ј
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gradients/concat_1_grad/Shape_13ј
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gradients/concat_1_grad/Shape_14ј
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gradients/concat_1_grad/Shape_15а
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::2&
$gradients/concat_1_grad/ConcatOffsetї
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes
:@2
gradients/concat_1_grad/Sliceњ
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes
:@2!
gradients/concat_1_grad/Slice_1њ
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes
:@2!
gradients/concat_1_grad/Slice_2њ
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes
:@2!
gradients/concat_1_grad/Slice_3Њ
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:ђ 2!
gradients/concat_1_grad/Slice_4Њ
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:ђ 2!
gradients/concat_1_grad/Slice_5Њ
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
:ђ 2!
gradients/concat_1_grad/Slice_6Њ
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
:ђ 2!
gradients/concat_1_grad/Slice_7њ
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:@2!
gradients/concat_1_grad/Slice_8њ
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:@2!
gradients/concat_1_grad/Slice_9ќ
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:@2"
 gradients/concat_1_grad/Slice_10ќ
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:@2"
 gradients/concat_1_grad/Slice_11ќ
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
:@2"
 gradients/concat_1_grad/Slice_12ќ
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
:@2"
 gradients/concat_1_grad/Slice_13ќ
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
:@2"
 gradients/concat_1_grad/Slice_14ќ
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
:@2"
 gradients/concat_1_grad/Slice_15Ї
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@      2
gradients/Reshape_grad/Shape├
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes

:@2 
gradients/Reshape_grad/ReshapeЉ
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@      2 
gradients/Reshape_1_grad/Shape╦
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:@2"
 gradients/Reshape_1_grad/ReshapeЉ
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@      2 
gradients/Reshape_2_grad/Shape╦
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:@2"
 gradients/Reshape_2_grad/ReshapeЉ
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@      2 
gradients/Reshape_3_grad/Shape╦
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:@2"
 gradients/Reshape_3_grad/ReshapeЉ
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   2 
gradients/Reshape_4_grad/Shape╦
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:@@2"
 gradients/Reshape_4_grad/ReshapeЉ
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   2 
gradients/Reshape_5_grad/Shape╦
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:@@2"
 gradients/Reshape_5_grad/ReshapeЉ
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   2 
gradients/Reshape_6_grad/Shape╦
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:@@2"
 gradients/Reshape_6_grad/ReshapeЉ
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   2 
gradients/Reshape_7_grad/Shape╦
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:@@2"
 gradients/Reshape_7_grad/Reshapeі
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2 
gradients/Reshape_8_grad/ShapeК
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:@2"
 gradients/Reshape_8_grad/Reshapeі
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2 
gradients/Reshape_9_grad/ShapeК
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:@2"
 gradients/Reshape_9_grad/Reshapeї
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/Reshape_10_grad/Shape╦
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:@2#
!gradients/Reshape_10_grad/Reshapeї
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/Reshape_11_grad/Shape╦
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:@2#
!gradients/Reshape_11_grad/Reshapeї
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/Reshape_12_grad/Shape╦
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:@2#
!gradients/Reshape_12_grad/Reshapeї
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/Reshape_13_grad/Shape╦
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
:@2#
!gradients/Reshape_13_grad/Reshapeї
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/Reshape_14_grad/Shape╦
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
:@2#
!gradients/Reshape_14_grad/Reshapeї
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/Reshape_15_grad/Shape╦
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
:@2#
!gradients/Reshape_15_grad/Reshape╠
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:2.
,gradients/transpose_1_grad/InvertPermutationП
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@2&
$gradients/transpose_1_grad/transpose╠
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:2.
,gradients/transpose_2_grad/InvertPermutation▀
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@2&
$gradients/transpose_2_grad/transpose╠
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:2.
,gradients/transpose_3_grad/InvertPermutation▀
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@2&
$gradients/transpose_3_grad/transpose╠
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:2.
,gradients/transpose_4_grad/InvertPermutation▀
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@2&
$gradients/transpose_4_grad/transpose╠
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:2.
,gradients/transpose_5_grad/InvertPermutation▀
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@2&
$gradients/transpose_5_grad/transpose╠
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:2.
,gradients/transpose_6_grad/InvertPermutation▀
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@2&
$gradients/transpose_6_grad/transpose╠
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:2.
,gradients/transpose_7_grad/InvertPermutation▀
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@2&
$gradients/transpose_7_grad/transpose╠
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:2.
,gradients/transpose_8_grad/InvertPermutation▀
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@2&
$gradients/transpose_8_grad/transposeѕ
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:ђ2
gradients/split_2_grad/concat╬
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	ђ2
gradients/split_grad/concatо
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	@ђ2
gradients/split_1_grad/concatz
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_grad/Rank»
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_grad/modЁ
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ђ2
gradients/concat_grad/ShapeЅ
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:ђ2
gradients/concat_grad/Shape_1­
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::2$
"gradients/concat_grad/ConcatOffsetы
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:ђ2
gradients/concat_grad/Sliceэ
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:ђ2
gradients/concat_grad/Slice_1v
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*#
_output_shapes
:ђf2

Identityz

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*
_output_shapes
:	ђ@2

Identity_1|

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*
_output_shapes
:	ђ@2

Identity_2t

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	ђ2

Identity_3v

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	@ђ2

Identity_4r

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:ђ2

Identity_5"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*з
_input_shapesр
я:	ђ@:ђf@:	ђ@:	ђ@: :::fђ:ђ@:ђ@:ђє:fђ@:ђ@:ђ@:: ::::::::: : : : *=
api_implements+)lstm_2b7b0801-3979-4fdb-bb76-cb9bf7d17a22*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_lstm_with_fallback_21418*
go_backwards( *

time_major( :% !

_output_shapes
:	ђ@:)%
#
_output_shapes
:ђf@:%!

_output_shapes
:	ђ@:%!

_output_shapes
:	ђ@:

_output_shapes
: : 

_output_shapes
::

_output_shapes
::)%
#
_output_shapes
:fђ:)%
#
_output_shapes
:ђ@:)	%
#
_output_shapes
:ђ@:"


_output_shapes

:ђє:)%
#
_output_shapes
:fђ@:)%
#
_output_shapes
:ђ@:)%
#
_output_shapes
:ђ@: 

_output_shapes
::

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
ѓT
Є
&__forward_gpu_lstm_with_fallback_24728

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
transpose_9_perm
cudnnrnn
	transpose

expanddims
expanddims_1
concat_1

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
transpose_perm
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisѕu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permO
transpose_0	Transposeinputstranspose/perm:output:0*
T02
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dimu

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*#
_output_shapes
:ђ@2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dim{
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*#
_output_shapes
:ђ@2
ExpandDims_1P
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimЉ
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:@:@:@:@*
	num_split2
splitT
Const_1Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimА
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:@@:@@:@@:@@*
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:ђ*
dtype0*
valueBђ*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis|
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:ђ2
concatT
Const_2Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_2h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dimе
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:@:@:@:@:@:@:@:@*
	num_split2	
split_2e
Const_3Const*
_output_shapes
:*
dtype0*
valueB:
         2	
Const_3u
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm{
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:@2
transpose_1e
ReshapeReshapetranspose_1:y:0Const_3:output:0*
T0*
_output_shapes
:@2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:@2
transpose_2i
	Reshape_1Reshapetranspose_2:y:0Const_3:output:0*
T0*
_output_shapes
:@2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:@2
transpose_3i
	Reshape_2Reshapetranspose_3:y:0Const_3:output:0*
T0*
_output_shapes
:@2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm{
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:@2
transpose_4i
	Reshape_3Reshapetranspose_4:y:0Const_3:output:0*
T0*
_output_shapes
:@2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:@@2
transpose_5j
	Reshape_4Reshapetranspose_5:y:0Const_3:output:0*
T0*
_output_shapes	
:ђ 2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:@@2
transpose_6j
	Reshape_5Reshapetranspose_6:y:0Const_3:output:0*
T0*
_output_shapes	
:ђ 2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm}
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:@@2
transpose_7j
	Reshape_6Reshapetranspose_7:y:0Const_3:output:0*
T0*
_output_shapes	
:ђ 2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm}
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:@@2
transpose_8j
	Reshape_7Reshapetranspose_8:y:0Const_3:output:0*
T0*
_output_shapes	
:ђ 2
	Reshape_7j
	Reshape_8Reshapesplit_2:output:0Const_3:output:0*
T0*
_output_shapes
:@2
	Reshape_8j
	Reshape_9Reshapesplit_2:output:1Const_3:output:0*
T0*
_output_shapes
:@2
	Reshape_9l

Reshape_10Reshapesplit_2:output:2Const_3:output:0*
T0*
_output_shapes
:@2

Reshape_10l

Reshape_11Reshapesplit_2:output:3Const_3:output:0*
T0*
_output_shapes
:@2

Reshape_11l

Reshape_12Reshapesplit_2:output:4Const_3:output:0*
T0*
_output_shapes
:@2

Reshape_12l

Reshape_13Reshapesplit_2:output:5Const_3:output:0*
T0*
_output_shapes
:@2

Reshape_13l

Reshape_14Reshapesplit_2:output:6Const_3:output:0*
T0*
_output_shapes
:@2

Reshape_14l

Reshape_15Reshapesplit_2:output:7Const_3:output:0*
T0*
_output_shapes
:@2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axisљ

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T02

concat_1┬
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*E
_output_shapes3
1:fђ@:ђ@:ђ@:2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2Ь
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	ђ@*
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/permЃ
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*#
_output_shapes
:ђf@2
transpose_9s
SqueezeSqueezeCudnnRNN:output_h:0*
T0*
_output_shapes
:	ђ@*
squeeze_dims
 2	
Squeezew
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*
_output_shapes
:	ђ@*
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimeb
IdentityIdentitystrided_slice:output:0*
T0*
_output_shapes
:	ђ@2

Identityc

Identity_1Identitytranspose_9:y:0*
T0*#
_output_shapes
:ђf@2

Identity_1`

Identity_2IdentitySqueeze:output:0*
T0*
_output_shapes
:	ђ@2

Identity_2b

Identity_3IdentitySqueeze_1:output:0*
T0*
_output_shapes
:	ђ@2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"$
cudnnrnnCudnnRNN:reserve_space:0"

cudnnrnn_0CudnnRNN:output:0"!

cudnnrnn_1CudnnRNN:output_h:0"!

cudnnrnn_2CudnnRNN:output_c:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0*U
_input_shapesD
B:ђf:	ђ@:	ђ@:	ђ:	@ђ:ђ*=
api_implements+)lstm_8f282312-5714-4ae2-bf31-6bbfff406048*
api_preferred_deviceGPU*U
backward_function_name;9__inference___backward_gpu_lstm_with_fallback_24554_24729*
go_backwards( *

time_major( :K G
#
_output_shapes
:ђf
 
_user_specified_nameinputs:GC

_output_shapes
:	ђ@
 
_user_specified_nameinit_h:GC

_output_shapes
:	ђ@
 
_user_specified_nameinit_c:GC

_output_shapes
:	ђ
 
_user_specified_namekernel:QM

_output_shapes
:	@ђ
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:ђ

_user_specified_namebias
¤"
њ
?__inference_lstm_layer_call_and_return_conditional_losses_23831
inputs_0 
read_readvariableop_resource"
read_1_readvariableop_resource"
read_2_readvariableop_resource

identity_3ѕбRead/ReadVariableOpбRead_1/ReadVariableOpбRead_2/ReadVariableOpF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2Р
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :У2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros/packed/1Ѓ
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         @2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :У2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros_1/packed/1Ѕ
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         @2	
zeros_1ѕ
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	ђ*
dtype02
Read/ReadVariableOpg
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	ђ2

Identityј
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes
:	@ђ*
dtype02
Read_1/ReadVariableOpm

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	@ђ2

Identity_1і
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:ђ*
dtype02
Read_2/ReadVariableOpi

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:ђ2

Identity_2¤
PartitionedCallPartitionedCallinputs_0zeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *o
_output_shapes]
[:         @:                  @:         @:         @: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *(
f#R!
__inference_standard_lstm_235552
PartitionedCallХ

Identity_3IdentityPartitionedCall:output:0^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*
T0*'
_output_shapes
:         @2

Identity_3"!

identity_3Identity_3:output:0*?
_input_shapes.
,:                  :::2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs/0
тH
╦
(__inference_gpu_lstm_with_fallback_24114

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4ѕu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permr
	transpose	Transposeinputstranspose/perm:output:0*
T0*#
_output_shapes
:fђ2
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dimu

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*#
_output_shapes
:ђ@2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dim{
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*#
_output_shapes
:ђ@2
ExpandDims_1P
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimЉ
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:@:@:@:@*
	num_split2
splitT
Const_1Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimА
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:@@:@@:@@:@@*
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:ђ*
dtype0*
valueBђ*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis|
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:ђ2
concatT
Const_2Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_2h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dimе
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:@:@:@:@:@:@:@:@*
	num_split2	
split_2e
Const_3Const*
_output_shapes
:*
dtype0*
valueB:
         2	
Const_3u
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm{
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:@2
transpose_1e
ReshapeReshapetranspose_1:y:0Const_3:output:0*
T0*
_output_shapes
:@2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:@2
transpose_2i
	Reshape_1Reshapetranspose_2:y:0Const_3:output:0*
T0*
_output_shapes
:@2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:@2
transpose_3i
	Reshape_2Reshapetranspose_3:y:0Const_3:output:0*
T0*
_output_shapes
:@2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm{
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:@2
transpose_4i
	Reshape_3Reshapetranspose_4:y:0Const_3:output:0*
T0*
_output_shapes
:@2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:@@2
transpose_5j
	Reshape_4Reshapetranspose_5:y:0Const_3:output:0*
T0*
_output_shapes	
:ђ 2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:@@2
transpose_6j
	Reshape_5Reshapetranspose_6:y:0Const_3:output:0*
T0*
_output_shapes	
:ђ 2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm}
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:@@2
transpose_7j
	Reshape_6Reshapetranspose_7:y:0Const_3:output:0*
T0*
_output_shapes	
:ђ 2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm}
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:@@2
transpose_8j
	Reshape_7Reshapetranspose_8:y:0Const_3:output:0*
T0*
_output_shapes	
:ђ 2
	Reshape_7j
	Reshape_8Reshapesplit_2:output:0Const_3:output:0*
T0*
_output_shapes
:@2
	Reshape_8j
	Reshape_9Reshapesplit_2:output:1Const_3:output:0*
T0*
_output_shapes
:@2
	Reshape_9l

Reshape_10Reshapesplit_2:output:2Const_3:output:0*
T0*
_output_shapes
:@2

Reshape_10l

Reshape_11Reshapesplit_2:output:3Const_3:output:0*
T0*
_output_shapes
:@2

Reshape_11l

Reshape_12Reshapesplit_2:output:4Const_3:output:0*
T0*
_output_shapes
:@2

Reshape_12l

Reshape_13Reshapesplit_2:output:5Const_3:output:0*
T0*
_output_shapes
:@2

Reshape_13l

Reshape_14Reshapesplit_2:output:6Const_3:output:0*
T0*
_output_shapes
:@2

Reshape_14l

Reshape_15Reshapesplit_2:output:7Const_3:output:0*
T0*
_output_shapes
:@2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axisг
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:ђє2

concat_1Й
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*E
_output_shapes3
1:fђ@:ђ@:ђ@:2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2Ь
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	ђ@*
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/permЃ
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*#
_output_shapes
:ђf@2
transpose_9s
SqueezeSqueezeCudnnRNN:output_h:0*
T0*
_output_shapes
:	ђ@*
squeeze_dims
 2	
Squeezew
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*
_output_shapes
:	ђ@*
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimeb
IdentityIdentitystrided_slice:output:0*
T0*
_output_shapes
:	ђ@2

Identityc

Identity_1Identitytranspose_9:y:0*
T0*#
_output_shapes
:ђf@2

Identity_1`

Identity_2IdentitySqueeze:output:0*
T0*
_output_shapes
:	ђ@2

Identity_2b

Identity_3IdentitySqueeze_1:output:0*
T0*
_output_shapes
:	ђ@2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*U
_input_shapesD
B:ђf:	ђ@:	ђ@:	ђ:	@ђ:ђ*=
api_implements+)lstm_4eda3656-9ae8-4e2a-856a-77703b743f50*
api_preferred_deviceGPU*
go_backwards( *

time_major( :K G
#
_output_shapes
:ђf
 
_user_specified_nameinputs:GC

_output_shapes
:	ђ@
 
_user_specified_nameinit_h:GC

_output_shapes
:	ђ@
 
_user_specified_nameinit_c:GC

_output_shapes
:	ђ
 
_user_specified_namekernel:QM

_output_shapes
:	@ђ
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:ђ

_user_specified_namebias
█
ѕ
$__inference_lstm_layer_call_fn_24753

inputs
unknown
	unknown_0
	unknown_1
identityѕбStatefulPartitionedCallЗ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:	ђ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *H
fCRA
?__inference_lstm_layer_call_and_return_conditional_losses_218602
StatefulPartitionedCallє
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*
_output_shapes
:	ђ@2

Identity"
identityIdentity:output:0*.
_input_shapes
:ђf:::22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:ђf
 
_user_specified_nameinputs
Њ
і
$__inference_lstm_layer_call_fn_23853
inputs_0
unknown
	unknown_0
	unknown_1
identityѕбStatefulPartitionedCall■
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *H
fCRA
?__inference_lstm_layer_call_and_return_conditional_losses_209692
StatefulPartitionedCallј
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         @2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:                  :::22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs/0
тH
╦
(__inference_gpu_lstm_with_fallback_21243

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4ѕu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permr
	transpose	Transposeinputstranspose/perm:output:0*
T0*#
_output_shapes
:fђ2
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dimu

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*#
_output_shapes
:ђ@2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dim{
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*#
_output_shapes
:ђ@2
ExpandDims_1P
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimЉ
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:@:@:@:@*
	num_split2
splitT
Const_1Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimА
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:@@:@@:@@:@@*
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:ђ*
dtype0*
valueBђ*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis|
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:ђ2
concatT
Const_2Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_2h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dimе
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:@:@:@:@:@:@:@:@*
	num_split2	
split_2e
Const_3Const*
_output_shapes
:*
dtype0*
valueB:
         2	
Const_3u
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm{
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:@2
transpose_1e
ReshapeReshapetranspose_1:y:0Const_3:output:0*
T0*
_output_shapes
:@2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:@2
transpose_2i
	Reshape_1Reshapetranspose_2:y:0Const_3:output:0*
T0*
_output_shapes
:@2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:@2
transpose_3i
	Reshape_2Reshapetranspose_3:y:0Const_3:output:0*
T0*
_output_shapes
:@2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm{
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:@2
transpose_4i
	Reshape_3Reshapetranspose_4:y:0Const_3:output:0*
T0*
_output_shapes
:@2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:@@2
transpose_5j
	Reshape_4Reshapetranspose_5:y:0Const_3:output:0*
T0*
_output_shapes	
:ђ 2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:@@2
transpose_6j
	Reshape_5Reshapetranspose_6:y:0Const_3:output:0*
T0*
_output_shapes	
:ђ 2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm}
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:@@2
transpose_7j
	Reshape_6Reshapetranspose_7:y:0Const_3:output:0*
T0*
_output_shapes	
:ђ 2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm}
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:@@2
transpose_8j
	Reshape_7Reshapetranspose_8:y:0Const_3:output:0*
T0*
_output_shapes	
:ђ 2
	Reshape_7j
	Reshape_8Reshapesplit_2:output:0Const_3:output:0*
T0*
_output_shapes
:@2
	Reshape_8j
	Reshape_9Reshapesplit_2:output:1Const_3:output:0*
T0*
_output_shapes
:@2
	Reshape_9l

Reshape_10Reshapesplit_2:output:2Const_3:output:0*
T0*
_output_shapes
:@2

Reshape_10l

Reshape_11Reshapesplit_2:output:3Const_3:output:0*
T0*
_output_shapes
:@2

Reshape_11l

Reshape_12Reshapesplit_2:output:4Const_3:output:0*
T0*
_output_shapes
:@2

Reshape_12l

Reshape_13Reshapesplit_2:output:5Const_3:output:0*
T0*
_output_shapes
:@2

Reshape_13l

Reshape_14Reshapesplit_2:output:6Const_3:output:0*
T0*
_output_shapes
:@2

Reshape_14l

Reshape_15Reshapesplit_2:output:7Const_3:output:0*
T0*
_output_shapes
:@2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axisг
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:ђє2

concat_1Й
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*E
_output_shapes3
1:fђ@:ђ@:ђ@:2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2Ь
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	ђ@*
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/permЃ
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*#
_output_shapes
:ђf@2
transpose_9s
SqueezeSqueezeCudnnRNN:output_h:0*
T0*
_output_shapes
:	ђ@*
squeeze_dims
 2	
Squeezew
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*
_output_shapes
:	ђ@*
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimeb
IdentityIdentitystrided_slice:output:0*
T0*
_output_shapes
:	ђ@2

Identityc

Identity_1Identitytranspose_9:y:0*
T0*#
_output_shapes
:ђf@2

Identity_1`

Identity_2IdentitySqueeze:output:0*
T0*
_output_shapes
:	ђ@2

Identity_2b

Identity_3IdentitySqueeze_1:output:0*
T0*
_output_shapes
:	ђ@2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*U
_input_shapesD
B:ђf:	ђ@:	ђ@:	ђ:	@ђ:ђ*=
api_implements+)lstm_2b7b0801-3979-4fdb-bb76-cb9bf7d17a22*
api_preferred_deviceGPU*
go_backwards( *

time_major( :K G
#
_output_shapes
:ђf
 
_user_specified_nameinputs:GC

_output_shapes
:	ђ@
 
_user_specified_nameinit_h:GC

_output_shapes
:	ђ@
 
_user_specified_nameinit_c:GC

_output_shapes
:	ђ
 
_user_specified_namekernel:QM

_output_shapes
:	@ђ
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:ђ

_user_specified_namebias
ѓT
Є
&__forward_gpu_lstm_with_fallback_22910

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
transpose_9_perm
cudnnrnn
	transpose

expanddims
expanddims_1
concat_1

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
transpose_perm
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisѕu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permO
transpose_0	Transposeinputstranspose/perm:output:0*
T02
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dimu

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*#
_output_shapes
:ђ@2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dim{
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*#
_output_shapes
:ђ@2
ExpandDims_1P
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimЉ
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:@:@:@:@*
	num_split2
splitT
Const_1Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimА
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:@@:@@:@@:@@*
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:ђ*
dtype0*
valueBђ*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis|
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:ђ2
concatT
Const_2Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_2h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dimе
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:@:@:@:@:@:@:@:@*
	num_split2	
split_2e
Const_3Const*
_output_shapes
:*
dtype0*
valueB:
         2	
Const_3u
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm{
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:@2
transpose_1e
ReshapeReshapetranspose_1:y:0Const_3:output:0*
T0*
_output_shapes
:@2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:@2
transpose_2i
	Reshape_1Reshapetranspose_2:y:0Const_3:output:0*
T0*
_output_shapes
:@2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:@2
transpose_3i
	Reshape_2Reshapetranspose_3:y:0Const_3:output:0*
T0*
_output_shapes
:@2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm{
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:@2
transpose_4i
	Reshape_3Reshapetranspose_4:y:0Const_3:output:0*
T0*
_output_shapes
:@2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:@@2
transpose_5j
	Reshape_4Reshapetranspose_5:y:0Const_3:output:0*
T0*
_output_shapes	
:ђ 2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:@@2
transpose_6j
	Reshape_5Reshapetranspose_6:y:0Const_3:output:0*
T0*
_output_shapes	
:ђ 2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm}
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:@@2
transpose_7j
	Reshape_6Reshapetranspose_7:y:0Const_3:output:0*
T0*
_output_shapes	
:ђ 2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm}
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:@@2
transpose_8j
	Reshape_7Reshapetranspose_8:y:0Const_3:output:0*
T0*
_output_shapes	
:ђ 2
	Reshape_7j
	Reshape_8Reshapesplit_2:output:0Const_3:output:0*
T0*
_output_shapes
:@2
	Reshape_8j
	Reshape_9Reshapesplit_2:output:1Const_3:output:0*
T0*
_output_shapes
:@2
	Reshape_9l

Reshape_10Reshapesplit_2:output:2Const_3:output:0*
T0*
_output_shapes
:@2

Reshape_10l

Reshape_11Reshapesplit_2:output:3Const_3:output:0*
T0*
_output_shapes
:@2

Reshape_11l

Reshape_12Reshapesplit_2:output:4Const_3:output:0*
T0*
_output_shapes
:@2

Reshape_12l

Reshape_13Reshapesplit_2:output:5Const_3:output:0*
T0*
_output_shapes
:@2

Reshape_13l

Reshape_14Reshapesplit_2:output:6Const_3:output:0*
T0*
_output_shapes
:@2

Reshape_14l

Reshape_15Reshapesplit_2:output:7Const_3:output:0*
T0*
_output_shapes
:@2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axisљ

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T02

concat_1┬
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*E
_output_shapes3
1:fђ@:ђ@:ђ@:2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2Ь
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	ђ@*
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/permЃ
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*#
_output_shapes
:ђf@2
transpose_9s
SqueezeSqueezeCudnnRNN:output_h:0*
T0*
_output_shapes
:	ђ@*
squeeze_dims
 2	
Squeezew
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*
_output_shapes
:	ђ@*
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimeb
IdentityIdentitystrided_slice:output:0*
T0*
_output_shapes
:	ђ@2

Identityc

Identity_1Identitytranspose_9:y:0*
T0*#
_output_shapes
:ђf@2

Identity_1`

Identity_2IdentitySqueeze:output:0*
T0*
_output_shapes
:	ђ@2

Identity_2b

Identity_3IdentitySqueeze_1:output:0*
T0*
_output_shapes
:	ђ@2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"$
cudnnrnnCudnnRNN:reserve_space:0"

cudnnrnn_0CudnnRNN:output:0"!

cudnnrnn_1CudnnRNN:output_h:0"!

cudnnrnn_2CudnnRNN:output_c:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0*U
_input_shapesD
B:ђf:	ђ@:	ђ@:	ђ:	@ђ:ђ*=
api_implements+)lstm_277f58ef-eeec-44e1-b8f6-addb996e41ea*
api_preferred_deviceGPU*U
backward_function_name;9__inference___backward_gpu_lstm_with_fallback_22736_22911*
go_backwards( *

time_major( :K G
#
_output_shapes
:ђf
 
_user_specified_nameinputs:GC

_output_shapes
:	ђ@
 
_user_specified_nameinit_h:GC

_output_shapes
:	ђ@
 
_user_specified_nameinit_c:GC

_output_shapes
:	ђ
 
_user_specified_namekernel:QM

_output_shapes
:	@ђ
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:ђ

_user_specified_namebias
тH
╦
(__inference_gpu_lstm_with_fallback_22289

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4ѕu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permr
	transpose	Transposeinputstranspose/perm:output:0*
T0*#
_output_shapes
:fђ2
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dimu

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*#
_output_shapes
:ђ@2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dim{
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*#
_output_shapes
:ђ@2
ExpandDims_1P
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimЉ
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:@:@:@:@*
	num_split2
splitT
Const_1Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimА
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:@@:@@:@@:@@*
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:ђ*
dtype0*
valueBђ*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis|
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:ђ2
concatT
Const_2Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_2h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dimе
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:@:@:@:@:@:@:@:@*
	num_split2	
split_2e
Const_3Const*
_output_shapes
:*
dtype0*
valueB:
         2	
Const_3u
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm{
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:@2
transpose_1e
ReshapeReshapetranspose_1:y:0Const_3:output:0*
T0*
_output_shapes
:@2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:@2
transpose_2i
	Reshape_1Reshapetranspose_2:y:0Const_3:output:0*
T0*
_output_shapes
:@2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:@2
transpose_3i
	Reshape_2Reshapetranspose_3:y:0Const_3:output:0*
T0*
_output_shapes
:@2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm{
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:@2
transpose_4i
	Reshape_3Reshapetranspose_4:y:0Const_3:output:0*
T0*
_output_shapes
:@2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:@@2
transpose_5j
	Reshape_4Reshapetranspose_5:y:0Const_3:output:0*
T0*
_output_shapes	
:ђ 2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:@@2
transpose_6j
	Reshape_5Reshapetranspose_6:y:0Const_3:output:0*
T0*
_output_shapes	
:ђ 2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm}
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:@@2
transpose_7j
	Reshape_6Reshapetranspose_7:y:0Const_3:output:0*
T0*
_output_shapes	
:ђ 2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm}
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:@@2
transpose_8j
	Reshape_7Reshapetranspose_8:y:0Const_3:output:0*
T0*
_output_shapes	
:ђ 2
	Reshape_7j
	Reshape_8Reshapesplit_2:output:0Const_3:output:0*
T0*
_output_shapes
:@2
	Reshape_8j
	Reshape_9Reshapesplit_2:output:1Const_3:output:0*
T0*
_output_shapes
:@2
	Reshape_9l

Reshape_10Reshapesplit_2:output:2Const_3:output:0*
T0*
_output_shapes
:@2

Reshape_10l

Reshape_11Reshapesplit_2:output:3Const_3:output:0*
T0*
_output_shapes
:@2

Reshape_11l

Reshape_12Reshapesplit_2:output:4Const_3:output:0*
T0*
_output_shapes
:@2

Reshape_12l

Reshape_13Reshapesplit_2:output:5Const_3:output:0*
T0*
_output_shapes
:@2

Reshape_13l

Reshape_14Reshapesplit_2:output:6Const_3:output:0*
T0*
_output_shapes
:@2

Reshape_14l

Reshape_15Reshapesplit_2:output:7Const_3:output:0*
T0*
_output_shapes
:@2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axisг
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:ђє2

concat_1Й
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*E
_output_shapes3
1:fђ@:ђ@:ђ@:2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2Ь
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	ђ@*
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/permЃ
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*#
_output_shapes
:ђf@2
transpose_9s
SqueezeSqueezeCudnnRNN:output_h:0*
T0*
_output_shapes
:	ђ@*
squeeze_dims
 2	
Squeezew
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*
_output_shapes
:	ђ@*
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimeb
IdentityIdentitystrided_slice:output:0*
T0*
_output_shapes
:	ђ@2

Identityc

Identity_1Identitytranspose_9:y:0*
T0*#
_output_shapes
:ђf@2

Identity_1`

Identity_2IdentitySqueeze:output:0*
T0*
_output_shapes
:	ђ@2

Identity_2b

Identity_3IdentitySqueeze_1:output:0*
T0*
_output_shapes
:	ђ@2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*U
_input_shapesD
B:ђf:	ђ@:	ђ@:	ђ:	@ђ:ђ*=
api_implements+)lstm_567777ca-3aeb-4e05-a205-3dee308fbbc2*
api_preferred_deviceGPU*
go_backwards( *

time_major( :K G
#
_output_shapes
:ђf
 
_user_specified_nameinputs:GC

_output_shapes
:	ђ@
 
_user_specified_nameinit_h:GC

_output_shapes
:	ђ@
 
_user_specified_nameinit_c:GC

_output_shapes
:	ђ
 
_user_specified_namekernel:QM

_output_shapes
:	@ђ
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:ђ

_user_specified_namebias
ц?
┐
__inference_standard_lstm_21146

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permr
	transpose	Transposeinputstranspose/perm:output:0*
T0*#
_output_shapes
:fђ2
	transposec
ShapeConst*
_output_shapes
:*
dtype0*!
valueB"f   ђ      2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2Р
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceЁ
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         2
TensorArrayV2/element_shape░
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2┐
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ђ      27
5TensorArrayUnstack/TensorListFromTensor/element_shapeЭ
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2З
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	ђ*
shrink_axis_mask2
strided_slice_1g
MatMulMatMulstrided_slice_1:output:0kernel*
T0* 
_output_shapes
:
ђђ2
MatMulc
MatMul_1MatMulinit_hrecurrent_kernel*
T0* 
_output_shapes
:
ђђ2

MatMul_1d
addAddV2MatMul:product:0MatMul_1:product:0*
T0* 
_output_shapes
:
ђђ2
addW
BiasAddBiasAddadd:z:0bias*
T0* 
_output_shapes
:
ђђ2	
BiasAddP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimЪ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*@
_output_shapes.
,:	ђ@:	ђ@:	ђ@:	ђ@*
	num_split2
splitW
SigmoidSigmoidsplit:output:0*
T0*
_output_shapes
:	ђ@2	
Sigmoid[
	Sigmoid_1Sigmoidsplit:output:1*
T0*
_output_shapes
:	ђ@2
	Sigmoid_1R
mulMulSigmoid_1:y:0init_c*
T0*
_output_shapes
:	ђ@2
mulN
TanhTanhsplit:output:2*
T0*
_output_shapes
:	ђ@2
TanhV
mul_1MulSigmoid:y:0Tanh:y:0*
T0*
_output_shapes
:	ђ@2
mul_1U
add_1AddV2mul:z:0	mul_1:z:0*
T0*
_output_shapes
:	ђ@2
add_1[
	Sigmoid_2Sigmoidsplit:output:3*
T0*
_output_shapes
:	ђ@2
	Sigmoid_2M
Tanh_1Tanh	add_1:z:0*
T0*
_output_shapes
:	ђ@2
Tanh_1Z
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*
_output_shapes
:	ђ@2
mul_2Ј
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ђ   @   2
TensorArrayV2_1/element_shapeХ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterђ
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*S
_output_shapesA
?: : : : :	ђ@:	ђ@: : :	ђ:	@ђ:ђ* 
_read_only_resource_inputs
 *
bodyR
while_body_21060*
condR
while_cond_21059*R
output_shapesA
?: : : : :	ђ@:	ђ@: : :	ђ:	@ђ:ђ*
parallel_iterations 2
whileх
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ђ   @   22
0TensorArrayV2Stack/TensorListStack/element_shapeЯ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*#
_output_shapes
:fђ@*
element_dtype02$
"TensorArrayV2Stack/TensorListStackЂ
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2њ
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	ђ@*
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЮ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*#
_output_shapes
:ђf@2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ђ?2	
runtimed
IdentityIdentitystrided_slice_2:output:0*
T0*
_output_shapes
:	ђ@2

Identityc

Identity_1Identitytranspose_1:y:0*
T0*#
_output_shapes
:ђf@2

Identity_1^

Identity_2Identitywhile:output:4*
T0*
_output_shapes
:	ђ@2

Identity_2^

Identity_3Identitywhile:output:5*
T0*
_output_shapes
:	ђ@2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*U
_input_shapesD
B:ђf:	ђ@:	ђ@:	ђ:	@ђ:ђ*=
api_implements+)lstm_2b7b0801-3979-4fdb-bb76-cb9bf7d17a22*
api_preferred_deviceCPU*
go_backwards( *

time_major( :K G
#
_output_shapes
:ђf
 
_user_specified_nameinputs:GC

_output_shapes
:	ђ@
 
_user_specified_nameinit_h:GC

_output_shapes
:	ђ@
 
_user_specified_nameinit_c:GC

_output_shapes
:	ђ
 
_user_specified_namekernel:QM

_output_shapes
:	@ђ
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:ђ

_user_specified_namebias
н
§
?__inference_lstm_layer_call_and_return_conditional_losses_21955

inputs
inputs_1

lstm_21942

lstm_21944

lstm_21946
dense_21949
dense_21951
identityѕбdense/StatefulPartitionedCallбlstm/StatefulPartitionedCallЃ
lstm/StatefulPartitionedCallStatefulPartitionedCallinputs
lstm_21942
lstm_21944
lstm_21946*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:	ђ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *H
fCRA
?__inference_lstm_layer_call_and_return_conditional_losses_214212
lstm/StatefulPartitionedCallЎ
dense/StatefulPartitionedCallStatefulPartitionedCall%lstm/StatefulPartitionedCall:output:0dense_21949dense_21951*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:	ђ
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_219002
dense/StatefulPartitionedCall▒
IdentityIdentity&dense/StatefulPartitionedCall:output:0^dense/StatefulPartitionedCall^lstm/StatefulPartitionedCall*
T0*
_output_shapes
:	ђ
2

Identity"
identityIdentity:output:0*E
_input_shapes4
2:ђf:ђf:::::2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2<
lstm/StatefulPartitionedCalllstm/StatefulPartitionedCall:K G
#
_output_shapes
:ђf
 
_user_specified_nameinputs:KG
#
_output_shapes
:ђf
 
_user_specified_nameinputs
Р
╝
while_cond_21498
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice3
/while_while_cond_21498___redundant_placeholder03
/while_while_cond_21498___redundant_placeholder13
/while_while_cond_21498___redundant_placeholder23
/while_while_cond_21498___redundant_placeholder3
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*C
_input_shapes2
0: : : : :	ђ@:	ђ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	ђ@:%!

_output_shapes
:	ђ@:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
є9
│

__inference__traced_save_24868
file_prefix+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop4
0savev2_lstm_lstm_cell_kernel_read_readvariableop>
:savev2_lstm_lstm_cell_recurrent_kernel_read_readvariableop2
.savev2_lstm_lstm_cell_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop2
.savev2_adam_dense_kernel_m_read_readvariableop0
,savev2_adam_dense_bias_m_read_readvariableop;
7savev2_adam_lstm_lstm_cell_kernel_m_read_readvariableopE
Asavev2_adam_lstm_lstm_cell_recurrent_kernel_m_read_readvariableop9
5savev2_adam_lstm_lstm_cell_bias_m_read_readvariableop2
.savev2_adam_dense_kernel_v_read_readvariableop0
,savev2_adam_dense_bias_v_read_readvariableop;
7savev2_adam_lstm_lstm_cell_kernel_v_read_readvariableopE
Asavev2_adam_lstm_lstm_cell_recurrent_kernel_v_read_readvariableop9
5savev2_adam_lstm_lstm_cell_bias_v_read_readvariableop
savev2_const

identity_1ѕбMergeV2CheckpointsЈ
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1І
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shardд
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilenameѓ
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*ћ
valueіBЄB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names║
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*E
value<B:B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices║

SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop0savev2_lstm_lstm_cell_kernel_read_readvariableop:savev2_lstm_lstm_cell_recurrent_kernel_read_readvariableop.savev2_lstm_lstm_cell_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop.savev2_adam_dense_kernel_m_read_readvariableop,savev2_adam_dense_bias_m_read_readvariableop7savev2_adam_lstm_lstm_cell_kernel_m_read_readvariableopAsavev2_adam_lstm_lstm_cell_recurrent_kernel_m_read_readvariableop5savev2_adam_lstm_lstm_cell_bias_m_read_readvariableop.savev2_adam_dense_kernel_v_read_readvariableop,savev2_adam_dense_bias_v_read_readvariableop7savev2_adam_lstm_lstm_cell_kernel_v_read_readvariableopAsavev2_adam_lstm_lstm_cell_recurrent_kernel_v_read_readvariableop5savev2_adam_lstm_lstm_cell_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *'
dtypes
2	2
SaveV2║
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixesА
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*▓
_input_shapesа
Ю: :@
:
: : : : : :	ђ:	@ђ:ђ: : : : :@
:
:	ђ:	@ђ:ђ:@
:
:	ђ:	@ђ:ђ: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:@
: 

_output_shapes
:
:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	ђ:%	!

_output_shapes
:	@ђ:!


_output_shapes	
:ђ:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:@
: 

_output_shapes
:
:%!

_output_shapes
:	ђ:%!

_output_shapes
:	@ђ:!

_output_shapes	
:ђ:$ 

_output_shapes

:@
: 

_output_shapes
:
:%!

_output_shapes
:	ђ:%!

_output_shapes
:	@ђ:!

_output_shapes	
:ђ:

_output_shapes
: 
Ыр
и
9__inference___backward_gpu_lstm_with_fallback_22736_22911
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4A
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_17
3gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_2=
9gradients_transpose_grad_invertpermutation_transpose_perm-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5ѕm
gradients/grad_ys_0Identityplaceholder*
T0*
_output_shapes
:	ђ@2
gradients/grad_ys_0s
gradients/grad_ys_1Identityplaceholder_1*
T0*#
_output_shapes
:ђf@2
gradients/grad_ys_1o
gradients/grad_ys_2Identityplaceholder_2*
T0*
_output_shapes
:	ђ@2
gradients/grad_ys_2o
gradients/grad_ys_3Identityplaceholder_3*
T0*
_output_shapes
:	ђ@2
gradients/grad_ys_3f
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: 2
gradients/grad_ys_4Ю
"gradients/strided_slice_grad/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"f   ђ   @   2$
"gradients/strided_slice_grad/Shape┐
3gradients/strided_slice_grad/StridedSliceGrad/shapeConst*
_output_shapes
:*
dtype0*!
valueB"f   ђ   @   25
3gradients/strided_slice_grad/StridedSliceGrad/shapeй
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
         25
3gradients/strided_slice_grad/StridedSliceGrad/begin░
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 23
1gradients/strided_slice_grad/StridedSliceGrad/endИ
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:27
5gradients/strided_slice_grad/StridedSliceGrad/strides█
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad<gradients/strided_slice_grad/StridedSliceGrad/shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*#
_output_shapes
:fђ@*
shrink_axis_mask2/
-gradients/strided_slice_grad/StridedSliceGrad╠
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:2.
,gradients/transpose_9_grad/InvertPermutationО
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*#
_output_shapes
:fђ@2&
$gradients/transpose_9_grad/transposeЉ
gradients/Squeeze_grad/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"   ђ   @   2
gradients/Squeeze_grad/ShapeЙ
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*#
_output_shapes
:ђ@2 
gradients/Squeeze_grad/ReshapeЋ
gradients/Squeeze_1_grad/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"   ђ   @   2 
gradients/Squeeze_1_grad/Shape─
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*#
_output_shapes
:ђ@2"
 gradients/Squeeze_1_grad/ReshapeЃ
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*#
_output_shapes
:fђ@2
gradients/AddN{
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:2
gradients/zeros_likeх
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_11gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn3gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_13gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_2gradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*I
_output_shapes7
5:fђ:ђ@:ђ@:ђє2*
(gradients/CudnnRNN_grad/CudnnRNNBackprop─
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:2,
*gradients/transpose_grad/InvertPermutationЬ
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*#
_output_shapes
:ђf2$
"gradients/transpose_grad/transposeЊ
gradients/ExpandDims_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"ђ   @   2!
gradients/ExpandDims_grad/ShapeР
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*
_output_shapes
:	ђ@2#
!gradients/ExpandDims_grad/ReshapeЌ
!gradients/ExpandDims_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"ђ   @   2#
!gradients/ExpandDims_1_grad/ShapeУ
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*
_output_shapes
:	ђ@2%
#gradients/ExpandDims_1_grad/Reshape~
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_1_grad/Rank╣
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_1_grad/modѕ
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2
gradients/concat_1_grad/Shapeї
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/concat_1_grad/Shape_1ї
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/concat_1_grad/Shape_2ї
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/concat_1_grad/Shape_3Ї
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:ђ 2!
gradients/concat_1_grad/Shape_4Ї
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:ђ 2!
gradients/concat_1_grad/Shape_5Ї
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:ђ 2!
gradients/concat_1_grad/Shape_6Ї
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:ђ 2!
gradients/concat_1_grad/Shape_7ї
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/concat_1_grad/Shape_8ї
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/concat_1_grad/Shape_9ј
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gradients/concat_1_grad/Shape_10ј
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gradients/concat_1_grad/Shape_11ј
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gradients/concat_1_grad/Shape_12ј
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gradients/concat_1_grad/Shape_13ј
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gradients/concat_1_grad/Shape_14ј
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gradients/concat_1_grad/Shape_15а
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::2&
$gradients/concat_1_grad/ConcatOffsetї
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes
:@2
gradients/concat_1_grad/Sliceњ
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes
:@2!
gradients/concat_1_grad/Slice_1њ
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes
:@2!
gradients/concat_1_grad/Slice_2њ
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes
:@2!
gradients/concat_1_grad/Slice_3Њ
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:ђ 2!
gradients/concat_1_grad/Slice_4Њ
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:ђ 2!
gradients/concat_1_grad/Slice_5Њ
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
:ђ 2!
gradients/concat_1_grad/Slice_6Њ
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
:ђ 2!
gradients/concat_1_grad/Slice_7њ
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:@2!
gradients/concat_1_grad/Slice_8њ
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:@2!
gradients/concat_1_grad/Slice_9ќ
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:@2"
 gradients/concat_1_grad/Slice_10ќ
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:@2"
 gradients/concat_1_grad/Slice_11ќ
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
:@2"
 gradients/concat_1_grad/Slice_12ќ
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
:@2"
 gradients/concat_1_grad/Slice_13ќ
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
:@2"
 gradients/concat_1_grad/Slice_14ќ
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
:@2"
 gradients/concat_1_grad/Slice_15Ї
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@      2
gradients/Reshape_grad/Shape├
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes

:@2 
gradients/Reshape_grad/ReshapeЉ
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@      2 
gradients/Reshape_1_grad/Shape╦
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:@2"
 gradients/Reshape_1_grad/ReshapeЉ
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@      2 
gradients/Reshape_2_grad/Shape╦
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:@2"
 gradients/Reshape_2_grad/ReshapeЉ
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@      2 
gradients/Reshape_3_grad/Shape╦
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:@2"
 gradients/Reshape_3_grad/ReshapeЉ
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   2 
gradients/Reshape_4_grad/Shape╦
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:@@2"
 gradients/Reshape_4_grad/ReshapeЉ
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   2 
gradients/Reshape_5_grad/Shape╦
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:@@2"
 gradients/Reshape_5_grad/ReshapeЉ
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   2 
gradients/Reshape_6_grad/Shape╦
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:@@2"
 gradients/Reshape_6_grad/ReshapeЉ
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   2 
gradients/Reshape_7_grad/Shape╦
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:@@2"
 gradients/Reshape_7_grad/Reshapeі
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2 
gradients/Reshape_8_grad/ShapeК
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:@2"
 gradients/Reshape_8_grad/Reshapeі
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2 
gradients/Reshape_9_grad/ShapeК
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:@2"
 gradients/Reshape_9_grad/Reshapeї
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/Reshape_10_grad/Shape╦
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:@2#
!gradients/Reshape_10_grad/Reshapeї
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/Reshape_11_grad/Shape╦
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:@2#
!gradients/Reshape_11_grad/Reshapeї
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/Reshape_12_grad/Shape╦
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:@2#
!gradients/Reshape_12_grad/Reshapeї
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/Reshape_13_grad/Shape╦
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
:@2#
!gradients/Reshape_13_grad/Reshapeї
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/Reshape_14_grad/Shape╦
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
:@2#
!gradients/Reshape_14_grad/Reshapeї
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/Reshape_15_grad/Shape╦
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
:@2#
!gradients/Reshape_15_grad/Reshape╠
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:2.
,gradients/transpose_1_grad/InvertPermutationП
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@2&
$gradients/transpose_1_grad/transpose╠
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:2.
,gradients/transpose_2_grad/InvertPermutation▀
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@2&
$gradients/transpose_2_grad/transpose╠
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:2.
,gradients/transpose_3_grad/InvertPermutation▀
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@2&
$gradients/transpose_3_grad/transpose╠
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:2.
,gradients/transpose_4_grad/InvertPermutation▀
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@2&
$gradients/transpose_4_grad/transpose╠
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:2.
,gradients/transpose_5_grad/InvertPermutation▀
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@2&
$gradients/transpose_5_grad/transpose╠
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:2.
,gradients/transpose_6_grad/InvertPermutation▀
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@2&
$gradients/transpose_6_grad/transpose╠
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:2.
,gradients/transpose_7_grad/InvertPermutation▀
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@2&
$gradients/transpose_7_grad/transpose╠
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:2.
,gradients/transpose_8_grad/InvertPermutation▀
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@2&
$gradients/transpose_8_grad/transposeѕ
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:ђ2
gradients/split_2_grad/concat╬
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	ђ2
gradients/split_grad/concatо
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	@ђ2
gradients/split_1_grad/concatz
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_grad/Rank»
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_grad/modЁ
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ђ2
gradients/concat_grad/ShapeЅ
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:ђ2
gradients/concat_grad/Shape_1­
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::2$
"gradients/concat_grad/ConcatOffsetы
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:ђ2
gradients/concat_grad/Sliceэ
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:ђ2
gradients/concat_grad/Slice_1v
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*#
_output_shapes
:ђf2

Identityz

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*
_output_shapes
:	ђ@2

Identity_1|

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*
_output_shapes
:	ђ@2

Identity_2t

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	ђ2

Identity_3v

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	@ђ2

Identity_4r

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:ђ2

Identity_5"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*з
_input_shapesр
я:	ђ@:ђf@:	ђ@:	ђ@: :::fђ:ђ@:ђ@:ђє:fђ@:ђ@:ђ@:: ::::::::: : : : *=
api_implements+)lstm_277f58ef-eeec-44e1-b8f6-addb996e41ea*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_lstm_with_fallback_22910*
go_backwards( *

time_major( :% !

_output_shapes
:	ђ@:)%
#
_output_shapes
:ђf@:%!

_output_shapes
:	ђ@:%!

_output_shapes
:	ђ@:

_output_shapes
: : 

_output_shapes
::

_output_shapes
::)%
#
_output_shapes
:fђ:)%
#
_output_shapes
:ђ@:)	%
#
_output_shapes
:ђ@:"


_output_shapes

:ђє:)%
#
_output_shapes
:fђ@:)%
#
_output_shapes
:ђ@:)%
#
_output_shapes
:ђ@: 

_output_shapes
::

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
љV
Б
&__forward_gpu_lstm_with_fallback_20966

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
cudnnrnn
transpose_9_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisѕu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permO
transpose_0	Transposeinputstranspose/perm:output:0*
T02
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:         @2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dimЁ
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:         @2
ExpandDims_1P
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimЉ
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:@:@:@:@*
	num_split2
splitT
Const_1Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimА
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:@@:@@:@@:@@*
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:ђ*
dtype0*
valueBђ*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis|
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:ђ2
concatT
Const_2Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_2h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dimе
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:@:@:@:@:@:@:@:@*
	num_split2	
split_2e
Const_3Const*
_output_shapes
:*
dtype0*
valueB:
         2	
Const_3u
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm{
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:@2
transpose_1e
ReshapeReshapetranspose_1:y:0Const_3:output:0*
T0*
_output_shapes
:@2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:@2
transpose_2i
	Reshape_1Reshapetranspose_2:y:0Const_3:output:0*
T0*
_output_shapes
:@2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:@2
transpose_3i
	Reshape_2Reshapetranspose_3:y:0Const_3:output:0*
T0*
_output_shapes
:@2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm{
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:@2
transpose_4i
	Reshape_3Reshapetranspose_4:y:0Const_3:output:0*
T0*
_output_shapes
:@2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:@@2
transpose_5j
	Reshape_4Reshapetranspose_5:y:0Const_3:output:0*
T0*
_output_shapes	
:ђ 2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:@@2
transpose_6j
	Reshape_5Reshapetranspose_6:y:0Const_3:output:0*
T0*
_output_shapes	
:ђ 2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm}
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:@@2
transpose_7j
	Reshape_6Reshapetranspose_7:y:0Const_3:output:0*
T0*
_output_shapes	
:ђ 2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm}
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:@@2
transpose_8j
	Reshape_7Reshapetranspose_8:y:0Const_3:output:0*
T0*
_output_shapes	
:ђ 2
	Reshape_7j
	Reshape_8Reshapesplit_2:output:0Const_3:output:0*
T0*
_output_shapes
:@2
	Reshape_8j
	Reshape_9Reshapesplit_2:output:1Const_3:output:0*
T0*
_output_shapes
:@2
	Reshape_9l

Reshape_10Reshapesplit_2:output:2Const_3:output:0*
T0*
_output_shapes
:@2

Reshape_10l

Reshape_11Reshapesplit_2:output:3Const_3:output:0*
T0*
_output_shapes
:@2

Reshape_11l

Reshape_12Reshapesplit_2:output:4Const_3:output:0*
T0*
_output_shapes
:@2

Reshape_12l

Reshape_13Reshapesplit_2:output:5Const_3:output:0*
T0*
_output_shapes
:@2

Reshape_13l

Reshape_14Reshapesplit_2:output:6Const_3:output:0*
T0*
_output_shapes
:@2

Reshape_14l

Reshape_15Reshapesplit_2:output:7Const_3:output:0*
T0*
_output_shapes
:@2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axisљ

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T02

concat_1с
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*f
_output_shapesT
R:                  @:         @:         @:2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2Ш
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         @*
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/permћ
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*4
_output_shapes"
 :                  @2
transpose_9{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:         @*
squeeze_dims
 2	
Squeeze
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:         @*
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimej
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:         @2

Identityt

Identity_1Identitytranspose_9:y:0*
T0*4
_output_shapes"
 :                  @2

Identity_1h

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:         @2

Identity_2j

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:         @2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0*v
_input_shapese
c:                  :         @:         @:	ђ:	@ђ:ђ*=
api_implements+)lstm_d14c1f77-7846-415f-a0e1-e7ae7d0beb0c*
api_preferred_deviceGPU*U
backward_function_name;9__inference___backward_gpu_lstm_with_fallback_20791_20967*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs:OK
'
_output_shapes
:         @
 
_user_specified_nameinit_h:OK
'
_output_shapes
:         @
 
_user_specified_nameinit_c:GC

_output_shapes
:	ђ
 
_user_specified_namekernel:QM

_output_shapes
:	@ђ
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:ђ

_user_specified_namebias
Б-
╬
while_body_23469
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_bias├
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeМ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemб
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:         ђ2
while/MatMulЋ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:         ђ2
while/MatMul_1ё
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:         ђ2
	while/addЂ
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:         ђ2
while/BiasAdd\
while/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/Constp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dimО
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*`
_output_shapesN
L:         @:         @:         @:         @*
	num_split2
while/splitq
while/SigmoidSigmoidwhile/split:output:0*
T0*'
_output_shapes
:         @2
while/Sigmoidu
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*'
_output_shapes
:         @2
while/Sigmoid_1y
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         @2
	while/mulh

while/TanhTanhwhile/split:output:2*
T0*'
_output_shapes
:         @2

while/Tanhv
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*'
_output_shapes
:         @2
while/mul_1u
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*'
_output_shapes
:         @2
while/add_1u
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*'
_output_shapes
:         @2
while/Sigmoid_2g
while/Tanh_1Tanhwhile/add_1:z:0*
T0*'
_output_shapes
:         @2
while/Tanh_1z
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*'
_output_shapes
:         @2
while/mul_2М
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem`
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_2/yo
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: 2
while/add_2`
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_3/yv
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: 2
while/add_3^
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: 2
while/Identityq
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: 2
while/Identity_1b
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: 2
while/Identity_2Ї
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: 2
while/Identity_3s
while/Identity_4Identitywhile/mul_2:z:0*
T0*'
_output_shapes
:         @2
while/Identity_4s
while/Identity_5Identitywhile/add_1:z:0*
T0*'
_output_shapes
:         @2
while/Identity_5"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*b
_input_shapesQ
O: : : : :         @:         @: : :	ђ:	@ђ:ђ: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         @:-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	ђ:%	!

_output_shapes
:	@ђ:!


_output_shapes	
:ђ
ц?
┐
__inference_standard_lstm_24456

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permr
	transpose	Transposeinputstranspose/perm:output:0*
T0*#
_output_shapes
:fђ2
	transposec
ShapeConst*
_output_shapes
:*
dtype0*!
valueB"f   ђ      2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2Р
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceЁ
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         2
TensorArrayV2/element_shape░
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2┐
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ђ      27
5TensorArrayUnstack/TensorListFromTensor/element_shapeЭ
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2З
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	ђ*
shrink_axis_mask2
strided_slice_1g
MatMulMatMulstrided_slice_1:output:0kernel*
T0* 
_output_shapes
:
ђђ2
MatMulc
MatMul_1MatMulinit_hrecurrent_kernel*
T0* 
_output_shapes
:
ђђ2

MatMul_1d
addAddV2MatMul:product:0MatMul_1:product:0*
T0* 
_output_shapes
:
ђђ2
addW
BiasAddBiasAddadd:z:0bias*
T0* 
_output_shapes
:
ђђ2	
BiasAddP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimЪ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*@
_output_shapes.
,:	ђ@:	ђ@:	ђ@:	ђ@*
	num_split2
splitW
SigmoidSigmoidsplit:output:0*
T0*
_output_shapes
:	ђ@2	
Sigmoid[
	Sigmoid_1Sigmoidsplit:output:1*
T0*
_output_shapes
:	ђ@2
	Sigmoid_1R
mulMulSigmoid_1:y:0init_c*
T0*
_output_shapes
:	ђ@2
mulN
TanhTanhsplit:output:2*
T0*
_output_shapes
:	ђ@2
TanhV
mul_1MulSigmoid:y:0Tanh:y:0*
T0*
_output_shapes
:	ђ@2
mul_1U
add_1AddV2mul:z:0	mul_1:z:0*
T0*
_output_shapes
:	ђ@2
add_1[
	Sigmoid_2Sigmoidsplit:output:3*
T0*
_output_shapes
:	ђ@2
	Sigmoid_2M
Tanh_1Tanh	add_1:z:0*
T0*
_output_shapes
:	ђ@2
Tanh_1Z
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*
_output_shapes
:	ђ@2
mul_2Ј
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ђ   @   2
TensorArrayV2_1/element_shapeХ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterђ
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*S
_output_shapesA
?: : : : :	ђ@:	ђ@: : :	ђ:	@ђ:ђ* 
_read_only_resource_inputs
 *
bodyR
while_body_24370*
condR
while_cond_24369*R
output_shapesA
?: : : : :	ђ@:	ђ@: : :	ђ:	@ђ:ђ*
parallel_iterations 2
whileх
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ђ   @   22
0TensorArrayV2Stack/TensorListStack/element_shapeЯ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*#
_output_shapes
:fђ@*
element_dtype02$
"TensorArrayV2Stack/TensorListStackЂ
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2њ
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	ђ@*
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЮ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*#
_output_shapes
:ђf@2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ђ?2	
runtimed
IdentityIdentitystrided_slice_2:output:0*
T0*
_output_shapes
:	ђ@2

Identityc

Identity_1Identitytranspose_1:y:0*
T0*#
_output_shapes
:ђf@2

Identity_1^

Identity_2Identitywhile:output:4*
T0*
_output_shapes
:	ђ@2

Identity_2^

Identity_3Identitywhile:output:5*
T0*
_output_shapes
:	ђ@2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*U
_input_shapesD
B:ђf:	ђ@:	ђ@:	ђ:	@ђ:ђ*=
api_implements+)lstm_8f282312-5714-4ae2-bf31-6bbfff406048*
api_preferred_deviceCPU*
go_backwards( *

time_major( :K G
#
_output_shapes
:ђf
 
_user_specified_nameinputs:GC

_output_shapes
:	ђ@
 
_user_specified_nameinit_h:GC

_output_shapes
:	ђ@
 
_user_specified_nameinit_c:GC

_output_shapes
:	ђ
 
_user_specified_namekernel:QM

_output_shapes
:	@ђ
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:ђ

_user_specified_namebias
тH
╦
(__inference_gpu_lstm_with_fallback_21682

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4ѕu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permr
	transpose	Transposeinputstranspose/perm:output:0*
T0*#
_output_shapes
:fђ2
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dimu

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*#
_output_shapes
:ђ@2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dim{
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*#
_output_shapes
:ђ@2
ExpandDims_1P
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimЉ
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:@:@:@:@*
	num_split2
splitT
Const_1Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimА
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:@@:@@:@@:@@*
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:ђ*
dtype0*
valueBђ*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis|
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:ђ2
concatT
Const_2Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_2h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dimе
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:@:@:@:@:@:@:@:@*
	num_split2	
split_2e
Const_3Const*
_output_shapes
:*
dtype0*
valueB:
         2	
Const_3u
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm{
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:@2
transpose_1e
ReshapeReshapetranspose_1:y:0Const_3:output:0*
T0*
_output_shapes
:@2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:@2
transpose_2i
	Reshape_1Reshapetranspose_2:y:0Const_3:output:0*
T0*
_output_shapes
:@2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:@2
transpose_3i
	Reshape_2Reshapetranspose_3:y:0Const_3:output:0*
T0*
_output_shapes
:@2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm{
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:@2
transpose_4i
	Reshape_3Reshapetranspose_4:y:0Const_3:output:0*
T0*
_output_shapes
:@2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:@@2
transpose_5j
	Reshape_4Reshapetranspose_5:y:0Const_3:output:0*
T0*
_output_shapes	
:ђ 2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:@@2
transpose_6j
	Reshape_5Reshapetranspose_6:y:0Const_3:output:0*
T0*
_output_shapes	
:ђ 2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm}
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:@@2
transpose_7j
	Reshape_6Reshapetranspose_7:y:0Const_3:output:0*
T0*
_output_shapes	
:ђ 2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm}
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:@@2
transpose_8j
	Reshape_7Reshapetranspose_8:y:0Const_3:output:0*
T0*
_output_shapes	
:ђ 2
	Reshape_7j
	Reshape_8Reshapesplit_2:output:0Const_3:output:0*
T0*
_output_shapes
:@2
	Reshape_8j
	Reshape_9Reshapesplit_2:output:1Const_3:output:0*
T0*
_output_shapes
:@2
	Reshape_9l

Reshape_10Reshapesplit_2:output:2Const_3:output:0*
T0*
_output_shapes
:@2

Reshape_10l

Reshape_11Reshapesplit_2:output:3Const_3:output:0*
T0*
_output_shapes
:@2

Reshape_11l

Reshape_12Reshapesplit_2:output:4Const_3:output:0*
T0*
_output_shapes
:@2

Reshape_12l

Reshape_13Reshapesplit_2:output:5Const_3:output:0*
T0*
_output_shapes
:@2

Reshape_13l

Reshape_14Reshapesplit_2:output:6Const_3:output:0*
T0*
_output_shapes
:@2

Reshape_14l

Reshape_15Reshapesplit_2:output:7Const_3:output:0*
T0*
_output_shapes
:@2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axisг
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:ђє2

concat_1Й
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*E
_output_shapes3
1:fђ@:ђ@:ђ@:2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2Ь
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	ђ@*
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/permЃ
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*#
_output_shapes
:ђf@2
transpose_9s
SqueezeSqueezeCudnnRNN:output_h:0*
T0*
_output_shapes
:	ђ@*
squeeze_dims
 2	
Squeezew
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*
_output_shapes
:	ђ@*
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimeb
IdentityIdentitystrided_slice:output:0*
T0*
_output_shapes
:	ђ@2

Identityc

Identity_1Identitytranspose_9:y:0*
T0*#
_output_shapes
:ђf@2

Identity_1`

Identity_2IdentitySqueeze:output:0*
T0*
_output_shapes
:	ђ@2

Identity_2b

Identity_3IdentitySqueeze_1:output:0*
T0*
_output_shapes
:	ђ@2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*U
_input_shapesD
B:ђf:	ђ@:	ђ@:	ђ:	@ђ:ђ*=
api_implements+)lstm_0093f45e-1073-4167-8d7b-88c523642bab*
api_preferred_deviceGPU*
go_backwards( *

time_major( :K G
#
_output_shapes
:ђf
 
_user_specified_nameinputs:GC

_output_shapes
:	ђ@
 
_user_specified_nameinit_h:GC

_output_shapes
:	ђ@
 
_user_specified_nameinit_c:GC

_output_shapes
:	ђ
 
_user_specified_namekernel:QM

_output_shapes
:	@ђ
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:ђ

_user_specified_namebias
Р
╝
while_cond_22551
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice3
/while_while_cond_22551___redundant_placeholder03
/while_while_cond_22551___redundant_placeholder13
/while_while_cond_22551___redundant_placeholder23
/while_while_cond_22551___redundant_placeholder3
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*C
_input_shapes2
0: : : : :	ђ@:	ђ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	ђ@:%!

_output_shapes
:	ђ@:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
Ыр
и
9__inference___backward_gpu_lstm_with_fallback_21683_21858
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4A
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_17
3gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_2=
9gradients_transpose_grad_invertpermutation_transpose_perm-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5ѕm
gradients/grad_ys_0Identityplaceholder*
T0*
_output_shapes
:	ђ@2
gradients/grad_ys_0s
gradients/grad_ys_1Identityplaceholder_1*
T0*#
_output_shapes
:ђf@2
gradients/grad_ys_1o
gradients/grad_ys_2Identityplaceholder_2*
T0*
_output_shapes
:	ђ@2
gradients/grad_ys_2o
gradients/grad_ys_3Identityplaceholder_3*
T0*
_output_shapes
:	ђ@2
gradients/grad_ys_3f
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: 2
gradients/grad_ys_4Ю
"gradients/strided_slice_grad/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"f   ђ   @   2$
"gradients/strided_slice_grad/Shape┐
3gradients/strided_slice_grad/StridedSliceGrad/shapeConst*
_output_shapes
:*
dtype0*!
valueB"f   ђ   @   25
3gradients/strided_slice_grad/StridedSliceGrad/shapeй
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
         25
3gradients/strided_slice_grad/StridedSliceGrad/begin░
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 23
1gradients/strided_slice_grad/StridedSliceGrad/endИ
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:27
5gradients/strided_slice_grad/StridedSliceGrad/strides█
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad<gradients/strided_slice_grad/StridedSliceGrad/shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*#
_output_shapes
:fђ@*
shrink_axis_mask2/
-gradients/strided_slice_grad/StridedSliceGrad╠
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:2.
,gradients/transpose_9_grad/InvertPermutationО
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*#
_output_shapes
:fђ@2&
$gradients/transpose_9_grad/transposeЉ
gradients/Squeeze_grad/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"   ђ   @   2
gradients/Squeeze_grad/ShapeЙ
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*#
_output_shapes
:ђ@2 
gradients/Squeeze_grad/ReshapeЋ
gradients/Squeeze_1_grad/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"   ђ   @   2 
gradients/Squeeze_1_grad/Shape─
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*#
_output_shapes
:ђ@2"
 gradients/Squeeze_1_grad/ReshapeЃ
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*#
_output_shapes
:fђ@2
gradients/AddN{
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:2
gradients/zeros_likeх
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_11gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn3gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_13gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_2gradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*I
_output_shapes7
5:fђ:ђ@:ђ@:ђє2*
(gradients/CudnnRNN_grad/CudnnRNNBackprop─
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:2,
*gradients/transpose_grad/InvertPermutationЬ
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*#
_output_shapes
:ђf2$
"gradients/transpose_grad/transposeЊ
gradients/ExpandDims_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"ђ   @   2!
gradients/ExpandDims_grad/ShapeР
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*
_output_shapes
:	ђ@2#
!gradients/ExpandDims_grad/ReshapeЌ
!gradients/ExpandDims_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"ђ   @   2#
!gradients/ExpandDims_1_grad/ShapeУ
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*
_output_shapes
:	ђ@2%
#gradients/ExpandDims_1_grad/Reshape~
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_1_grad/Rank╣
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_1_grad/modѕ
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2
gradients/concat_1_grad/Shapeї
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/concat_1_grad/Shape_1ї
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/concat_1_grad/Shape_2ї
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/concat_1_grad/Shape_3Ї
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:ђ 2!
gradients/concat_1_grad/Shape_4Ї
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:ђ 2!
gradients/concat_1_grad/Shape_5Ї
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:ђ 2!
gradients/concat_1_grad/Shape_6Ї
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:ђ 2!
gradients/concat_1_grad/Shape_7ї
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/concat_1_grad/Shape_8ї
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/concat_1_grad/Shape_9ј
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gradients/concat_1_grad/Shape_10ј
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gradients/concat_1_grad/Shape_11ј
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gradients/concat_1_grad/Shape_12ј
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gradients/concat_1_grad/Shape_13ј
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gradients/concat_1_grad/Shape_14ј
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gradients/concat_1_grad/Shape_15а
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::2&
$gradients/concat_1_grad/ConcatOffsetї
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes
:@2
gradients/concat_1_grad/Sliceњ
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes
:@2!
gradients/concat_1_grad/Slice_1њ
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes
:@2!
gradients/concat_1_grad/Slice_2њ
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes
:@2!
gradients/concat_1_grad/Slice_3Њ
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:ђ 2!
gradients/concat_1_grad/Slice_4Њ
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:ђ 2!
gradients/concat_1_grad/Slice_5Њ
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
:ђ 2!
gradients/concat_1_grad/Slice_6Њ
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
:ђ 2!
gradients/concat_1_grad/Slice_7њ
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:@2!
gradients/concat_1_grad/Slice_8њ
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:@2!
gradients/concat_1_grad/Slice_9ќ
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:@2"
 gradients/concat_1_grad/Slice_10ќ
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:@2"
 gradients/concat_1_grad/Slice_11ќ
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
:@2"
 gradients/concat_1_grad/Slice_12ќ
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
:@2"
 gradients/concat_1_grad/Slice_13ќ
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
:@2"
 gradients/concat_1_grad/Slice_14ќ
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
:@2"
 gradients/concat_1_grad/Slice_15Ї
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@      2
gradients/Reshape_grad/Shape├
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes

:@2 
gradients/Reshape_grad/ReshapeЉ
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@      2 
gradients/Reshape_1_grad/Shape╦
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:@2"
 gradients/Reshape_1_grad/ReshapeЉ
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@      2 
gradients/Reshape_2_grad/Shape╦
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:@2"
 gradients/Reshape_2_grad/ReshapeЉ
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@      2 
gradients/Reshape_3_grad/Shape╦
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:@2"
 gradients/Reshape_3_grad/ReshapeЉ
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   2 
gradients/Reshape_4_grad/Shape╦
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:@@2"
 gradients/Reshape_4_grad/ReshapeЉ
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   2 
gradients/Reshape_5_grad/Shape╦
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:@@2"
 gradients/Reshape_5_grad/ReshapeЉ
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   2 
gradients/Reshape_6_grad/Shape╦
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:@@2"
 gradients/Reshape_6_grad/ReshapeЉ
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   2 
gradients/Reshape_7_grad/Shape╦
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:@@2"
 gradients/Reshape_7_grad/Reshapeі
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2 
gradients/Reshape_8_grad/ShapeК
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:@2"
 gradients/Reshape_8_grad/Reshapeі
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2 
gradients/Reshape_9_grad/ShapeК
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:@2"
 gradients/Reshape_9_grad/Reshapeї
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/Reshape_10_grad/Shape╦
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:@2#
!gradients/Reshape_10_grad/Reshapeї
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/Reshape_11_grad/Shape╦
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:@2#
!gradients/Reshape_11_grad/Reshapeї
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/Reshape_12_grad/Shape╦
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:@2#
!gradients/Reshape_12_grad/Reshapeї
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/Reshape_13_grad/Shape╦
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
:@2#
!gradients/Reshape_13_grad/Reshapeї
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/Reshape_14_grad/Shape╦
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
:@2#
!gradients/Reshape_14_grad/Reshapeї
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/Reshape_15_grad/Shape╦
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
:@2#
!gradients/Reshape_15_grad/Reshape╠
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:2.
,gradients/transpose_1_grad/InvertPermutationП
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@2&
$gradients/transpose_1_grad/transpose╠
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:2.
,gradients/transpose_2_grad/InvertPermutation▀
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@2&
$gradients/transpose_2_grad/transpose╠
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:2.
,gradients/transpose_3_grad/InvertPermutation▀
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@2&
$gradients/transpose_3_grad/transpose╠
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:2.
,gradients/transpose_4_grad/InvertPermutation▀
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@2&
$gradients/transpose_4_grad/transpose╠
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:2.
,gradients/transpose_5_grad/InvertPermutation▀
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@2&
$gradients/transpose_5_grad/transpose╠
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:2.
,gradients/transpose_6_grad/InvertPermutation▀
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@2&
$gradients/transpose_6_grad/transpose╠
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:2.
,gradients/transpose_7_grad/InvertPermutation▀
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@2&
$gradients/transpose_7_grad/transpose╠
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:2.
,gradients/transpose_8_grad/InvertPermutation▀
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@2&
$gradients/transpose_8_grad/transposeѕ
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:ђ2
gradients/split_2_grad/concat╬
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	ђ2
gradients/split_grad/concatо
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	@ђ2
gradients/split_1_grad/concatz
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_grad/Rank»
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_grad/modЁ
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ђ2
gradients/concat_grad/ShapeЅ
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:ђ2
gradients/concat_grad/Shape_1­
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::2$
"gradients/concat_grad/ConcatOffsetы
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:ђ2
gradients/concat_grad/Sliceэ
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:ђ2
gradients/concat_grad/Slice_1v
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*#
_output_shapes
:ђf2

Identityz

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*
_output_shapes
:	ђ@2

Identity_1|

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*
_output_shapes
:	ђ@2

Identity_2t

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	ђ2

Identity_3v

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	@ђ2

Identity_4r

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:ђ2

Identity_5"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*з
_input_shapesр
я:	ђ@:ђf@:	ђ@:	ђ@: :::fђ:ђ@:ђ@:ђє:fђ@:ђ@:ђ@:: ::::::::: : : : *=
api_implements+)lstm_0093f45e-1073-4167-8d7b-88c523642bab*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_lstm_with_fallback_21857*
go_backwards( *

time_major( :% !

_output_shapes
:	ђ@:)%
#
_output_shapes
:ђf@:%!

_output_shapes
:	ђ@:%!

_output_shapes
:	ђ@:

_output_shapes
: : 

_output_shapes
::

_output_shapes
::)%
#
_output_shapes
:fђ:)%
#
_output_shapes
:ђ@:)	%
#
_output_shapes
:ђ@:"


_output_shapes

:ђє:)%
#
_output_shapes
:fђ@:)%
#
_output_shapes
:ђ@:)%
#
_output_shapes
:ђ@: 

_output_shapes
::

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
█
ѕ
$__inference_lstm_layer_call_fn_24742

inputs
unknown
	unknown_0
	unknown_1
identityѕбStatefulPartitionedCallЗ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:	ђ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *H
fCRA
?__inference_lstm_layer_call_and_return_conditional_losses_214212
StatefulPartitionedCallє
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*
_output_shapes
:	ђ@2

Identity"
identityIdentity:output:0*.
_input_shapes
:ђf:::22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:ђf
 
_user_specified_nameinputs
Ыр
и
9__inference___backward_gpu_lstm_with_fallback_24115_24290
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4A
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_17
3gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_2=
9gradients_transpose_grad_invertpermutation_transpose_perm-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5ѕm
gradients/grad_ys_0Identityplaceholder*
T0*
_output_shapes
:	ђ@2
gradients/grad_ys_0s
gradients/grad_ys_1Identityplaceholder_1*
T0*#
_output_shapes
:ђf@2
gradients/grad_ys_1o
gradients/grad_ys_2Identityplaceholder_2*
T0*
_output_shapes
:	ђ@2
gradients/grad_ys_2o
gradients/grad_ys_3Identityplaceholder_3*
T0*
_output_shapes
:	ђ@2
gradients/grad_ys_3f
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: 2
gradients/grad_ys_4Ю
"gradients/strided_slice_grad/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"f   ђ   @   2$
"gradients/strided_slice_grad/Shape┐
3gradients/strided_slice_grad/StridedSliceGrad/shapeConst*
_output_shapes
:*
dtype0*!
valueB"f   ђ   @   25
3gradients/strided_slice_grad/StridedSliceGrad/shapeй
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
         25
3gradients/strided_slice_grad/StridedSliceGrad/begin░
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 23
1gradients/strided_slice_grad/StridedSliceGrad/endИ
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:27
5gradients/strided_slice_grad/StridedSliceGrad/strides█
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad<gradients/strided_slice_grad/StridedSliceGrad/shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*#
_output_shapes
:fђ@*
shrink_axis_mask2/
-gradients/strided_slice_grad/StridedSliceGrad╠
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:2.
,gradients/transpose_9_grad/InvertPermutationО
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*#
_output_shapes
:fђ@2&
$gradients/transpose_9_grad/transposeЉ
gradients/Squeeze_grad/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"   ђ   @   2
gradients/Squeeze_grad/ShapeЙ
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*#
_output_shapes
:ђ@2 
gradients/Squeeze_grad/ReshapeЋ
gradients/Squeeze_1_grad/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"   ђ   @   2 
gradients/Squeeze_1_grad/Shape─
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*#
_output_shapes
:ђ@2"
 gradients/Squeeze_1_grad/ReshapeЃ
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*#
_output_shapes
:fђ@2
gradients/AddN{
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:2
gradients/zeros_likeх
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_11gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn3gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_13gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_2gradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*I
_output_shapes7
5:fђ:ђ@:ђ@:ђє2*
(gradients/CudnnRNN_grad/CudnnRNNBackprop─
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:2,
*gradients/transpose_grad/InvertPermutationЬ
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*#
_output_shapes
:ђf2$
"gradients/transpose_grad/transposeЊ
gradients/ExpandDims_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"ђ   @   2!
gradients/ExpandDims_grad/ShapeР
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*
_output_shapes
:	ђ@2#
!gradients/ExpandDims_grad/ReshapeЌ
!gradients/ExpandDims_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"ђ   @   2#
!gradients/ExpandDims_1_grad/ShapeУ
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*
_output_shapes
:	ђ@2%
#gradients/ExpandDims_1_grad/Reshape~
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_1_grad/Rank╣
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_1_grad/modѕ
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2
gradients/concat_1_grad/Shapeї
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/concat_1_grad/Shape_1ї
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/concat_1_grad/Shape_2ї
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/concat_1_grad/Shape_3Ї
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:ђ 2!
gradients/concat_1_grad/Shape_4Ї
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:ђ 2!
gradients/concat_1_grad/Shape_5Ї
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:ђ 2!
gradients/concat_1_grad/Shape_6Ї
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:ђ 2!
gradients/concat_1_grad/Shape_7ї
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/concat_1_grad/Shape_8ї
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/concat_1_grad/Shape_9ј
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gradients/concat_1_grad/Shape_10ј
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gradients/concat_1_grad/Shape_11ј
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gradients/concat_1_grad/Shape_12ј
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gradients/concat_1_grad/Shape_13ј
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gradients/concat_1_grad/Shape_14ј
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gradients/concat_1_grad/Shape_15а
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::2&
$gradients/concat_1_grad/ConcatOffsetї
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes
:@2
gradients/concat_1_grad/Sliceњ
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes
:@2!
gradients/concat_1_grad/Slice_1њ
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes
:@2!
gradients/concat_1_grad/Slice_2њ
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes
:@2!
gradients/concat_1_grad/Slice_3Њ
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:ђ 2!
gradients/concat_1_grad/Slice_4Њ
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:ђ 2!
gradients/concat_1_grad/Slice_5Њ
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
:ђ 2!
gradients/concat_1_grad/Slice_6Њ
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
:ђ 2!
gradients/concat_1_grad/Slice_7њ
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:@2!
gradients/concat_1_grad/Slice_8њ
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:@2!
gradients/concat_1_grad/Slice_9ќ
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:@2"
 gradients/concat_1_grad/Slice_10ќ
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:@2"
 gradients/concat_1_grad/Slice_11ќ
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
:@2"
 gradients/concat_1_grad/Slice_12ќ
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
:@2"
 gradients/concat_1_grad/Slice_13ќ
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
:@2"
 gradients/concat_1_grad/Slice_14ќ
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
:@2"
 gradients/concat_1_grad/Slice_15Ї
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@      2
gradients/Reshape_grad/Shape├
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes

:@2 
gradients/Reshape_grad/ReshapeЉ
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@      2 
gradients/Reshape_1_grad/Shape╦
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:@2"
 gradients/Reshape_1_grad/ReshapeЉ
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@      2 
gradients/Reshape_2_grad/Shape╦
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:@2"
 gradients/Reshape_2_grad/ReshapeЉ
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@      2 
gradients/Reshape_3_grad/Shape╦
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:@2"
 gradients/Reshape_3_grad/ReshapeЉ
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   2 
gradients/Reshape_4_grad/Shape╦
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:@@2"
 gradients/Reshape_4_grad/ReshapeЉ
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   2 
gradients/Reshape_5_grad/Shape╦
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:@@2"
 gradients/Reshape_5_grad/ReshapeЉ
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   2 
gradients/Reshape_6_grad/Shape╦
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:@@2"
 gradients/Reshape_6_grad/ReshapeЉ
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   2 
gradients/Reshape_7_grad/Shape╦
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:@@2"
 gradients/Reshape_7_grad/Reshapeі
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2 
gradients/Reshape_8_grad/ShapeК
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:@2"
 gradients/Reshape_8_grad/Reshapeі
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2 
gradients/Reshape_9_grad/ShapeК
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:@2"
 gradients/Reshape_9_grad/Reshapeї
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/Reshape_10_grad/Shape╦
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:@2#
!gradients/Reshape_10_grad/Reshapeї
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/Reshape_11_grad/Shape╦
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:@2#
!gradients/Reshape_11_grad/Reshapeї
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/Reshape_12_grad/Shape╦
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:@2#
!gradients/Reshape_12_grad/Reshapeї
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/Reshape_13_grad/Shape╦
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
:@2#
!gradients/Reshape_13_grad/Reshapeї
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/Reshape_14_grad/Shape╦
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
:@2#
!gradients/Reshape_14_grad/Reshapeї
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/Reshape_15_grad/Shape╦
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
:@2#
!gradients/Reshape_15_grad/Reshape╠
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:2.
,gradients/transpose_1_grad/InvertPermutationП
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@2&
$gradients/transpose_1_grad/transpose╠
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:2.
,gradients/transpose_2_grad/InvertPermutation▀
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@2&
$gradients/transpose_2_grad/transpose╠
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:2.
,gradients/transpose_3_grad/InvertPermutation▀
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@2&
$gradients/transpose_3_grad/transpose╠
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:2.
,gradients/transpose_4_grad/InvertPermutation▀
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@2&
$gradients/transpose_4_grad/transpose╠
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:2.
,gradients/transpose_5_grad/InvertPermutation▀
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@2&
$gradients/transpose_5_grad/transpose╠
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:2.
,gradients/transpose_6_grad/InvertPermutation▀
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@2&
$gradients/transpose_6_grad/transpose╠
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:2.
,gradients/transpose_7_grad/InvertPermutation▀
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@2&
$gradients/transpose_7_grad/transpose╠
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:2.
,gradients/transpose_8_grad/InvertPermutation▀
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@2&
$gradients/transpose_8_grad/transposeѕ
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:ђ2
gradients/split_2_grad/concat╬
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	ђ2
gradients/split_grad/concatо
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	@ђ2
gradients/split_1_grad/concatz
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_grad/Rank»
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_grad/modЁ
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ђ2
gradients/concat_grad/ShapeЅ
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:ђ2
gradients/concat_grad/Shape_1­
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::2$
"gradients/concat_grad/ConcatOffsetы
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:ђ2
gradients/concat_grad/Sliceэ
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:ђ2
gradients/concat_grad/Slice_1v
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*#
_output_shapes
:ђf2

Identityz

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*
_output_shapes
:	ђ@2

Identity_1|

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*
_output_shapes
:	ђ@2

Identity_2t

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	ђ2

Identity_3v

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	@ђ2

Identity_4r

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:ђ2

Identity_5"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*з
_input_shapesр
я:	ђ@:ђf@:	ђ@:	ђ@: :::fђ:ђ@:ђ@:ђє:fђ@:ђ@:ђ@:: ::::::::: : : : *=
api_implements+)lstm_4eda3656-9ae8-4e2a-856a-77703b743f50*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_lstm_with_fallback_24289*
go_backwards( *

time_major( :% !

_output_shapes
:	ђ@:)%
#
_output_shapes
:ђf@:%!

_output_shapes
:	ђ@:%!

_output_shapes
:	ђ@:

_output_shapes
: : 

_output_shapes
::

_output_shapes
::)%
#
_output_shapes
:fђ:)%
#
_output_shapes
:ђ@:)	%
#
_output_shapes
:ђ@:"


_output_shapes

:ђє:)%
#
_output_shapes
:fђ@:)%
#
_output_shapes
:ђ@:)%
#
_output_shapes
:ђ@: 

_output_shapes
::

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
Ѓ"
љ
?__inference_lstm_layer_call_and_return_conditional_losses_21421

inputs 
read_readvariableop_resource"
read_1_readvariableop_resource"
read_2_readvariableop_resource

identity_3ѕбRead/ReadVariableOpбRead_1/ReadVariableOpбRead_2/ReadVariableOpc
ShapeConst*
_output_shapes
:*
dtype0*!
valueB"ђ   f      2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2Р
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :У2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros/packed/1Ѓ
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constm
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*
_output_shapes
:	ђ@2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :У2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros_1/packed/1Ѕ
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Constu
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*
_output_shapes
:	ђ@2	
zeros_1ѕ
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	ђ*
dtype02
Read/ReadVariableOpg
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	ђ2

Identityј
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes
:	@ђ*
dtype02
Read_1/ReadVariableOpm

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	@ђ2

Identity_1і
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:ђ*
dtype02
Read_2/ReadVariableOpi

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:ђ2

Identity_2ц
PartitionedCallPartitionedCallinputszeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *F
_output_shapes4
2:	ђ@:ђf@:	ђ@:	ђ@: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *(
f#R!
__inference_standard_lstm_211462
PartitionedCall«

Identity_3IdentityPartitionedCall:output:0^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*
T0*
_output_shapes
:	ђ@2

Identity_3"!

identity_3Identity_3:output:0*.
_input_shapes
:ђf:::2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:K G
#
_output_shapes
:ђf
 
_user_specified_nameinputs
К"
љ
?__inference_lstm_layer_call_and_return_conditional_losses_20518

inputs 
read_readvariableop_resource"
read_1_readvariableop_resource"
read_2_readvariableop_resource

identity_3ѕбRead/ReadVariableOpбRead_1/ReadVariableOpбRead_2/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2Р
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :У2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros/packed/1Ѓ
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         @2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :У2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros_1/packed/1Ѕ
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         @2	
zeros_1ѕ
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	ђ*
dtype02
Read/ReadVariableOpg
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	ђ2

Identityј
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes
:	@ђ*
dtype02
Read_1/ReadVariableOpm

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	@ђ2

Identity_1і
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:ђ*
dtype02
Read_2/ReadVariableOpi

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:ђ2

Identity_2═
PartitionedCallPartitionedCallinputszeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *o
_output_shapes]
[:         @:                  @:         @:         @: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *(
f#R!
__inference_standard_lstm_202422
PartitionedCallХ

Identity_3IdentityPartitionedCall:output:0^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*
T0*'
_output_shapes
:         @2

Identity_3"!

identity_3Identity_3:output:0*?
_input_shapes.
,:                  :::2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs
┤
z
%__inference_dense_layer_call_fn_24772

inputs
unknown
	unknown_0
identityѕбStatefulPartitionedCallУ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:	ђ
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_219002
StatefulPartitionedCallє
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*
_output_shapes
:	ђ
2

Identity"
identityIdentity:output:0*&
_input_shapes
:	ђ@::22
StatefulPartitionedCallStatefulPartitionedCall:G C

_output_shapes
:	ђ@
 
_user_specified_nameinputs
Ѓ"
љ
?__inference_lstm_layer_call_and_return_conditional_losses_24731

inputs 
read_readvariableop_resource"
read_1_readvariableop_resource"
read_2_readvariableop_resource

identity_3ѕбRead/ReadVariableOpбRead_1/ReadVariableOpбRead_2/ReadVariableOpc
ShapeConst*
_output_shapes
:*
dtype0*!
valueB"ђ   f      2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2Р
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :У2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros/packed/1Ѓ
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constm
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*
_output_shapes
:	ђ@2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :У2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros_1/packed/1Ѕ
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Constu
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*
_output_shapes
:	ђ@2	
zeros_1ѕ
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	ђ*
dtype02
Read/ReadVariableOpg
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	ђ2

Identityј
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes
:	@ђ*
dtype02
Read_1/ReadVariableOpm

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	@ђ2

Identity_1і
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:ђ*
dtype02
Read_2/ReadVariableOpi

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:ђ2

Identity_2ц
PartitionedCallPartitionedCallinputszeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *F
_output_shapes4
2:	ђ@:ђf@:	ђ@:	ђ@: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *(
f#R!
__inference_standard_lstm_244562
PartitionedCall«

Identity_3IdentityPartitionedCall:output:0^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*
T0*
_output_shapes
:	ђ@2

Identity_3"!

identity_3Identity_3:output:0*.
_input_shapes
:ђf:::2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:K G
#
_output_shapes
:ђf
 
_user_specified_nameinputs
Џg
Я
!__inference__traced_restore_24950
file_prefix!
assignvariableop_dense_kernel!
assignvariableop_1_dense_bias 
assignvariableop_2_adam_iter"
assignvariableop_3_adam_beta_1"
assignvariableop_4_adam_beta_2!
assignvariableop_5_adam_decay)
%assignvariableop_6_adam_learning_rate,
(assignvariableop_7_lstm_lstm_cell_kernel6
2assignvariableop_8_lstm_lstm_cell_recurrent_kernel*
&assignvariableop_9_lstm_lstm_cell_bias
assignvariableop_10_total
assignvariableop_11_count
assignvariableop_12_total_1
assignvariableop_13_count_1+
'assignvariableop_14_adam_dense_kernel_m)
%assignvariableop_15_adam_dense_bias_m4
0assignvariableop_16_adam_lstm_lstm_cell_kernel_m>
:assignvariableop_17_adam_lstm_lstm_cell_recurrent_kernel_m2
.assignvariableop_18_adam_lstm_lstm_cell_bias_m+
'assignvariableop_19_adam_dense_kernel_v)
%assignvariableop_20_adam_dense_bias_v4
0assignvariableop_21_adam_lstm_lstm_cell_kernel_v>
:assignvariableop_22_adam_lstm_lstm_cell_recurrent_kernel_v2
.assignvariableop_23_adam_lstm_lstm_cell_bias_v
identity_25ѕбAssignVariableOpбAssignVariableOp_1бAssignVariableOp_10бAssignVariableOp_11бAssignVariableOp_12бAssignVariableOp_13бAssignVariableOp_14бAssignVariableOp_15бAssignVariableOp_16бAssignVariableOp_17бAssignVariableOp_18бAssignVariableOp_19бAssignVariableOp_2бAssignVariableOp_20бAssignVariableOp_21бAssignVariableOp_22бAssignVariableOp_23бAssignVariableOp_3бAssignVariableOp_4бAssignVariableOp_5бAssignVariableOp_6бAssignVariableOp_7бAssignVariableOp_8бAssignVariableOp_9ѕ
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*ћ
valueіBЄB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names└
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*E
value<B:B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slicesе
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*x
_output_shapesf
d:::::::::::::::::::::::::*'
dtypes
2	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identityю
AssignVariableOpAssignVariableOpassignvariableop_dense_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1б
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_2А
AssignVariableOp_2AssignVariableOpassignvariableop_2_adam_iterIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3Б
AssignVariableOp_3AssignVariableOpassignvariableop_3_adam_beta_1Identity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4Б
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_beta_2Identity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5б
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_decayIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6ф
AssignVariableOp_6AssignVariableOp%assignvariableop_6_adam_learning_rateIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7Г
AssignVariableOp_7AssignVariableOp(assignvariableop_7_lstm_lstm_cell_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8и
AssignVariableOp_8AssignVariableOp2assignvariableop_8_lstm_lstm_cell_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9Ф
AssignVariableOp_9AssignVariableOp&assignvariableop_9_lstm_lstm_cell_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10А
AssignVariableOp_10AssignVariableOpassignvariableop_10_totalIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11А
AssignVariableOp_11AssignVariableOpassignvariableop_11_countIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12Б
AssignVariableOp_12AssignVariableOpassignvariableop_12_total_1Identity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13Б
AssignVariableOp_13AssignVariableOpassignvariableop_13_count_1Identity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14»
AssignVariableOp_14AssignVariableOp'assignvariableop_14_adam_dense_kernel_mIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15Г
AssignVariableOp_15AssignVariableOp%assignvariableop_15_adam_dense_bias_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16И
AssignVariableOp_16AssignVariableOp0assignvariableop_16_adam_lstm_lstm_cell_kernel_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17┬
AssignVariableOp_17AssignVariableOp:assignvariableop_17_adam_lstm_lstm_cell_recurrent_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18Х
AssignVariableOp_18AssignVariableOp.assignvariableop_18_adam_lstm_lstm_cell_bias_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19»
AssignVariableOp_19AssignVariableOp'assignvariableop_19_adam_dense_kernel_vIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20Г
AssignVariableOp_20AssignVariableOp%assignvariableop_20_adam_dense_bias_vIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21И
AssignVariableOp_21AssignVariableOp0assignvariableop_21_adam_lstm_lstm_cell_kernel_vIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22┬
AssignVariableOp_22AssignVariableOp:assignvariableop_22_adam_lstm_lstm_cell_recurrent_kernel_vIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23Х
AssignVariableOp_23AssignVariableOp.assignvariableop_23_adam_lstm_lstm_cell_bias_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_239
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOpЬ
Identity_24Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_24р
Identity_25IdentityIdentity_24:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_25"#
identity_25Identity_25:output:0*u
_input_shapesd
b: ::::::::::::::::::::::::2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
љV
Б
&__forward_gpu_lstm_with_fallback_23388

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
cudnnrnn
transpose_9_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisѕu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permO
transpose_0	Transposeinputstranspose/perm:output:0*
T02
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:         @2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dimЁ
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:         @2
ExpandDims_1P
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimЉ
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:@:@:@:@*
	num_split2
splitT
Const_1Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimА
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:@@:@@:@@:@@*
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:ђ*
dtype0*
valueBђ*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis|
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:ђ2
concatT
Const_2Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_2h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dimе
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:@:@:@:@:@:@:@:@*
	num_split2	
split_2e
Const_3Const*
_output_shapes
:*
dtype0*
valueB:
         2	
Const_3u
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm{
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:@2
transpose_1e
ReshapeReshapetranspose_1:y:0Const_3:output:0*
T0*
_output_shapes
:@2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:@2
transpose_2i
	Reshape_1Reshapetranspose_2:y:0Const_3:output:0*
T0*
_output_shapes
:@2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:@2
transpose_3i
	Reshape_2Reshapetranspose_3:y:0Const_3:output:0*
T0*
_output_shapes
:@2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm{
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:@2
transpose_4i
	Reshape_3Reshapetranspose_4:y:0Const_3:output:0*
T0*
_output_shapes
:@2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:@@2
transpose_5j
	Reshape_4Reshapetranspose_5:y:0Const_3:output:0*
T0*
_output_shapes	
:ђ 2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:@@2
transpose_6j
	Reshape_5Reshapetranspose_6:y:0Const_3:output:0*
T0*
_output_shapes	
:ђ 2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm}
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:@@2
transpose_7j
	Reshape_6Reshapetranspose_7:y:0Const_3:output:0*
T0*
_output_shapes	
:ђ 2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm}
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:@@2
transpose_8j
	Reshape_7Reshapetranspose_8:y:0Const_3:output:0*
T0*
_output_shapes	
:ђ 2
	Reshape_7j
	Reshape_8Reshapesplit_2:output:0Const_3:output:0*
T0*
_output_shapes
:@2
	Reshape_8j
	Reshape_9Reshapesplit_2:output:1Const_3:output:0*
T0*
_output_shapes
:@2
	Reshape_9l

Reshape_10Reshapesplit_2:output:2Const_3:output:0*
T0*
_output_shapes
:@2

Reshape_10l

Reshape_11Reshapesplit_2:output:3Const_3:output:0*
T0*
_output_shapes
:@2

Reshape_11l

Reshape_12Reshapesplit_2:output:4Const_3:output:0*
T0*
_output_shapes
:@2

Reshape_12l

Reshape_13Reshapesplit_2:output:5Const_3:output:0*
T0*
_output_shapes
:@2

Reshape_13l

Reshape_14Reshapesplit_2:output:6Const_3:output:0*
T0*
_output_shapes
:@2

Reshape_14l

Reshape_15Reshapesplit_2:output:7Const_3:output:0*
T0*
_output_shapes
:@2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axisљ

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T02

concat_1с
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*f
_output_shapesT
R:                  @:         @:         @:2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2Ш
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         @*
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/permћ
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*4
_output_shapes"
 :                  @2
transpose_9{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:         @*
squeeze_dims
 2	
Squeeze
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:         @*
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimej
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:         @2

Identityt

Identity_1Identitytranspose_9:y:0*
T0*4
_output_shapes"
 :                  @2

Identity_1h

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:         @2

Identity_2j

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:         @2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0*v
_input_shapese
c:                  :         @:         @:	ђ:	@ђ:ђ*=
api_implements+)lstm_de577cae-309e-4566-b5b0-e95948335ab9*
api_preferred_deviceGPU*U
backward_function_name;9__inference___backward_gpu_lstm_with_fallback_23213_23389*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs:OK
'
_output_shapes
:         @
 
_user_specified_nameinit_h:OK
'
_output_shapes
:         @
 
_user_specified_nameinit_c:GC

_output_shapes
:	ђ
 
_user_specified_namekernel:QM

_output_shapes
:	@ђ
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:ђ

_user_specified_namebias
ѓT
Є
&__forward_gpu_lstm_with_fallback_19185

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
transpose_9_perm
cudnnrnn
	transpose

expanddims
expanddims_1
concat_1

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
transpose_perm
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisѕu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permO
transpose_0	Transposeinputstranspose/perm:output:0*
T02
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dimu

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*#
_output_shapes
:ђ@2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dim{
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*#
_output_shapes
:ђ@2
ExpandDims_1P
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimЉ
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:@:@:@:@*
	num_split2
splitT
Const_1Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimА
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:@@:@@:@@:@@*
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:ђ*
dtype0*
valueBђ*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis|
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:ђ2
concatT
Const_2Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_2h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dimе
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:@:@:@:@:@:@:@:@*
	num_split2	
split_2e
Const_3Const*
_output_shapes
:*
dtype0*
valueB:
         2	
Const_3u
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm{
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:@2
transpose_1e
ReshapeReshapetranspose_1:y:0Const_3:output:0*
T0*
_output_shapes
:@2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:@2
transpose_2i
	Reshape_1Reshapetranspose_2:y:0Const_3:output:0*
T0*
_output_shapes
:@2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:@2
transpose_3i
	Reshape_2Reshapetranspose_3:y:0Const_3:output:0*
T0*
_output_shapes
:@2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm{
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:@2
transpose_4i
	Reshape_3Reshapetranspose_4:y:0Const_3:output:0*
T0*
_output_shapes
:@2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:@@2
transpose_5j
	Reshape_4Reshapetranspose_5:y:0Const_3:output:0*
T0*
_output_shapes	
:ђ 2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:@@2
transpose_6j
	Reshape_5Reshapetranspose_6:y:0Const_3:output:0*
T0*
_output_shapes	
:ђ 2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm}
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:@@2
transpose_7j
	Reshape_6Reshapetranspose_7:y:0Const_3:output:0*
T0*
_output_shapes	
:ђ 2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm}
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:@@2
transpose_8j
	Reshape_7Reshapetranspose_8:y:0Const_3:output:0*
T0*
_output_shapes	
:ђ 2
	Reshape_7j
	Reshape_8Reshapesplit_2:output:0Const_3:output:0*
T0*
_output_shapes
:@2
	Reshape_8j
	Reshape_9Reshapesplit_2:output:1Const_3:output:0*
T0*
_output_shapes
:@2
	Reshape_9l

Reshape_10Reshapesplit_2:output:2Const_3:output:0*
T0*
_output_shapes
:@2

Reshape_10l

Reshape_11Reshapesplit_2:output:3Const_3:output:0*
T0*
_output_shapes
:@2

Reshape_11l

Reshape_12Reshapesplit_2:output:4Const_3:output:0*
T0*
_output_shapes
:@2

Reshape_12l

Reshape_13Reshapesplit_2:output:5Const_3:output:0*
T0*
_output_shapes
:@2

Reshape_13l

Reshape_14Reshapesplit_2:output:6Const_3:output:0*
T0*
_output_shapes
:@2

Reshape_14l

Reshape_15Reshapesplit_2:output:7Const_3:output:0*
T0*
_output_shapes
:@2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axisљ

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T02

concat_1┬
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*E
_output_shapes3
1:fђ@:ђ@:ђ@:2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2Ь
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	ђ@*
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/permЃ
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*#
_output_shapes
:ђf@2
transpose_9s
SqueezeSqueezeCudnnRNN:output_h:0*
T0*
_output_shapes
:	ђ@*
squeeze_dims
 2	
Squeezew
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*
_output_shapes
:	ђ@*
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimeb
IdentityIdentitystrided_slice:output:0*
T0*
_output_shapes
:	ђ@2

Identityc

Identity_1Identitytranspose_9:y:0*
T0*#
_output_shapes
:ђf@2

Identity_1`

Identity_2IdentitySqueeze:output:0*
T0*
_output_shapes
:	ђ@2

Identity_2b

Identity_3IdentitySqueeze_1:output:0*
T0*
_output_shapes
:	ђ@2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"$
cudnnrnnCudnnRNN:reserve_space:0"

cudnnrnn_0CudnnRNN:output:0"!

cudnnrnn_1CudnnRNN:output_h:0"!

cudnnrnn_2CudnnRNN:output_c:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0*U
_input_shapesD
B:ђf:	ђ@:	ђ@:	ђ:	@ђ:ђ*=
api_implements+)lstm_7813e473-cff4-46ad-842d-35e9cb4bb2b1*
api_preferred_deviceGPU*U
backward_function_name;9__inference___backward_gpu_lstm_with_fallback_19011_19186*
go_backwards( *

time_major( :K G
#
_output_shapes
:ђf
 
_user_specified_nameinputs:GC

_output_shapes
:	ђ@
 
_user_specified_nameinit_h:GC

_output_shapes
:	ђ@
 
_user_specified_nameinit_c:GC

_output_shapes
:	ђ
 
_user_specified_namekernel:QM

_output_shapes
:	@ђ
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:ђ

_user_specified_namebias
н
§
?__inference_lstm_layer_call_and_return_conditional_losses_21988

inputs
inputs_1

lstm_21975

lstm_21977

lstm_21979
dense_21982
dense_21984
identityѕбdense/StatefulPartitionedCallбlstm/StatefulPartitionedCallЃ
lstm/StatefulPartitionedCallStatefulPartitionedCallinputs
lstm_21975
lstm_21977
lstm_21979*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:	ђ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *H
fCRA
?__inference_lstm_layer_call_and_return_conditional_losses_218602
lstm/StatefulPartitionedCallЎ
dense/StatefulPartitionedCallStatefulPartitionedCall%lstm/StatefulPartitionedCall:output:0dense_21982dense_21984*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:	ђ
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_219002
dense/StatefulPartitionedCall▒
IdentityIdentity&dense/StatefulPartitionedCall:output:0^dense/StatefulPartitionedCall^lstm/StatefulPartitionedCall*
T0*
_output_shapes
:	ђ
2

Identity"
identityIdentity:output:0*E
_input_shapes4
2:ђf:ђf:::::2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2<
lstm/StatefulPartitionedCalllstm/StatefulPartitionedCall:K G
#
_output_shapes
:ђf
 
_user_specified_nameinputs:KG
#
_output_shapes
:ђf
 
_user_specified_nameinputs
ЩС
ы
9__inference___backward_gpu_lstm_with_fallback_23653_23829
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5ѕu
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:         @2
gradients/grad_ys_0ё
gradients/grad_ys_1Identityplaceholder_1*
T0*4
_output_shapes"
 :                  @2
gradients/grad_ys_1w
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:         @2
gradients/grad_ys_2w
gradients/grad_ys_3Identityplaceholder_3*
T0*'
_output_shapes
:         @2
gradients/grad_ys_3f
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: 2
gradients/grad_ys_4Б
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:2$
"gradients/strided_slice_grad/Shapeй
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
         25
3gradients/strided_slice_grad/StridedSliceGrad/begin░
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 23
1gradients/strided_slice_grad/StridedSliceGrad/endИ
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:27
5gradients/strided_slice_grad/StridedSliceGrad/strides█
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*4
_output_shapes"
 :                  @*
shrink_axis_mask2/
-gradients/strided_slice_grad/StridedSliceGrad╠
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:2.
,gradients/transpose_9_grad/InvertPermutationУ
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :                  @2&
$gradients/transpose_9_grad/transposeЉ
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:2
gradients/Squeeze_grad/Shapeк
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:         @2 
gradients/Squeeze_grad/ReshapeЌ
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:2 
gradients/Squeeze_1_grad/Shape╠
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*+
_output_shapes
:         @2"
 gradients/Squeeze_1_grad/Reshapeћ
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*4
_output_shapes"
 :                  @2
gradients/AddN{
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:2
gradients/zeros_likeХ
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*j
_output_shapesX
V:                  :         @:         @:ђє2*
(gradients/CudnnRNN_grad/CudnnRNNBackprop─
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:2,
*gradients/transpose_grad/InvertPermutation 
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :                  2$
"gradients/transpose_grad/transposeў
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:2!
gradients/ExpandDims_grad/ShapeЖ
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:         @2#
!gradients/ExpandDims_grad/Reshapeъ
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:2#
!gradients/ExpandDims_1_grad/Shape­
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:         @2%
#gradients/ExpandDims_1_grad/Reshape~
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_1_grad/Rank╣
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_1_grad/modѕ
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2
gradients/concat_1_grad/Shapeї
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/concat_1_grad/Shape_1ї
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/concat_1_grad/Shape_2ї
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/concat_1_grad/Shape_3Ї
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:ђ 2!
gradients/concat_1_grad/Shape_4Ї
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:ђ 2!
gradients/concat_1_grad/Shape_5Ї
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:ђ 2!
gradients/concat_1_grad/Shape_6Ї
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:ђ 2!
gradients/concat_1_grad/Shape_7ї
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/concat_1_grad/Shape_8ї
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/concat_1_grad/Shape_9ј
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gradients/concat_1_grad/Shape_10ј
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gradients/concat_1_grad/Shape_11ј
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gradients/concat_1_grad/Shape_12ј
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gradients/concat_1_grad/Shape_13ј
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gradients/concat_1_grad/Shape_14ј
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:@2"
 gradients/concat_1_grad/Shape_15а
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::2&
$gradients/concat_1_grad/ConcatOffsetї
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes
:@2
gradients/concat_1_grad/Sliceњ
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes
:@2!
gradients/concat_1_grad/Slice_1њ
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes
:@2!
gradients/concat_1_grad/Slice_2њ
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes
:@2!
gradients/concat_1_grad/Slice_3Њ
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:ђ 2!
gradients/concat_1_grad/Slice_4Њ
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:ђ 2!
gradients/concat_1_grad/Slice_5Њ
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
:ђ 2!
gradients/concat_1_grad/Slice_6Њ
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
:ђ 2!
gradients/concat_1_grad/Slice_7њ
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:@2!
gradients/concat_1_grad/Slice_8њ
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:@2!
gradients/concat_1_grad/Slice_9ќ
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:@2"
 gradients/concat_1_grad/Slice_10ќ
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:@2"
 gradients/concat_1_grad/Slice_11ќ
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
:@2"
 gradients/concat_1_grad/Slice_12ќ
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
:@2"
 gradients/concat_1_grad/Slice_13ќ
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
:@2"
 gradients/concat_1_grad/Slice_14ќ
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
:@2"
 gradients/concat_1_grad/Slice_15Ї
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@      2
gradients/Reshape_grad/Shape├
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes

:@2 
gradients/Reshape_grad/ReshapeЉ
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@      2 
gradients/Reshape_1_grad/Shape╦
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:@2"
 gradients/Reshape_1_grad/ReshapeЉ
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@      2 
gradients/Reshape_2_grad/Shape╦
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:@2"
 gradients/Reshape_2_grad/ReshapeЉ
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@      2 
gradients/Reshape_3_grad/Shape╦
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:@2"
 gradients/Reshape_3_grad/ReshapeЉ
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   2 
gradients/Reshape_4_grad/Shape╦
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:@@2"
 gradients/Reshape_4_grad/ReshapeЉ
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   2 
gradients/Reshape_5_grad/Shape╦
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:@@2"
 gradients/Reshape_5_grad/ReshapeЉ
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   2 
gradients/Reshape_6_grad/Shape╦
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:@@2"
 gradients/Reshape_6_grad/ReshapeЉ
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   2 
gradients/Reshape_7_grad/Shape╦
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:@@2"
 gradients/Reshape_7_grad/Reshapeі
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2 
gradients/Reshape_8_grad/ShapeК
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:@2"
 gradients/Reshape_8_grad/Reshapeі
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2 
gradients/Reshape_9_grad/ShapeК
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:@2"
 gradients/Reshape_9_grad/Reshapeї
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/Reshape_10_grad/Shape╦
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:@2#
!gradients/Reshape_10_grad/Reshapeї
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/Reshape_11_grad/Shape╦
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:@2#
!gradients/Reshape_11_grad/Reshapeї
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/Reshape_12_grad/Shape╦
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:@2#
!gradients/Reshape_12_grad/Reshapeї
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/Reshape_13_grad/Shape╦
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
:@2#
!gradients/Reshape_13_grad/Reshapeї
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/Reshape_14_grad/Shape╦
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
:@2#
!gradients/Reshape_14_grad/Reshapeї
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@2!
gradients/Reshape_15_grad/Shape╦
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
:@2#
!gradients/Reshape_15_grad/Reshape╠
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:2.
,gradients/transpose_1_grad/InvertPermutationП
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@2&
$gradients/transpose_1_grad/transpose╠
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:2.
,gradients/transpose_2_grad/InvertPermutation▀
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@2&
$gradients/transpose_2_grad/transpose╠
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:2.
,gradients/transpose_3_grad/InvertPermutation▀
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@2&
$gradients/transpose_3_grad/transpose╠
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:2.
,gradients/transpose_4_grad/InvertPermutation▀
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@2&
$gradients/transpose_4_grad/transpose╠
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:2.
,gradients/transpose_5_grad/InvertPermutation▀
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@2&
$gradients/transpose_5_grad/transpose╠
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:2.
,gradients/transpose_6_grad/InvertPermutation▀
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@2&
$gradients/transpose_6_grad/transpose╠
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:2.
,gradients/transpose_7_grad/InvertPermutation▀
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@2&
$gradients/transpose_7_grad/transpose╠
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:2.
,gradients/transpose_8_grad/InvertPermutation▀
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@2&
$gradients/transpose_8_grad/transposeѕ
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:ђ2
gradients/split_2_grad/concat╬
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	ђ2
gradients/split_grad/concatо
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	@ђ2
gradients/split_1_grad/concatz
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_grad/Rank»
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_grad/modЁ
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ђ2
gradients/concat_grad/ShapeЅ
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:ђ2
gradients/concat_grad/Shape_1­
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::2$
"gradients/concat_grad/ConcatOffsetы
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:ђ2
gradients/concat_grad/Sliceэ
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:ђ2
gradients/concat_grad/Slice_1Є
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*4
_output_shapes"
 :                  2

Identityѓ

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:         @2

Identity_1ё

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*'
_output_shapes
:         @2

Identity_2t

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	ђ2

Identity_3v

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	@ђ2

Identity_4r

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:ђ2

Identity_5"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*ё
_input_shapesЫ
№:         @:                  @:         @:         @: :                  @::         @:         @::                  :         @:         @:ђє::         @:         @: ::::::::: : : : *=
api_implements+)lstm_6552cd95-371a-4b6b-8563-0d87bf465dff*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_lstm_with_fallback_23828*
go_backwards( *

time_major( :- )
'
_output_shapes
:         @::6
4
_output_shapes"
 :                  @:-)
'
_output_shapes
:         @:-)
'
_output_shapes
:         @:

_output_shapes
: ::6
4
_output_shapes"
 :                  @: 

_output_shapes
::1-
+
_output_shapes
:         @:1-
+
_output_shapes
:         @:	

_output_shapes
:::
6
4
_output_shapes"
 :                  :1-
+
_output_shapes
:         @:1-
+
_output_shapes
:         @:"

_output_shapes

:ђє: 

_output_shapes
::-)
'
_output_shapes
:         @:-)
'
_output_shapes
:         @:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
ѓ	
╝
while_cond_23028
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice3
/while_while_cond_23028___redundant_placeholder03
/while_while_cond_23028___redundant_placeholder13
/while_while_cond_23028___redundant_placeholder23
/while_while_cond_23028___redundant_placeholder3
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*S
_input_shapesB
@: : : : :         @:         @: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         @:-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
ц?
┐
__inference_standard_lstm_24017

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permr
	transpose	Transposeinputstranspose/perm:output:0*
T0*#
_output_shapes
:fђ2
	transposec
ShapeConst*
_output_shapes
:*
dtype0*!
valueB"f   ђ      2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2Р
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceЁ
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         2
TensorArrayV2/element_shape░
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2┐
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ђ      27
5TensorArrayUnstack/TensorListFromTensor/element_shapeЭ
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2З
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	ђ*
shrink_axis_mask2
strided_slice_1g
MatMulMatMulstrided_slice_1:output:0kernel*
T0* 
_output_shapes
:
ђђ2
MatMulc
MatMul_1MatMulinit_hrecurrent_kernel*
T0* 
_output_shapes
:
ђђ2

MatMul_1d
addAddV2MatMul:product:0MatMul_1:product:0*
T0* 
_output_shapes
:
ђђ2
addW
BiasAddBiasAddadd:z:0bias*
T0* 
_output_shapes
:
ђђ2	
BiasAddP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimЪ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*@
_output_shapes.
,:	ђ@:	ђ@:	ђ@:	ђ@*
	num_split2
splitW
SigmoidSigmoidsplit:output:0*
T0*
_output_shapes
:	ђ@2	
Sigmoid[
	Sigmoid_1Sigmoidsplit:output:1*
T0*
_output_shapes
:	ђ@2
	Sigmoid_1R
mulMulSigmoid_1:y:0init_c*
T0*
_output_shapes
:	ђ@2
mulN
TanhTanhsplit:output:2*
T0*
_output_shapes
:	ђ@2
TanhV
mul_1MulSigmoid:y:0Tanh:y:0*
T0*
_output_shapes
:	ђ@2
mul_1U
add_1AddV2mul:z:0	mul_1:z:0*
T0*
_output_shapes
:	ђ@2
add_1[
	Sigmoid_2Sigmoidsplit:output:3*
T0*
_output_shapes
:	ђ@2
	Sigmoid_2M
Tanh_1Tanh	add_1:z:0*
T0*
_output_shapes
:	ђ@2
Tanh_1Z
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*
_output_shapes
:	ђ@2
mul_2Ј
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ђ   @   2
TensorArrayV2_1/element_shapeХ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterђ
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*S
_output_shapesA
?: : : : :	ђ@:	ђ@: : :	ђ:	@ђ:ђ* 
_read_only_resource_inputs
 *
bodyR
while_body_23931*
condR
while_cond_23930*R
output_shapesA
?: : : : :	ђ@:	ђ@: : :	ђ:	@ђ:ђ*
parallel_iterations 2
whileх
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ђ   @   22
0TensorArrayV2Stack/TensorListStack/element_shapeЯ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*#
_output_shapes
:fђ@*
element_dtype02$
"TensorArrayV2Stack/TensorListStackЂ
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2њ
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	ђ@*
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЮ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*#
_output_shapes
:ђf@2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ђ?2	
runtimed
IdentityIdentitystrided_slice_2:output:0*
T0*
_output_shapes
:	ђ@2

Identityc

Identity_1Identitytranspose_1:y:0*
T0*#
_output_shapes
:ђf@2

Identity_1^

Identity_2Identitywhile:output:4*
T0*
_output_shapes
:	ђ@2

Identity_2^

Identity_3Identitywhile:output:5*
T0*
_output_shapes
:	ђ@2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*U
_input_shapesD
B:ђf:	ђ@:	ђ@:	ђ:	@ђ:ђ*=
api_implements+)lstm_4eda3656-9ae8-4e2a-856a-77703b743f50*
api_preferred_deviceCPU*
go_backwards( *

time_major( :K G
#
_output_shapes
:ђf
 
_user_specified_nameinputs:GC

_output_shapes
:	ђ@
 
_user_specified_nameinit_h:GC

_output_shapes
:	ђ@
 
_user_specified_nameinit_c:GC

_output_shapes
:	ђ
 
_user_specified_namekernel:QM

_output_shapes
:	@ђ
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:ђ

_user_specified_namebias
ў
Х
$__inference_lstm_layer_call_fn_22935
inputs_0
inputs_1
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
identityѕбStatefulPartitionedCallЏ
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin
	2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:	ђ
*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8ѓ *H
fCRA
?__inference_lstm_layer_call_and_return_conditional_losses_219552
StatefulPartitionedCallє
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*
_output_shapes
:	ђ
2

Identity"
identityIdentity:output:0*E
_input_shapes4
2:ђf:ђf:::::22
StatefulPartitionedCallStatefulPartitionedCall:M I
#
_output_shapes
:ђf
"
_user_specified_name
inputs/0:MI
#
_output_shapes
:ђf
"
_user_specified_name
inputs/1
ѓT
Є
&__forward_gpu_lstm_with_fallback_24289

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
transpose_9_perm
cudnnrnn
	transpose

expanddims
expanddims_1
concat_1

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
transpose_perm
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisѕu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permO
transpose_0	Transposeinputstranspose/perm:output:0*
T02
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dimu

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*#
_output_shapes
:ђ@2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dim{
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*#
_output_shapes
:ђ@2
ExpandDims_1P
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimЉ
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:@:@:@:@*
	num_split2
splitT
Const_1Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimА
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:@@:@@:@@:@@*
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:ђ*
dtype0*
valueBђ*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis|
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:ђ2
concatT
Const_2Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_2h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dimе
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:@:@:@:@:@:@:@:@*
	num_split2	
split_2e
Const_3Const*
_output_shapes
:*
dtype0*
valueB:
         2	
Const_3u
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm{
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:@2
transpose_1e
ReshapeReshapetranspose_1:y:0Const_3:output:0*
T0*
_output_shapes
:@2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:@2
transpose_2i
	Reshape_1Reshapetranspose_2:y:0Const_3:output:0*
T0*
_output_shapes
:@2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:@2
transpose_3i
	Reshape_2Reshapetranspose_3:y:0Const_3:output:0*
T0*
_output_shapes
:@2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm{
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:@2
transpose_4i
	Reshape_3Reshapetranspose_4:y:0Const_3:output:0*
T0*
_output_shapes
:@2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:@@2
transpose_5j
	Reshape_4Reshapetranspose_5:y:0Const_3:output:0*
T0*
_output_shapes	
:ђ 2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:@@2
transpose_6j
	Reshape_5Reshapetranspose_6:y:0Const_3:output:0*
T0*
_output_shapes	
:ђ 2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm}
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:@@2
transpose_7j
	Reshape_6Reshapetranspose_7:y:0Const_3:output:0*
T0*
_output_shapes	
:ђ 2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm}
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:@@2
transpose_8j
	Reshape_7Reshapetranspose_8:y:0Const_3:output:0*
T0*
_output_shapes	
:ђ 2
	Reshape_7j
	Reshape_8Reshapesplit_2:output:0Const_3:output:0*
T0*
_output_shapes
:@2
	Reshape_8j
	Reshape_9Reshapesplit_2:output:1Const_3:output:0*
T0*
_output_shapes
:@2
	Reshape_9l

Reshape_10Reshapesplit_2:output:2Const_3:output:0*
T0*
_output_shapes
:@2

Reshape_10l

Reshape_11Reshapesplit_2:output:3Const_3:output:0*
T0*
_output_shapes
:@2

Reshape_11l

Reshape_12Reshapesplit_2:output:4Const_3:output:0*
T0*
_output_shapes
:@2

Reshape_12l

Reshape_13Reshapesplit_2:output:5Const_3:output:0*
T0*
_output_shapes
:@2

Reshape_13l

Reshape_14Reshapesplit_2:output:6Const_3:output:0*
T0*
_output_shapes
:@2

Reshape_14l

Reshape_15Reshapesplit_2:output:7Const_3:output:0*
T0*
_output_shapes
:@2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axisљ

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T02

concat_1┬
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*E
_output_shapes3
1:fђ@:ђ@:ђ@:2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2Ь
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	ђ@*
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/permЃ
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*#
_output_shapes
:ђf@2
transpose_9s
SqueezeSqueezeCudnnRNN:output_h:0*
T0*
_output_shapes
:	ђ@*
squeeze_dims
 2	
Squeezew
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*
_output_shapes
:	ђ@*
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimeb
IdentityIdentitystrided_slice:output:0*
T0*
_output_shapes
:	ђ@2

Identityc

Identity_1Identitytranspose_9:y:0*
T0*#
_output_shapes
:ђf@2

Identity_1`

Identity_2IdentitySqueeze:output:0*
T0*
_output_shapes
:	ђ@2

Identity_2b

Identity_3IdentitySqueeze_1:output:0*
T0*
_output_shapes
:	ђ@2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"$
cudnnrnnCudnnRNN:reserve_space:0"

cudnnrnn_0CudnnRNN:output:0"!

cudnnrnn_1CudnnRNN:output_h:0"!

cudnnrnn_2CudnnRNN:output_c:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0*U
_input_shapesD
B:ђf:	ђ@:	ђ@:	ђ:	@ђ:ђ*=
api_implements+)lstm_4eda3656-9ae8-4e2a-856a-77703b743f50*
api_preferred_deviceGPU*U
backward_function_name;9__inference___backward_gpu_lstm_with_fallback_24115_24290*
go_backwards( *

time_major( :K G
#
_output_shapes
:ђf
 
_user_specified_nameinputs:GC

_output_shapes
:	ђ@
 
_user_specified_nameinit_h:GC

_output_shapes
:	ђ@
 
_user_specified_nameinit_c:GC

_output_shapes
:	ђ
 
_user_specified_namekernel:QM

_output_shapes
:	@ђ
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:ђ

_user_specified_namebias
йJ
╦
(__inference_gpu_lstm_with_fallback_20790

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4ѕu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permЃ
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  2
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim}

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:         @2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dimЃ
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*+
_output_shapes
:         @2
ExpandDims_1P
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimЉ
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:@:@:@:@*
	num_split2
splitT
Const_1Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimА
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:@@:@@:@@:@@*
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:ђ*
dtype0*
valueBђ*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis|
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:ђ2
concatT
Const_2Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_2h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dimе
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:@:@:@:@:@:@:@:@*
	num_split2	
split_2e
Const_3Const*
_output_shapes
:*
dtype0*
valueB:
         2	
Const_3u
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm{
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:@2
transpose_1e
ReshapeReshapetranspose_1:y:0Const_3:output:0*
T0*
_output_shapes
:@2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:@2
transpose_2i
	Reshape_1Reshapetranspose_2:y:0Const_3:output:0*
T0*
_output_shapes
:@2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:@2
transpose_3i
	Reshape_2Reshapetranspose_3:y:0Const_3:output:0*
T0*
_output_shapes
:@2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm{
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:@2
transpose_4i
	Reshape_3Reshapetranspose_4:y:0Const_3:output:0*
T0*
_output_shapes
:@2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:@@2
transpose_5j
	Reshape_4Reshapetranspose_5:y:0Const_3:output:0*
T0*
_output_shapes	
:ђ 2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:@@2
transpose_6j
	Reshape_5Reshapetranspose_6:y:0Const_3:output:0*
T0*
_output_shapes	
:ђ 2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm}
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:@@2
transpose_7j
	Reshape_6Reshapetranspose_7:y:0Const_3:output:0*
T0*
_output_shapes	
:ђ 2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm}
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:@@2
transpose_8j
	Reshape_7Reshapetranspose_8:y:0Const_3:output:0*
T0*
_output_shapes	
:ђ 2
	Reshape_7j
	Reshape_8Reshapesplit_2:output:0Const_3:output:0*
T0*
_output_shapes
:@2
	Reshape_8j
	Reshape_9Reshapesplit_2:output:1Const_3:output:0*
T0*
_output_shapes
:@2
	Reshape_9l

Reshape_10Reshapesplit_2:output:2Const_3:output:0*
T0*
_output_shapes
:@2

Reshape_10l

Reshape_11Reshapesplit_2:output:3Const_3:output:0*
T0*
_output_shapes
:@2

Reshape_11l

Reshape_12Reshapesplit_2:output:4Const_3:output:0*
T0*
_output_shapes
:@2

Reshape_12l

Reshape_13Reshapesplit_2:output:5Const_3:output:0*
T0*
_output_shapes
:@2

Reshape_13l

Reshape_14Reshapesplit_2:output:6Const_3:output:0*
T0*
_output_shapes
:@2

Reshape_14l

Reshape_15Reshapesplit_2:output:7Const_3:output:0*
T0*
_output_shapes
:@2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axisг
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:ђє2

concat_1▀
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*f
_output_shapesT
R:                  @:         @:         @:2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2Ш
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         @*
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/permћ
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*4
_output_shapes"
 :                  @2
transpose_9{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:         @*
squeeze_dims
 2	
Squeeze
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:         @*
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimej
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:         @2

Identityt

Identity_1Identitytranspose_9:y:0*
T0*4
_output_shapes"
 :                  @2

Identity_1h

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:         @2

Identity_2j

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:         @2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*v
_input_shapese
c:                  :         @:         @:	ђ:	@ђ:ђ*=
api_implements+)lstm_d14c1f77-7846-415f-a0e1-e7ae7d0beb0c*
api_preferred_deviceGPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs:OK
'
_output_shapes
:         @
 
_user_specified_nameinit_h:OK
'
_output_shapes
:         @
 
_user_specified_nameinit_c:GC

_output_shapes
:	ђ
 
_user_specified_namekernel:QM

_output_shapes
:	@ђ
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:ђ

_user_specified_namebias
сA
┐
__inference_standard_lstm_23115

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permЃ
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  2
	transposeK
ShapeShapetranspose:y:0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2Р
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceЁ
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         2
TensorArrayV2/element_shape░
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2┐
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       27
5TensorArrayUnstack/TensorListFromTensor/element_shapeЭ
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2Ч
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_mask2
strided_slice_1o
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:         ђ2
MatMulk
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:         ђ2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         ђ2
add_
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:         ђ2	
BiasAddP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim┐
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         @:         @:         @:         @*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         @2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         @2
	Sigmoid_1Z
mulMulSigmoid_1:y:0init_c*
T0*'
_output_shapes
:         @2
mulV
TanhTanhsplit:output:2*
T0*'
_output_shapes
:         @2
Tanh^
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:         @2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         @2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         @2
	Sigmoid_2U
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:         @2
Tanh_1b
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:         @2
mul_2Ј
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   2
TensorArrayV2_1/element_shapeХ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterа
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*c
_output_shapesQ
O: : : : :         @:         @: : :	ђ:	@ђ:ђ* 
_read_only_resource_inputs
 *
bodyR
while_body_23029*
condR
while_cond_23028*b
output_shapesQ
O: : : : :         @:         @: : :	ђ:	@ђ:ђ*
parallel_iterations 2
whileх
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   22
0TensorArrayV2Stack/TensorListStack/element_shapeы
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  @*
element_dtype02$
"TensorArrayV2Stack/TensorListStackЂ
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2џ
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         @*
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm«
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  @2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ђ?2	
runtimel
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:         @2

Identityt

Identity_1Identitytranspose_1:y:0*
T0*4
_output_shapes"
 :                  @2

Identity_1f

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:         @2

Identity_2f

Identity_3Identitywhile:output:5*
T0*'
_output_shapes
:         @2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*v
_input_shapese
c:                  :         @:         @:	ђ:	@ђ:ђ*=
api_implements+)lstm_de577cae-309e-4566-b5b0-e95948335ab9*
api_preferred_deviceCPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs:OK
'
_output_shapes
:         @
 
_user_specified_nameinit_h:OK
'
_output_shapes
:         @
 
_user_specified_nameinit_c:GC

_output_shapes
:	ђ
 
_user_specified_namekernel:QM

_output_shapes
:	@ђ
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:ђ

_user_specified_namebias
р+
╬
while_body_22552
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_bias├
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ђ      29
7while/TensorArrayV2Read/TensorListGetItem/element_shape╦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes
:	ђ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemџ
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0* 
_output_shapes
:
ђђ2
while/MatMulЇ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0* 
_output_shapes
:
ђђ2
while/MatMul_1|
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0* 
_output_shapes
:
ђђ2
	while/addy
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0* 
_output_shapes
:
ђђ2
while/BiasAdd\
while/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/Constp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dimи
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*@
_output_shapes.
,:	ђ@:	ђ@:	ђ@:	ђ@*
	num_split2
while/spliti
while/SigmoidSigmoidwhile/split:output:0*
T0*
_output_shapes
:	ђ@2
while/Sigmoidm
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*
_output_shapes
:	ђ@2
while/Sigmoid_1q
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*
_output_shapes
:	ђ@2
	while/mul`

while/TanhTanhwhile/split:output:2*
T0*
_output_shapes
:	ђ@2

while/Tanhn
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*
_output_shapes
:	ђ@2
while/mul_1m
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*
_output_shapes
:	ђ@2
while/add_1m
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*
_output_shapes
:	ђ@2
while/Sigmoid_2_
while/Tanh_1Tanhwhile/add_1:z:0*
T0*
_output_shapes
:	ђ@2
while/Tanh_1r
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*
_output_shapes
:	ђ@2
while/mul_2М
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem`
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_2/yo
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: 2
while/add_2`
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_3/yv
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: 2
while/add_3^
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: 2
while/Identityq
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: 2
while/Identity_1b
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: 2
while/Identity_2Ї
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: 2
while/Identity_3k
while/Identity_4Identitywhile/mul_2:z:0*
T0*
_output_shapes
:	ђ@2
while/Identity_4k
while/Identity_5Identitywhile/add_1:z:0*
T0*
_output_shapes
:	ђ@2
while/Identity_5"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*R
_input_shapesA
?: : : : :	ђ@:	ђ@: : :	ђ:	@ђ:ђ: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	ђ@:%!

_output_shapes
:	ђ@:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	ђ:%	!

_output_shapes
:	@ђ:!


_output_shapes	
:ђ
сA
┐
__inference_standard_lstm_20693

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permЃ
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  2
	transposeK
ShapeShapetranspose:y:0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2Р
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceЁ
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         2
TensorArrayV2/element_shape░
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2┐
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       27
5TensorArrayUnstack/TensorListFromTensor/element_shapeЭ
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2Ч
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_mask2
strided_slice_1o
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:         ђ2
MatMulk
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:         ђ2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         ђ2
add_
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:         ђ2	
BiasAddP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim┐
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         @:         @:         @:         @*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         @2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         @2
	Sigmoid_1Z
mulMulSigmoid_1:y:0init_c*
T0*'
_output_shapes
:         @2
mulV
TanhTanhsplit:output:2*
T0*'
_output_shapes
:         @2
Tanh^
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:         @2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         @2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         @2
	Sigmoid_2U
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:         @2
Tanh_1b
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:         @2
mul_2Ј
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   2
TensorArrayV2_1/element_shapeХ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterа
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*c
_output_shapesQ
O: : : : :         @:         @: : :	ђ:	@ђ:ђ* 
_read_only_resource_inputs
 *
bodyR
while_body_20607*
condR
while_cond_20606*b
output_shapesQ
O: : : : :         @:         @: : :	ђ:	@ђ:ђ*
parallel_iterations 2
whileх
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   22
0TensorArrayV2Stack/TensorListStack/element_shapeы
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  @*
element_dtype02$
"TensorArrayV2Stack/TensorListStackЂ
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2џ
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         @*
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm«
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  @2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ђ?2	
runtimel
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:         @2

Identityt

Identity_1Identitytranspose_1:y:0*
T0*4
_output_shapes"
 :                  @2

Identity_1f

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:         @2

Identity_2f

Identity_3Identitywhile:output:5*
T0*'
_output_shapes
:         @2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*v
_input_shapese
c:                  :         @:         @:	ђ:	@ђ:ђ*=
api_implements+)lstm_d14c1f77-7846-415f-a0e1-e7ae7d0beb0c*
api_preferred_deviceCPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs:OK
'
_output_shapes
:         @
 
_user_specified_nameinit_h:OK
'
_output_shapes
:         @
 
_user_specified_nameinit_c:GC

_output_shapes
:	ђ
 
_user_specified_namekernel:QM

_output_shapes
:	@ђ
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:ђ

_user_specified_namebias
Р
╝
while_cond_18826
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice3
/while_while_cond_18826___redundant_placeholder03
/while_while_cond_18826___redundant_placeholder13
/while_while_cond_18826___redundant_placeholder23
/while_while_cond_18826___redundant_placeholder3
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*C
_input_shapes2
0: : : : :	ђ@:	ђ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	ђ@:%!

_output_shapes
:	ђ@:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
Г.
╬
?__inference_lstm_layer_call_and_return_conditional_losses_22919
inputs_0
inputs_1%
!lstm_read_readvariableop_resource'
#lstm_read_1_readvariableop_resource'
#lstm_read_2_readvariableop_resource(
$dense_matmul_readvariableop_resource)
%dense_biasadd_readvariableop_resource
identityѕбdense/BiasAdd/ReadVariableOpбdense/MatMul/ReadVariableOpбlstm/Read/ReadVariableOpбlstm/Read_1/ReadVariableOpбlstm/Read_2/ReadVariableOpm

lstm/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"ђ   f      2

lstm/Shape~
lstm/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm/strided_slice/stackѓ
lstm/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm/strided_slice/stack_1ѓ
lstm/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm/strided_slice/stack_2ђ
lstm/strided_sliceStridedSlicelstm/Shape:output:0!lstm/strided_slice/stack:output:0#lstm/strided_slice/stack_1:output:0#lstm/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm/strided_slicef
lstm/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
lstm/zeros/mul/yђ
lstm/zeros/mulMullstm/strided_slice:output:0lstm/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm/zeros/muli
lstm/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :У2
lstm/zeros/Less/y{
lstm/zeros/LessLesslstm/zeros/mul:z:0lstm/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm/zeros/Lessl
lstm/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
lstm/zeros/packed/1Ќ
lstm/zeros/packedPacklstm/strided_slice:output:0lstm/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm/zeros/packedi
lstm/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm/zeros/ConstЂ

lstm/zerosFilllstm/zeros/packed:output:0lstm/zeros/Const:output:0*
T0*
_output_shapes
:	ђ@2

lstm/zerosj
lstm/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
lstm/zeros_1/mul/yє
lstm/zeros_1/mulMullstm/strided_slice:output:0lstm/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm/zeros_1/mulm
lstm/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :У2
lstm/zeros_1/Less/yЃ
lstm/zeros_1/LessLesslstm/zeros_1/mul:z:0lstm/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm/zeros_1/Lessp
lstm/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
lstm/zeros_1/packed/1Ю
lstm/zeros_1/packedPacklstm/strided_slice:output:0lstm/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm/zeros_1/packedm
lstm/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm/zeros_1/ConstЅ
lstm/zeros_1Filllstm/zeros_1/packed:output:0lstm/zeros_1/Const:output:0*
T0*
_output_shapes
:	ђ@2
lstm/zeros_1Ќ
lstm/Read/ReadVariableOpReadVariableOp!lstm_read_readvariableop_resource*
_output_shapes
:	ђ*
dtype02
lstm/Read/ReadVariableOpv
lstm/IdentityIdentity lstm/Read/ReadVariableOp:value:0*
T0*
_output_shapes
:	ђ2
lstm/IdentityЮ
lstm/Read_1/ReadVariableOpReadVariableOp#lstm_read_1_readvariableop_resource*
_output_shapes
:	@ђ*
dtype02
lstm/Read_1/ReadVariableOp|
lstm/Identity_1Identity"lstm/Read_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	@ђ2
lstm/Identity_1Ў
lstm/Read_2/ReadVariableOpReadVariableOp#lstm_read_2_readvariableop_resource*
_output_shapes	
:ђ*
dtype02
lstm/Read_2/ReadVariableOpx
lstm/Identity_2Identity"lstm/Read_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:ђ2
lstm/Identity_2╔
lstm/PartitionedCallPartitionedCallinputs_0lstm/zeros:output:0lstm/zeros_1:output:0lstm/Identity:output:0lstm/Identity_1:output:0lstm/Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *F
_output_shapes4
2:	ђ@:ђf@:	ђ@:	ђ@: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *(
f#R!
__inference_standard_lstm_226382
lstm/PartitionedCallЪ
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes

:@
*
dtype02
dense/MatMul/ReadVariableOpћ
dense/MatMulMatMullstm/PartitionedCall:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	ђ
2
dense/MatMulъ
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
dense/BiasAdd/ReadVariableOpЉ
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	ђ
2
dense/BiasAddЗ
IdentityIdentitydense/BiasAdd:output:0^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^lstm/Read/ReadVariableOp^lstm/Read_1/ReadVariableOp^lstm/Read_2/ReadVariableOp*
T0*
_output_shapes
:	ђ
2

Identity"
identityIdentity:output:0*E
_input_shapes4
2:ђf:ђf:::::2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp24
lstm/Read/ReadVariableOplstm/Read/ReadVariableOp28
lstm/Read_1/ReadVariableOplstm/Read_1/ReadVariableOp28
lstm/Read_2/ReadVariableOplstm/Read_2/ReadVariableOp:M I
#
_output_shapes
:ђf
"
_user_specified_name
inputs/0:MI
#
_output_shapes
:ђf
"
_user_specified_name
inputs/1
ц?
┐
__inference_standard_lstm_22638

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permr
	transpose	Transposeinputstranspose/perm:output:0*
T0*#
_output_shapes
:fђ2
	transposec
ShapeConst*
_output_shapes
:*
dtype0*!
valueB"f   ђ      2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2Р
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceЁ
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         2
TensorArrayV2/element_shape░
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2┐
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ђ      27
5TensorArrayUnstack/TensorListFromTensor/element_shapeЭ
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2З
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	ђ*
shrink_axis_mask2
strided_slice_1g
MatMulMatMulstrided_slice_1:output:0kernel*
T0* 
_output_shapes
:
ђђ2
MatMulc
MatMul_1MatMulinit_hrecurrent_kernel*
T0* 
_output_shapes
:
ђђ2

MatMul_1d
addAddV2MatMul:product:0MatMul_1:product:0*
T0* 
_output_shapes
:
ђђ2
addW
BiasAddBiasAddadd:z:0bias*
T0* 
_output_shapes
:
ђђ2	
BiasAddP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimЪ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*@
_output_shapes.
,:	ђ@:	ђ@:	ђ@:	ђ@*
	num_split2
splitW
SigmoidSigmoidsplit:output:0*
T0*
_output_shapes
:	ђ@2	
Sigmoid[
	Sigmoid_1Sigmoidsplit:output:1*
T0*
_output_shapes
:	ђ@2
	Sigmoid_1R
mulMulSigmoid_1:y:0init_c*
T0*
_output_shapes
:	ђ@2
mulN
TanhTanhsplit:output:2*
T0*
_output_shapes
:	ђ@2
TanhV
mul_1MulSigmoid:y:0Tanh:y:0*
T0*
_output_shapes
:	ђ@2
mul_1U
add_1AddV2mul:z:0	mul_1:z:0*
T0*
_output_shapes
:	ђ@2
add_1[
	Sigmoid_2Sigmoidsplit:output:3*
T0*
_output_shapes
:	ђ@2
	Sigmoid_2M
Tanh_1Tanh	add_1:z:0*
T0*
_output_shapes
:	ђ@2
Tanh_1Z
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*
_output_shapes
:	ђ@2
mul_2Ј
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ђ   @   2
TensorArrayV2_1/element_shapeХ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterђ
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*S
_output_shapesA
?: : : : :	ђ@:	ђ@: : :	ђ:	@ђ:ђ* 
_read_only_resource_inputs
 *
bodyR
while_body_22552*
condR
while_cond_22551*R
output_shapesA
?: : : : :	ђ@:	ђ@: : :	ђ:	@ђ:ђ*
parallel_iterations 2
whileх
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ђ   @   22
0TensorArrayV2Stack/TensorListStack/element_shapeЯ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*#
_output_shapes
:fђ@*
element_dtype02$
"TensorArrayV2Stack/TensorListStackЂ
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2њ
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	ђ@*
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЮ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*#
_output_shapes
:ђf@2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ђ?2	
runtimed
IdentityIdentitystrided_slice_2:output:0*
T0*
_output_shapes
:	ђ@2

Identityc

Identity_1Identitytranspose_1:y:0*
T0*#
_output_shapes
:ђf@2

Identity_1^

Identity_2Identitywhile:output:4*
T0*
_output_shapes
:	ђ@2

Identity_2^

Identity_3Identitywhile:output:5*
T0*
_output_shapes
:	ђ@2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*U
_input_shapesD
B:ђf:	ђ@:	ђ@:	ђ:	@ђ:ђ*=
api_implements+)lstm_277f58ef-eeec-44e1-b8f6-addb996e41ea*
api_preferred_deviceCPU*
go_backwards( *

time_major( :K G
#
_output_shapes
:ђf
 
_user_specified_nameinputs:GC

_output_shapes
:	ђ@
 
_user_specified_nameinit_h:GC

_output_shapes
:	ђ@
 
_user_specified_nameinit_c:GC

_output_shapes
:	ђ
 
_user_specified_namekernel:QM

_output_shapes
:	@ђ
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:ђ

_user_specified_namebias
О
§
?__inference_lstm_layer_call_and_return_conditional_losses_21934
input_1
input_2

lstm_21921

lstm_21923

lstm_21925
dense_21928
dense_21930
identityѕбdense/StatefulPartitionedCallбlstm/StatefulPartitionedCallё
lstm/StatefulPartitionedCallStatefulPartitionedCallinput_1
lstm_21921
lstm_21923
lstm_21925*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:	ђ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *H
fCRA
?__inference_lstm_layer_call_and_return_conditional_losses_218602
lstm/StatefulPartitionedCallЎ
dense/StatefulPartitionedCallStatefulPartitionedCall%lstm/StatefulPartitionedCall:output:0dense_21928dense_21930*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:	ђ
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_219002
dense/StatefulPartitionedCall▒
IdentityIdentity&dense/StatefulPartitionedCall:output:0^dense/StatefulPartitionedCall^lstm/StatefulPartitionedCall*
T0*
_output_shapes
:	ђ
2

Identity"
identityIdentity:output:0*E
_input_shapes4
2:ђf:ђf:::::2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2<
lstm/StatefulPartitionedCalllstm/StatefulPartitionedCall:L H
#
_output_shapes
:ђf
!
_user_specified_name	input_1:LH
#
_output_shapes
:ђf
!
_user_specified_name	input_2
Б-
╬
while_body_20156
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_bias├
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeМ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemб
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:         ђ2
while/MatMulЋ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:         ђ2
while/MatMul_1ё
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:         ђ2
	while/addЂ
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:         ђ2
while/BiasAdd\
while/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/Constp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dimО
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*`
_output_shapesN
L:         @:         @:         @:         @*
	num_split2
while/splitq
while/SigmoidSigmoidwhile/split:output:0*
T0*'
_output_shapes
:         @2
while/Sigmoidu
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*'
_output_shapes
:         @2
while/Sigmoid_1y
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         @2
	while/mulh

while/TanhTanhwhile/split:output:2*
T0*'
_output_shapes
:         @2

while/Tanhv
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*'
_output_shapes
:         @2
while/mul_1u
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*'
_output_shapes
:         @2
while/add_1u
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*'
_output_shapes
:         @2
while/Sigmoid_2g
while/Tanh_1Tanhwhile/add_1:z:0*
T0*'
_output_shapes
:         @2
while/Tanh_1z
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*'
_output_shapes
:         @2
while/mul_2М
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem`
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_2/yo
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: 2
while/add_2`
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_3/yv
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: 2
while/add_3^
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: 2
while/Identityq
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: 2
while/Identity_1b
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: 2
while/Identity_2Ї
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: 2
while/Identity_3s
while/Identity_4Identitywhile/mul_2:z:0*
T0*'
_output_shapes
:         @2
while/Identity_4s
while/Identity_5Identitywhile/add_1:z:0*
T0*'
_output_shapes
:         @2
while/Identity_5"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*b
_input_shapesQ
O: : : : :         @:         @: : :	ђ:	@ђ:ђ: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         @:-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	ђ:%	!

_output_shapes
:	@ђ:!


_output_shapes	
:ђ
Ѓ"
љ
?__inference_lstm_layer_call_and_return_conditional_losses_21860

inputs 
read_readvariableop_resource"
read_1_readvariableop_resource"
read_2_readvariableop_resource

identity_3ѕбRead/ReadVariableOpбRead_1/ReadVariableOpбRead_2/ReadVariableOpc
ShapeConst*
_output_shapes
:*
dtype0*!
valueB"ђ   f      2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2Р
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :У2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros/packed/1Ѓ
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constm
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*
_output_shapes
:	ђ@2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :@2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :У2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@2
zeros_1/packed/1Ѕ
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Constu
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*
_output_shapes
:	ђ@2	
zeros_1ѕ
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	ђ*
dtype02
Read/ReadVariableOpg
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	ђ2

Identityј
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes
:	@ђ*
dtype02
Read_1/ReadVariableOpm

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	@ђ2

Identity_1і
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:ђ*
dtype02
Read_2/ReadVariableOpi

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:ђ2

Identity_2ц
PartitionedCallPartitionedCallinputszeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *F
_output_shapes4
2:	ђ@:ђf@:	ђ@:	ђ@: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *(
f#R!
__inference_standard_lstm_215852
PartitionedCall«

Identity_3IdentityPartitionedCall:output:0^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*
T0*
_output_shapes
:	ђ@2

Identity_3"!

identity_3Identity_3:output:0*.
_input_shapes
:ђf:::2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:K G
#
_output_shapes
:ђf
 
_user_specified_nameinputs
Р
╝
while_cond_22105
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice3
/while_while_cond_22105___redundant_placeholder03
/while_while_cond_22105___redundant_placeholder13
/while_while_cond_22105___redundant_placeholder23
/while_while_cond_22105___redundant_placeholder3
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*C
_input_shapes2
0: : : : :	ђ@:	ђ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	ђ@:%!

_output_shapes
:	ђ@:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
ѓT
Є
&__forward_gpu_lstm_with_fallback_22464

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
transpose_9_perm
cudnnrnn
	transpose

expanddims
expanddims_1
concat_1

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
transpose_perm
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisѕu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permO
transpose_0	Transposeinputstranspose/perm:output:0*
T02
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dimu

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*#
_output_shapes
:ђ@2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dim{
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*#
_output_shapes
:ђ@2
ExpandDims_1P
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimЉ
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:@:@:@:@*
	num_split2
splitT
Const_1Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimА
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:@@:@@:@@:@@*
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:ђ*
dtype0*
valueBђ*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis|
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:ђ2
concatT
Const_2Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_2h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dimе
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:@:@:@:@:@:@:@:@*
	num_split2	
split_2e
Const_3Const*
_output_shapes
:*
dtype0*
valueB:
         2	
Const_3u
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm{
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:@2
transpose_1e
ReshapeReshapetranspose_1:y:0Const_3:output:0*
T0*
_output_shapes
:@2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:@2
transpose_2i
	Reshape_1Reshapetranspose_2:y:0Const_3:output:0*
T0*
_output_shapes
:@2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:@2
transpose_3i
	Reshape_2Reshapetranspose_3:y:0Const_3:output:0*
T0*
_output_shapes
:@2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm{
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:@2
transpose_4i
	Reshape_3Reshapetranspose_4:y:0Const_3:output:0*
T0*
_output_shapes
:@2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:@@2
transpose_5j
	Reshape_4Reshapetranspose_5:y:0Const_3:output:0*
T0*
_output_shapes	
:ђ 2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:@@2
transpose_6j
	Reshape_5Reshapetranspose_6:y:0Const_3:output:0*
T0*
_output_shapes	
:ђ 2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm}
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:@@2
transpose_7j
	Reshape_6Reshapetranspose_7:y:0Const_3:output:0*
T0*
_output_shapes	
:ђ 2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm}
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:@@2
transpose_8j
	Reshape_7Reshapetranspose_8:y:0Const_3:output:0*
T0*
_output_shapes	
:ђ 2
	Reshape_7j
	Reshape_8Reshapesplit_2:output:0Const_3:output:0*
T0*
_output_shapes
:@2
	Reshape_8j
	Reshape_9Reshapesplit_2:output:1Const_3:output:0*
T0*
_output_shapes
:@2
	Reshape_9l

Reshape_10Reshapesplit_2:output:2Const_3:output:0*
T0*
_output_shapes
:@2

Reshape_10l

Reshape_11Reshapesplit_2:output:3Const_3:output:0*
T0*
_output_shapes
:@2

Reshape_11l

Reshape_12Reshapesplit_2:output:4Const_3:output:0*
T0*
_output_shapes
:@2

Reshape_12l

Reshape_13Reshapesplit_2:output:5Const_3:output:0*
T0*
_output_shapes
:@2

Reshape_13l

Reshape_14Reshapesplit_2:output:6Const_3:output:0*
T0*
_output_shapes
:@2

Reshape_14l

Reshape_15Reshapesplit_2:output:7Const_3:output:0*
T0*
_output_shapes
:@2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axisљ

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T02

concat_1┬
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*E
_output_shapes3
1:fђ@:ђ@:ђ@:2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2Ь
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	ђ@*
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/permЃ
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*#
_output_shapes
:ђf@2
transpose_9s
SqueezeSqueezeCudnnRNN:output_h:0*
T0*
_output_shapes
:	ђ@*
squeeze_dims
 2	
Squeezew
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*
_output_shapes
:	ђ@*
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimeb
IdentityIdentitystrided_slice:output:0*
T0*
_output_shapes
:	ђ@2

Identityc

Identity_1Identitytranspose_9:y:0*
T0*#
_output_shapes
:ђf@2

Identity_1`

Identity_2IdentitySqueeze:output:0*
T0*
_output_shapes
:	ђ@2

Identity_2b

Identity_3IdentitySqueeze_1:output:0*
T0*
_output_shapes
:	ђ@2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"$
cudnnrnnCudnnRNN:reserve_space:0"

cudnnrnn_0CudnnRNN:output:0"!

cudnnrnn_1CudnnRNN:output_h:0"!

cudnnrnn_2CudnnRNN:output_c:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0*U
_input_shapesD
B:ђf:	ђ@:	ђ@:	ђ:	@ђ:ђ*=
api_implements+)lstm_567777ca-3aeb-4e05-a205-3dee308fbbc2*
api_preferred_deviceGPU*U
backward_function_name;9__inference___backward_gpu_lstm_with_fallback_22290_22465*
go_backwards( *

time_major( :K G
#
_output_shapes
:ђf
 
_user_specified_nameinputs:GC

_output_shapes
:	ђ@
 
_user_specified_nameinit_h:GC

_output_shapes
:	ђ@
 
_user_specified_nameinit_c:GC

_output_shapes
:	ђ
 
_user_specified_namekernel:QM

_output_shapes
:	@ђ
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:ђ

_user_specified_namebias
р+
╬
while_body_18827
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_bias├
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ђ      29
7while/TensorArrayV2Read/TensorListGetItem/element_shape╦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes
:	ђ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemџ
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0* 
_output_shapes
:
ђђ2
while/MatMulЇ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0* 
_output_shapes
:
ђђ2
while/MatMul_1|
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0* 
_output_shapes
:
ђђ2
	while/addy
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0* 
_output_shapes
:
ђђ2
while/BiasAdd\
while/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/Constp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dimи
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*@
_output_shapes.
,:	ђ@:	ђ@:	ђ@:	ђ@*
	num_split2
while/spliti
while/SigmoidSigmoidwhile/split:output:0*
T0*
_output_shapes
:	ђ@2
while/Sigmoidm
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*
_output_shapes
:	ђ@2
while/Sigmoid_1q
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*
_output_shapes
:	ђ@2
	while/mul`

while/TanhTanhwhile/split:output:2*
T0*
_output_shapes
:	ђ@2

while/Tanhn
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*
_output_shapes
:	ђ@2
while/mul_1m
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*
_output_shapes
:	ђ@2
while/add_1m
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*
_output_shapes
:	ђ@2
while/Sigmoid_2_
while/Tanh_1Tanhwhile/add_1:z:0*
T0*
_output_shapes
:	ђ@2
while/Tanh_1r
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*
_output_shapes
:	ђ@2
while/mul_2М
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem`
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_2/yo
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: 2
while/add_2`
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_3/yv
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: 2
while/add_3^
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: 2
while/Identityq
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: 2
while/Identity_1b
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: 2
while/Identity_2Ї
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: 2
while/Identity_3k
while/Identity_4Identitywhile/mul_2:z:0*
T0*
_output_shapes
:	ђ@2
while/Identity_4k
while/Identity_5Identitywhile/add_1:z:0*
T0*
_output_shapes
:	ђ@2
while/Identity_5"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*R
_input_shapesA
?: : : : :	ђ@:	ђ@: : :	ђ:	@ђ:ђ: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	ђ@:%!

_output_shapes
:	ђ@:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	ђ:%	!

_output_shapes
:	@ђ:!


_output_shapes	
:ђ
њ
┤
$__inference_lstm_layer_call_fn_22001
input_1
input_2
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
identityѕбStatefulPartitionedCallЎ
StatefulPartitionedCallStatefulPartitionedCallinput_1input_2unknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin
	2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:	ђ
*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8ѓ *H
fCRA
?__inference_lstm_layer_call_and_return_conditional_losses_219882
StatefulPartitionedCallє
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*
_output_shapes
:	ђ
2

Identity"
identityIdentity:output:0*E
_input_shapes4
2:ђf:ђf:::::22
StatefulPartitionedCallStatefulPartitionedCall:L H
#
_output_shapes
:ђf
!
_user_specified_name	input_1:LH
#
_output_shapes
:ђf
!
_user_specified_name	input_2
Б-
╬
while_body_23029
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_bias├
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeМ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemб
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:         ђ2
while/MatMulЋ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:         ђ2
while/MatMul_1ё
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:         ђ2
	while/addЂ
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:         ђ2
while/BiasAdd\
while/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/Constp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dimО
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*`
_output_shapesN
L:         @:         @:         @:         @*
	num_split2
while/splitq
while/SigmoidSigmoidwhile/split:output:0*
T0*'
_output_shapes
:         @2
while/Sigmoidu
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*'
_output_shapes
:         @2
while/Sigmoid_1y
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         @2
	while/mulh

while/TanhTanhwhile/split:output:2*
T0*'
_output_shapes
:         @2

while/Tanhv
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*'
_output_shapes
:         @2
while/mul_1u
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*'
_output_shapes
:         @2
while/add_1u
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*'
_output_shapes
:         @2
while/Sigmoid_2g
while/Tanh_1Tanhwhile/add_1:z:0*
T0*'
_output_shapes
:         @2
while/Tanh_1z
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*'
_output_shapes
:         @2
while/mul_2М
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem`
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_2/yo
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: 2
while/add_2`
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_3/yv
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: 2
while/add_3^
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: 2
while/Identityq
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: 2
while/Identity_1b
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: 2
while/Identity_2Ї
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: 2
while/Identity_3s
while/Identity_4Identitywhile/mul_2:z:0*
T0*'
_output_shapes
:         @2
while/Identity_4s
while/Identity_5Identitywhile/add_1:z:0*
T0*'
_output_shapes
:         @2
while/Identity_5"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*b
_input_shapesQ
O: : : : :         @:         @: : :	ђ:	@ђ:ђ: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         @:-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	ђ:%	!

_output_shapes
:	@ђ:!


_output_shapes	
:ђ
тH
╦
(__inference_gpu_lstm_with_fallback_22735

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4ѕu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permr
	transpose	Transposeinputstranspose/perm:output:0*
T0*#
_output_shapes
:fђ2
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dimu

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*#
_output_shapes
:ђ@2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dim{
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*#
_output_shapes
:ђ@2
ExpandDims_1P
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimЉ
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:@:@:@:@*
	num_split2
splitT
Const_1Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimА
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:@@:@@:@@:@@*
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:ђ*
dtype0*
valueBђ*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis|
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:ђ2
concatT
Const_2Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_2h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dimе
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:@:@:@:@:@:@:@:@*
	num_split2	
split_2e
Const_3Const*
_output_shapes
:*
dtype0*
valueB:
         2	
Const_3u
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm{
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:@2
transpose_1e
ReshapeReshapetranspose_1:y:0Const_3:output:0*
T0*
_output_shapes
:@2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:@2
transpose_2i
	Reshape_1Reshapetranspose_2:y:0Const_3:output:0*
T0*
_output_shapes
:@2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:@2
transpose_3i
	Reshape_2Reshapetranspose_3:y:0Const_3:output:0*
T0*
_output_shapes
:@2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm{
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:@2
transpose_4i
	Reshape_3Reshapetranspose_4:y:0Const_3:output:0*
T0*
_output_shapes
:@2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:@@2
transpose_5j
	Reshape_4Reshapetranspose_5:y:0Const_3:output:0*
T0*
_output_shapes	
:ђ 2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:@@2
transpose_6j
	Reshape_5Reshapetranspose_6:y:0Const_3:output:0*
T0*
_output_shapes	
:ђ 2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm}
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:@@2
transpose_7j
	Reshape_6Reshapetranspose_7:y:0Const_3:output:0*
T0*
_output_shapes	
:ђ 2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm}
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:@@2
transpose_8j
	Reshape_7Reshapetranspose_8:y:0Const_3:output:0*
T0*
_output_shapes	
:ђ 2
	Reshape_7j
	Reshape_8Reshapesplit_2:output:0Const_3:output:0*
T0*
_output_shapes
:@2
	Reshape_8j
	Reshape_9Reshapesplit_2:output:1Const_3:output:0*
T0*
_output_shapes
:@2
	Reshape_9l

Reshape_10Reshapesplit_2:output:2Const_3:output:0*
T0*
_output_shapes
:@2

Reshape_10l

Reshape_11Reshapesplit_2:output:3Const_3:output:0*
T0*
_output_shapes
:@2

Reshape_11l

Reshape_12Reshapesplit_2:output:4Const_3:output:0*
T0*
_output_shapes
:@2

Reshape_12l

Reshape_13Reshapesplit_2:output:5Const_3:output:0*
T0*
_output_shapes
:@2

Reshape_13l

Reshape_14Reshapesplit_2:output:6Const_3:output:0*
T0*
_output_shapes
:@2

Reshape_14l

Reshape_15Reshapesplit_2:output:7Const_3:output:0*
T0*
_output_shapes
:@2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axisг
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:ђє2

concat_1Й
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*E
_output_shapes3
1:fђ@:ђ@:ђ@:2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2Ь
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	ђ@*
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/permЃ
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*#
_output_shapes
:ђf@2
transpose_9s
SqueezeSqueezeCudnnRNN:output_h:0*
T0*
_output_shapes
:	ђ@*
squeeze_dims
 2	
Squeezew
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*
_output_shapes
:	ђ@*
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimeb
IdentityIdentitystrided_slice:output:0*
T0*
_output_shapes
:	ђ@2

Identityc

Identity_1Identitytranspose_9:y:0*
T0*#
_output_shapes
:ђf@2

Identity_1`

Identity_2IdentitySqueeze:output:0*
T0*
_output_shapes
:	ђ@2

Identity_2b

Identity_3IdentitySqueeze_1:output:0*
T0*
_output_shapes
:	ђ@2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*U
_input_shapesD
B:ђf:	ђ@:	ђ@:	ђ:	@ђ:ђ*=
api_implements+)lstm_277f58ef-eeec-44e1-b8f6-addb996e41ea*
api_preferred_deviceGPU*
go_backwards( *

time_major( :K G
#
_output_shapes
:ђf
 
_user_specified_nameinputs:GC

_output_shapes
:	ђ@
 
_user_specified_nameinit_h:GC

_output_shapes
:	ђ@
 
_user_specified_nameinit_c:GC

_output_shapes
:	ђ
 
_user_specified_namekernel:QM

_output_shapes
:	@ђ
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:ђ

_user_specified_namebias
йJ
╦
(__inference_gpu_lstm_with_fallback_23212

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4ѕu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permЃ
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  2
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim}

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:         @2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dimЃ
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*+
_output_shapes
:         @2
ExpandDims_1P
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimЉ
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:@:@:@:@*
	num_split2
splitT
Const_1Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimА
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:@@:@@:@@:@@*
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:ђ*
dtype0*
valueBђ*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis|
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:ђ2
concatT
Const_2Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_2h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dimе
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:@:@:@:@:@:@:@:@*
	num_split2	
split_2e
Const_3Const*
_output_shapes
:*
dtype0*
valueB:
         2	
Const_3u
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm{
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:@2
transpose_1e
ReshapeReshapetranspose_1:y:0Const_3:output:0*
T0*
_output_shapes
:@2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:@2
transpose_2i
	Reshape_1Reshapetranspose_2:y:0Const_3:output:0*
T0*
_output_shapes
:@2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:@2
transpose_3i
	Reshape_2Reshapetranspose_3:y:0Const_3:output:0*
T0*
_output_shapes
:@2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm{
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:@2
transpose_4i
	Reshape_3Reshapetranspose_4:y:0Const_3:output:0*
T0*
_output_shapes
:@2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:@@2
transpose_5j
	Reshape_4Reshapetranspose_5:y:0Const_3:output:0*
T0*
_output_shapes	
:ђ 2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:@@2
transpose_6j
	Reshape_5Reshapetranspose_6:y:0Const_3:output:0*
T0*
_output_shapes	
:ђ 2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm}
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:@@2
transpose_7j
	Reshape_6Reshapetranspose_7:y:0Const_3:output:0*
T0*
_output_shapes	
:ђ 2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm}
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:@@2
transpose_8j
	Reshape_7Reshapetranspose_8:y:0Const_3:output:0*
T0*
_output_shapes	
:ђ 2
	Reshape_7j
	Reshape_8Reshapesplit_2:output:0Const_3:output:0*
T0*
_output_shapes
:@2
	Reshape_8j
	Reshape_9Reshapesplit_2:output:1Const_3:output:0*
T0*
_output_shapes
:@2
	Reshape_9l

Reshape_10Reshapesplit_2:output:2Const_3:output:0*
T0*
_output_shapes
:@2

Reshape_10l

Reshape_11Reshapesplit_2:output:3Const_3:output:0*
T0*
_output_shapes
:@2

Reshape_11l

Reshape_12Reshapesplit_2:output:4Const_3:output:0*
T0*
_output_shapes
:@2

Reshape_12l

Reshape_13Reshapesplit_2:output:5Const_3:output:0*
T0*
_output_shapes
:@2

Reshape_13l

Reshape_14Reshapesplit_2:output:6Const_3:output:0*
T0*
_output_shapes
:@2

Reshape_14l

Reshape_15Reshapesplit_2:output:7Const_3:output:0*
T0*
_output_shapes
:@2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axisг
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:ђє2

concat_1▀
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*f
_output_shapesT
R:                  @:         @:         @:2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2Ш
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         @*
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/permћ
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*4
_output_shapes"
 :                  @2
transpose_9{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:         @*
squeeze_dims
 2	
Squeeze
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:         @*
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimej
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:         @2

Identityt

Identity_1Identitytranspose_9:y:0*
T0*4
_output_shapes"
 :                  @2

Identity_1h

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:         @2

Identity_2j

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:         @2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*v
_input_shapese
c:                  :         @:         @:	ђ:	@ђ:ђ*=
api_implements+)lstm_de577cae-309e-4566-b5b0-e95948335ab9*
api_preferred_deviceGPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs:OK
'
_output_shapes
:         @
 
_user_specified_nameinit_h:OK
'
_output_shapes
:         @
 
_user_specified_nameinit_c:GC

_output_shapes
:	ђ
 
_user_specified_namekernel:QM

_output_shapes
:	@ђ
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:ђ

_user_specified_namebias
р+
╬
while_body_21499
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_bias├
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ђ      29
7while/TensorArrayV2Read/TensorListGetItem/element_shape╦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes
:	ђ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemџ
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0* 
_output_shapes
:
ђђ2
while/MatMulЇ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0* 
_output_shapes
:
ђђ2
while/MatMul_1|
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0* 
_output_shapes
:
ђђ2
	while/addy
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0* 
_output_shapes
:
ђђ2
while/BiasAdd\
while/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/Constp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dimи
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*@
_output_shapes.
,:	ђ@:	ђ@:	ђ@:	ђ@*
	num_split2
while/spliti
while/SigmoidSigmoidwhile/split:output:0*
T0*
_output_shapes
:	ђ@2
while/Sigmoidm
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*
_output_shapes
:	ђ@2
while/Sigmoid_1q
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*
_output_shapes
:	ђ@2
	while/mul`

while/TanhTanhwhile/split:output:2*
T0*
_output_shapes
:	ђ@2

while/Tanhn
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*
_output_shapes
:	ђ@2
while/mul_1m
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*
_output_shapes
:	ђ@2
while/add_1m
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*
_output_shapes
:	ђ@2
while/Sigmoid_2_
while/Tanh_1Tanhwhile/add_1:z:0*
T0*
_output_shapes
:	ђ@2
while/Tanh_1r
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*
_output_shapes
:	ђ@2
while/mul_2М
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem`
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_2/yo
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: 2
while/add_2`
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_3/yv
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: 2
while/add_3^
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: 2
while/Identityq
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: 2
while/Identity_1b
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: 2
while/Identity_2Ї
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: 2
while/Identity_3k
while/Identity_4Identitywhile/mul_2:z:0*
T0*
_output_shapes
:	ђ@2
while/Identity_4k
while/Identity_5Identitywhile/add_1:z:0*
T0*
_output_shapes
:	ђ@2
while/Identity_5"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*R
_input_shapesA
?: : : : :	ђ@:	ђ@: : :	ђ:	@ђ:ђ: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	ђ@:%!

_output_shapes
:	ђ@:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	ђ:%	!

_output_shapes
:	@ђ:!


_output_shapes	
:ђ"▒L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Н
serving_default┴
7
input_1,
serving_default_input_1:0ђf
7
input_2,
serving_default_input_2:0ђf1
dense(
StatefulPartitionedCall:0	ђ
tensorflow/serving/predict:┘А
э,
layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
	optimizer
trainable_variables
regularization_losses
	variables
		keras_api


signatures
*M&call_and_return_all_conditional_losses
N__call__
O_default_save_signature"─*
_tf_keras_networkе*{"class_name": "Functional", "name": "lstm", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "lstm", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [128, 102, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_1"}, "name": "input_1", "inbound_nodes": []}, {"class_name": "LSTM", "config": {"name": "lstm", "trainable": true, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 64, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}, "name": "lstm", "inbound_nodes": [[["input_1", 0, 0, {}]]]}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [128, 102, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_2"}, "name": "input_2", "inbound_nodes": []}, {"class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 10, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense", "inbound_nodes": [[["lstm", 0, 0, {}]]]}], "input_layers": {"class_name": "__tuple__", "items": [["input_1", 0, 0], ["input_2", 0, 0]]}, "output_layers": [["dense", 0, 0]]}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 102, 1]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}, {"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 102, 1]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "__tuple__", "items": [{"class_name": "TensorShape", "items": [128, 102, 1]}, {"class_name": "TensorShape", "items": [128, 102, 1]}]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "lstm", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [128, 102, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_1"}, "name": "input_1", "inbound_nodes": []}, {"class_name": "LSTM", "config": {"name": "lstm", "trainable": true, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 64, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}, "name": "lstm", "inbound_nodes": [[["input_1", 0, 0, {}]]]}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [128, 102, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_2"}, "name": "input_2", "inbound_nodes": []}, {"class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 10, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense", "inbound_nodes": [[["lstm", 0, 0, {}]]]}], "input_layers": {"class_name": "__tuple__", "items": [["input_1", 0, 0], ["input_2", 0, 0]]}, "output_layers": [["dense", 0, 0]]}}, "training_config": {"loss": {"class_name": "SparseCategoricalCrossentropy", "config": {"reduction": "auto", "name": "sparse_categorical_crossentropy", "from_logits": true}}, "metrics": [[{"class_name": "SparseCategoricalAccuracy", "config": {"name": "sparse_categorical_accuracy", "dtype": "float32"}}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.00010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
ы"Ь
_tf_keras_input_layer╬{"class_name": "InputLayer", "name": "input_1", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [128, 102, 1]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [128, 102, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_1"}}
и
cell

state_spec
trainable_variables
regularization_losses
	variables
	keras_api
*P&call_and_return_all_conditional_losses
Q__call__"ј

_tf_keras_rnn_layer­	{"class_name": "LSTM", "name": "lstm", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "lstm", "trainable": true, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 64, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 1]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [128, 102, 1]}}
ы"Ь
_tf_keras_input_layer╬{"class_name": "InputLayer", "name": "input_2", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [128, 102, 1]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [128, 102, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_2"}}
ь

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
*R&call_and_return_all_conditional_losses
S__call__"╚
_tf_keras_layer«{"class_name": "Dense", "name": "dense", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 10, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [128, 64]}}
Г
iter

beta_1

beta_2
	decay
learning_ratemCmDmEmFmGvHvIvJvKvL"
	optimizer
C
0
1
2
3
4"
trackable_list_wrapper
 "
trackable_list_wrapper
C
0
1
2
3
4"
trackable_list_wrapper
╩
non_trainable_variables
 layer_metrics

!layers
trainable_variables
"layer_regularization_losses
regularization_losses
#metrics
	variables
N__call__
O_default_save_signature
*M&call_and_return_all_conditional_losses
&M"call_and_return_conditional_losses"
_generic_user_object
,
Tserving_default"
signature_map
ц

kernel
recurrent_kernel
bias
$trainable_variables
%regularization_losses
&	variables
'	keras_api
*U&call_and_return_all_conditional_losses
V__call__"ж
_tf_keras_layer¤{"class_name": "LSTMCell", "name": "lstm_cell", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "lstm_cell", "trainable": true, "dtype": "float32", "units": 64, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}}
 "
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
╣
(non_trainable_variables
)layer_metrics

*layers
trainable_variables
+layer_regularization_losses
regularization_losses
,metrics

-states
	variables
Q__call__
*P&call_and_return_all_conditional_losses
&P"call_and_return_conditional_losses"
_generic_user_object
:@
2dense/kernel
:
2
dense/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
Г
.non_trainable_variables
/layer_metrics

0layers
trainable_variables
1layer_regularization_losses
regularization_losses
2metrics
	variables
S__call__
*R&call_and_return_all_conditional_losses
&R"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
(:&	ђ2lstm/lstm_cell/kernel
2:0	@ђ2lstm/lstm_cell/recurrent_kernel
": ђ2lstm/lstm_cell/bias
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
<
0
1
2
3"
trackable_list_wrapper
 "
trackable_list_wrapper
.
30
41"
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
Г
5non_trainable_variables
6layer_metrics

7layers
$trainable_variables
8layer_regularization_losses
%regularization_losses
9metrics
&	variables
V__call__
*U&call_and_return_all_conditional_losses
&U"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╗
	:total
	;count
<	variables
=	keras_api"ё
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}
Ј
	>total
	?count
@
_fn_kwargs
A	variables
B	keras_api"╚
_tf_keras_metricГ{"class_name": "SparseCategoricalAccuracy", "name": "sparse_categorical_accuracy", "dtype": "float32", "config": {"name": "sparse_categorical_accuracy", "dtype": "float32"}}
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
:  (2total
:  (2count
.
:0
;1"
trackable_list_wrapper
-
<	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
>0
?1"
trackable_list_wrapper
-
A	variables"
_generic_user_object
#:!@
2Adam/dense/kernel/m
:
2Adam/dense/bias/m
-:+	ђ2Adam/lstm/lstm_cell/kernel/m
7:5	@ђ2&Adam/lstm/lstm_cell/recurrent_kernel/m
':%ђ2Adam/lstm/lstm_cell/bias/m
#:!@
2Adam/dense/kernel/v
:
2Adam/dense/bias/v
-:+	ђ2Adam/lstm/lstm_cell/kernel/v
7:5	@ђ2&Adam/lstm/lstm_cell/recurrent_kernel/v
':%ђ2Adam/lstm/lstm_cell/bias/v
╩2К
?__inference_lstm_layer_call_and_return_conditional_losses_22473
?__inference_lstm_layer_call_and_return_conditional_losses_21934
?__inference_lstm_layer_call_and_return_conditional_losses_22919
?__inference_lstm_layer_call_and_return_conditional_losses_21917└
и▓│
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
я2█
$__inference_lstm_layer_call_fn_22935
$__inference_lstm_layer_call_fn_22951
$__inference_lstm_layer_call_fn_21968
$__inference_lstm_layer_call_fn_22001└
и▓│
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
■2ч
 __inference__wrapped_model_19194о
І▓Є
FullArgSpec
argsџ 
varargsjargs
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *FбC
Aб>
і
input_1ђf
і
input_2ђf
▀2▄
?__inference_lstm_layer_call_and_return_conditional_losses_23391
?__inference_lstm_layer_call_and_return_conditional_losses_23831
?__inference_lstm_layer_call_and_return_conditional_losses_24292
?__inference_lstm_layer_call_and_return_conditional_losses_24731Н
╠▓╚
FullArgSpecB
args:џ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsџ

 
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
з2­
$__inference_lstm_layer_call_fn_24753
$__inference_lstm_layer_call_fn_24742
$__inference_lstm_layer_call_fn_23842
$__inference_lstm_layer_call_fn_23853Н
╠▓╚
FullArgSpecB
args:џ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsџ

 
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
Ж2у
@__inference_dense_layer_call_and_return_conditional_losses_24763б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
¤2╠
%__inference_dense_layer_call_fn_24772б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЛB╬
#__inference_signature_wrapper_22027input_1input_2"ћ
Ї▓Ѕ
FullArgSpec
argsџ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
─2┴Й
х▓▒
FullArgSpec3
args+џ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
─2┴Й
х▓▒
FullArgSpec3
args+џ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 Ц
 __inference__wrapped_model_19194ђPбM
FбC
Aб>
і
input_1ђf
і
input_2ђf
ф "%ф"
 
denseі
dense	ђ
љ
@__inference_dense_layer_call_and_return_conditional_losses_24763L'б$
б
і
inputs	ђ@
ф "б
і
0	ђ

џ h
%__inference_dense_layer_call_fn_24772?'б$
б
і
inputs	ђ@
ф "і	ђ
─
?__inference_lstm_layer_call_and_return_conditional_losses_21917ђXбU
NбK
Aб>
і
input_1ђf
і
input_2ђf
p

 
ф "б
і
0	ђ

џ ─
?__inference_lstm_layer_call_and_return_conditional_losses_21934ђXбU
NбK
Aб>
і
input_1ђf
і
input_2ђf
p 

 
ф "б
і
0	ђ

џ к
?__inference_lstm_layer_call_and_return_conditional_losses_22473ѓZбW
PбM
Cб@
і
inputs/0ђf
і
inputs/1ђf
p

 
ф "б
і
0	ђ

џ к
?__inference_lstm_layer_call_and_return_conditional_losses_22919ѓZбW
PбM
Cб@
і
inputs/0ђf
і
inputs/1ђf
p 

 
ф "б
і
0	ђ

џ └
?__inference_lstm_layer_call_and_return_conditional_losses_23391}OбL
EбB
4џ1
/і,
inputs/0                  

 
p

 
ф "%б"
і
0         @
џ └
?__inference_lstm_layer_call_and_return_conditional_losses_23831}OбL
EбB
4џ1
/і,
inputs/0                  

 
p 

 
ф "%б"
і
0         @
џ а
?__inference_lstm_layer_call_and_return_conditional_losses_24292]7б4
-б*
і
inputsђf

 
p

 
ф "б
і
0	ђ@
џ а
?__inference_lstm_layer_call_and_return_conditional_losses_24731]7б4
-б*
і
inputsђf

 
p 

 
ф "б
і
0	ђ@
џ Џ
$__inference_lstm_layer_call_fn_21968sXбU
NбK
Aб>
і
input_1ђf
і
input_2ђf
p

 
ф "і	ђ
Џ
$__inference_lstm_layer_call_fn_22001sXбU
NбK
Aб>
і
input_1ђf
і
input_2ђf
p 

 
ф "і	ђ
Ю
$__inference_lstm_layer_call_fn_22935uZбW
PбM
Cб@
і
inputs/0ђf
і
inputs/1ђf
p

 
ф "і	ђ
Ю
$__inference_lstm_layer_call_fn_22951uZбW
PбM
Cб@
і
inputs/0ђf
і
inputs/1ђf
p 

 
ф "і	ђ
ў
$__inference_lstm_layer_call_fn_23842pOбL
EбB
4џ1
/і,
inputs/0                  

 
p

 
ф "і         @ў
$__inference_lstm_layer_call_fn_23853pOбL
EбB
4џ1
/і,
inputs/0                  

 
p 

 
ф "і         @x
$__inference_lstm_layer_call_fn_24742P7б4
-б*
і
inputsђf

 
p

 
ф "і	ђ@x
$__inference_lstm_layer_call_fn_24753P7б4
-б*
і
inputsђf

 
p 

 
ф "і	ђ@╣
#__inference_signature_wrapper_22027Љaб^
б 
WфT
(
input_1і
input_1ђf
(
input_2і
input_2ђf"%ф"
 
denseі
dense	ђ
