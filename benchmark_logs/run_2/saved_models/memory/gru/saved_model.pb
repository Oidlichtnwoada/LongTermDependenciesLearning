▀Я,
Хъ
B
AddV2
x"T
y"T
z"T"
Ttype:
2	АР
B
AssignVariableOp
resource
value"dtype"
dtypetypeИ
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
delete_old_dirsbool(И
=
Mul
x"T
y"T
z"T"
Ttype:
2	Р
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
dtypetypeИ
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
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
╛
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
executor_typestring И
Ъ
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
Ў
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
;
Sub
x"T
y"T
z"T"
Ttype:
2	
-
Tanh
x"T
y"T"
Ttype:

2
Т
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type
output_handle"
element_dtypetype"

shape_typetype:
2	
Б
TensorListReserve
element_shape"
shape_type
num_elements

handle"
element_dtypetype"

shape_typetype:
2	
И
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
P
Unpack

value"T
output"T*num"
numint("	
Ttype"
axisint 
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И"serve*2.4.12v2.4.0-49-g85c8b2a817f8Вс*
t
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:P
*
shared_namedense/kernel
m
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes

:P
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
Г
gru/gru_cell/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Ё*$
shared_namegru/gru_cell/kernel
|
'gru/gru_cell/kernel/Read/ReadVariableOpReadVariableOpgru/gru_cell/kernel*
_output_shapes
:	Ё*
dtype0
Ч
gru/gru_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	PЁ*.
shared_namegru/gru_cell/recurrent_kernel
Р
1gru/gru_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOpgru/gru_cell/recurrent_kernel*
_output_shapes
:	PЁ*
dtype0

gru/gru_cell/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Ё*"
shared_namegru/gru_cell/bias
x
%gru/gru_cell/bias/Read/ReadVariableOpReadVariableOpgru/gru_cell/bias*
_output_shapes
:	Ё*
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
В
Adam/dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:P
*$
shared_nameAdam/dense/kernel/m
{
'Adam/dense/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/m*
_output_shapes

:P
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
С
Adam/gru/gru_cell/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Ё*+
shared_nameAdam/gru/gru_cell/kernel/m
К
.Adam/gru/gru_cell/kernel/m/Read/ReadVariableOpReadVariableOpAdam/gru/gru_cell/kernel/m*
_output_shapes
:	Ё*
dtype0
е
$Adam/gru/gru_cell/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	PЁ*5
shared_name&$Adam/gru/gru_cell/recurrent_kernel/m
Ю
8Adam/gru/gru_cell/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp$Adam/gru/gru_cell/recurrent_kernel/m*
_output_shapes
:	PЁ*
dtype0
Н
Adam/gru/gru_cell/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Ё*)
shared_nameAdam/gru/gru_cell/bias/m
Ж
,Adam/gru/gru_cell/bias/m/Read/ReadVariableOpReadVariableOpAdam/gru/gru_cell/bias/m*
_output_shapes
:	Ё*
dtype0
В
Adam/dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:P
*$
shared_nameAdam/dense/kernel/v
{
'Adam/dense/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/v*
_output_shapes

:P
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
С
Adam/gru/gru_cell/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Ё*+
shared_nameAdam/gru/gru_cell/kernel/v
К
.Adam/gru/gru_cell/kernel/v/Read/ReadVariableOpReadVariableOpAdam/gru/gru_cell/kernel/v*
_output_shapes
:	Ё*
dtype0
е
$Adam/gru/gru_cell/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	PЁ*5
shared_name&$Adam/gru/gru_cell/recurrent_kernel/v
Ю
8Adam/gru/gru_cell/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp$Adam/gru/gru_cell/recurrent_kernel/v*
_output_shapes
:	PЁ*
dtype0
Н
Adam/gru/gru_cell/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Ё*)
shared_nameAdam/gru/gru_cell/bias/v
Ж
,Adam/gru/gru_cell/bias/v/Read/ReadVariableOpReadVariableOpAdam/gru/gru_cell/bias/v*
_output_shapes
:	Ё*
dtype0

NoOpNoOp
Ь"
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*╫!
value═!B╩! B├!
┘
layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
	optimizer
	variables
trainable_variables
regularization_losses
		keras_api


signatures
 
l
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
 
h

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
Ъ
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
#
0
1
2
3
4
 
н
	variables
layer_regularization_losses
trainable_variables
 metrics

!layers
"layer_metrics
regularization_losses
#non_trainable_variables
 
~

kernel
recurrent_kernel
bias
$	variables
%trainable_variables
&regularization_losses
'	keras_api
 

0
1
2

0
1
2
 
╣
	variables
(layer_regularization_losses
trainable_variables
)metrics

*layers

+states
,layer_metrics
regularization_losses
-non_trainable_variables
XV
VARIABLE_VALUEdense/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUE
dense/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
н
	variables
.layer_regularization_losses
trainable_variables
/metrics

0layers
1layer_metrics
regularization_losses
2non_trainable_variables
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
OM
VARIABLE_VALUEgru/gru_cell/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEgru/gru_cell/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
MK
VARIABLE_VALUEgru/gru_cell/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
 

30
41

0
1
2
3
 
 

0
1
2

0
1
2
 
н
$	variables
5layer_regularization_losses
%trainable_variables
6metrics

7layers
8layer_metrics
&regularization_losses
9non_trainable_variables
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
rp
VARIABLE_VALUEAdam/gru/gru_cell/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/gru/gru_cell/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
pn
VARIABLE_VALUEAdam/gru/gru_cell/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/dense/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUEAdam/gru/gru_cell/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/gru/gru_cell/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
pn
VARIABLE_VALUEAdam/gru/gru_cell/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
r
serving_default_input_1Placeholder*#
_output_shapes
:Аf*
dtype0*
shape:Аf
r
serving_default_input_2Placeholder*#
_output_shapes
:Аf*
dtype0*
shape:Аf
п
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1serving_default_input_2gru/gru_cell/kernelgru/gru_cell/recurrent_kernelgru/gru_cell/biasdense/kernel
dense/bias*
Tin
	2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:	А
*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8В *-
f(R&
$__inference_signature_wrapper_181258
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
с	
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp'gru/gru_cell/kernel/Read/ReadVariableOp1gru/gru_cell/recurrent_kernel/Read/ReadVariableOp%gru/gru_cell/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp'Adam/dense/kernel/m/Read/ReadVariableOp%Adam/dense/bias/m/Read/ReadVariableOp.Adam/gru/gru_cell/kernel/m/Read/ReadVariableOp8Adam/gru/gru_cell/recurrent_kernel/m/Read/ReadVariableOp,Adam/gru/gru_cell/bias/m/Read/ReadVariableOp'Adam/dense/kernel/v/Read/ReadVariableOp%Adam/dense/bias/v/Read/ReadVariableOp.Adam/gru/gru_cell/kernel/v/Read/ReadVariableOp8Adam/gru/gru_cell/recurrent_kernel/v/Read/ReadVariableOp,Adam/gru/gru_cell/bias/v/Read/ReadVariableOpConst*%
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
GPU 2J 8В *(
f#R!
__inference__traced_save_183785
№
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense/kernel
dense/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rategru/gru_cell/kernelgru/gru_cell/recurrent_kernelgru/gru_cell/biastotalcounttotal_1count_1Adam/dense/kernel/mAdam/dense/bias/mAdam/gru/gru_cell/kernel/m$Adam/gru/gru_cell/recurrent_kernel/mAdam/gru/gru_cell/bias/mAdam/dense/kernel/vAdam/dense/bias/vAdam/gru/gru_cell/kernel/v$Adam/gru/gru_cell/recurrent_kernel/vAdam/gru/gru_cell/bias/v*$
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
GPU 2J 8В *+
f&R$
"__inference__traced_restore_183867С√)
О1
т
while_body_182952
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0
while_biasadd_unstack_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_1_unstack_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel
while_biasadd_unstack#
while_matmul_1_recurrent_kernel
while_biasadd_1_unstack├
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"А      29
7while/TensorArrayV2Read/TensorListGetItem/element_shape╦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes
:	А*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemЪ
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0* 
_output_shapes
:
АЁ2
while/MatMulЕ
while/BiasAddBiasAddwhile/MatMul:product:0while_biasadd_unstack_0*
T0* 
_output_shapes
:
АЁ2
while/BiasAdd\
while/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/Constp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dimм
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*5
_output_shapes#
!:	АP:	АP:	АP*
	num_split2
while/splitН
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0* 
_output_shapes
:
АЁ2
while/MatMul_1Н
while/BiasAdd_1BiasAddwhile/MatMul_1:product:0while_biasadd_1_unstack_0*
T0* 
_output_shapes
:
АЁ2
while/BiasAdd_1`
while/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
while/Const_1t
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split_1/split_dim┤
while/split_1Split while/split_1/split_dim:output:0while/BiasAdd_1:output:0*
T0*5
_output_shapes#
!:	АP:	АP:	АP*
	num_split2
while/split_1w
	while/addAddV2while/split:output:0while/split_1:output:0*
T0*
_output_shapes
:	АP2
	while/addb
while/SigmoidSigmoidwhile/add:z:0*
T0*
_output_shapes
:	АP2
while/Sigmoid{
while/add_1AddV2while/split:output:1while/split_1:output:1*
T0*
_output_shapes
:	АP2
while/add_1h
while/Sigmoid_1Sigmoidwhile/add_1:z:0*
T0*
_output_shapes
:	АP2
while/Sigmoid_1t
	while/mulMulwhile/Sigmoid_1:y:0while/split_1:output:2*
T0*
_output_shapes
:	АP2
	while/mulr
while/add_2AddV2while/split:output:2while/mul:z:0*
T0*
_output_shapes
:	АP2
while/add_2[

while/TanhTanhwhile/add_2:z:0*
T0*
_output_shapes
:	АP2

while/Tanhs
while/mul_1Mulwhile/Sigmoid:y:0while_placeholder_2*
T0*
_output_shapes
:	АP2
while/mul_1_
while/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
while/sub/xp
	while/subSubwhile/sub/x:output:0while/Sigmoid:y:0*
T0*
_output_shapes
:	АP2
	while/subj
while/mul_2Mulwhile/sub:z:0while/Tanh:y:0*
T0*
_output_shapes
:	АP2
while/mul_2o
while/add_3AddV2while/mul_1:z:0while/mul_2:z:0*
T0*
_output_shapes
:	АP2
while/add_3╙
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/add_3:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem`
while/add_4/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_4/yo
while/add_4AddV2while_placeholderwhile/add_4/y:output:0*
T0*
_output_shapes
: 2
while/add_4`
while/add_5/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_5/yv
while/add_5AddV2while_while_loop_counterwhile/add_5/y:output:0*
T0*
_output_shapes
: 2
while/add_5^
while/IdentityIdentitywhile/add_5:z:0*
T0*
_output_shapes
: 2
while/Identityq
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: 2
while/Identity_1b
while/Identity_2Identitywhile/add_4:z:0*
T0*
_output_shapes
: 2
while/Identity_2Н
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: 2
while/Identity_3k
while/Identity_4Identitywhile/add_3:z:0*
T0*
_output_shapes
:	АP2
while/Identity_4"4
while_biasadd_1_unstackwhile_biasadd_1_unstack_0"0
while_biasadd_unstackwhile_biasadd_unstack_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*N
_input_shapes=
;: : : : :	АP: : :	Ё:Ё:	PЁ:Ё: 
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
:	АP:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	Ё:!

_output_shapes	
:Ё:%	!

_output_shapes
:	PЁ:!


_output_shapes	
:Ё
н=
п
(__inference_gpu_gru_with_fallback_182713

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3Иu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permГ
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
:         P2

ExpandDimsP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimЗ
splitSplitsplit/split_dim:output:0kernel*
T0*2
_output_shapes 
:P:P:P*
	num_split2
splitT
Const_1Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimЧ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*2
_output_shapes 
:PP:PP:PP*
	num_split2	
split_1q
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
         2
Reshape/shapea
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:р2	
ReshapeT
Const_2Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_2h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dimЭ
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*8
_output_shapes&
$:P:P:P:P:P:P*
	num_split2	
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
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0*
_output_shapes

:P2
transpose_1i
	Reshape_1Reshapetranspose_1:y:0Const_3:output:0*
T0*
_output_shapes
:P2
	Reshape_1u
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0*
_output_shapes

:P2
transpose_2i
	Reshape_2Reshapetranspose_2:y:0Const_3:output:0*
T0*
_output_shapes
:P2
	Reshape_2u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:P2
transpose_3i
	Reshape_3Reshapetranspose_3:y:0Const_3:output:0*
T0*
_output_shapes
:P2
	Reshape_3u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm}
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0*
_output_shapes

:PP2
transpose_4j
	Reshape_4Reshapetranspose_4:y:0Const_3:output:0*
T0*
_output_shapes	
:А22
	Reshape_4u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:PP2
transpose_5j
	Reshape_5Reshapetranspose_5:y:0Const_3:output:0*
T0*
_output_shapes	
:А22
	Reshape_5u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0*
_output_shapes

:PP2
transpose_6j
	Reshape_6Reshapetranspose_6:y:0Const_3:output:0*
T0*
_output_shapes	
:А22
	Reshape_6j
	Reshape_7Reshapesplit_2:output:1Const_3:output:0*
T0*
_output_shapes
:P2
	Reshape_7j
	Reshape_8Reshapesplit_2:output:0Const_3:output:0*
T0*
_output_shapes
:P2
	Reshape_8j
	Reshape_9Reshapesplit_2:output:2Const_3:output:0*
T0*
_output_shapes
:P2
	Reshape_9l

Reshape_10Reshapesplit_2:output:4Const_3:output:0*
T0*
_output_shapes
:P2

Reshape_10l

Reshape_11Reshapesplit_2:output:3Const_3:output:0*
T0*
_output_shapes
:P2

Reshape_11l

Reshape_12Reshapesplit_2:output:5Const_3:output:0*
T0*
_output_shapes
:P2

Reshape_12\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis╒
concatConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0*
_output_shapes

:╨Ы2
concati
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    2
CudnnRNN/input_c▀
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat:output:0*
T0*Q
_output_shapes?
=:                  P:         P: :*
rnn_modegru2

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
strided_slice/stack_2Ў
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         P*
shrink_axis_mask2
strided_slicey
transpose_7/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_7/permФ
transpose_7	TransposeCudnnRNN:output:0transpose_7/perm:output:0*
T0*4
_output_shapes"
 :                  P2
transpose_7{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:         P*
squeeze_dims
 2	
Squeezef
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
:         P2

Identityt

Identity_1Identitytranspose_7:y:0*
T0*4
_output_shapes"
 :                  P2

Identity_1h

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:         P2

Identity_2W

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*g
_input_shapesV
T:                  :         P:	Ё:	PЁ:	Ё*<
api_implements*(gru_60e5b8f7-db2b-490b-9f7d-d80a2ddf94dc*
api_preferred_deviceGPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs:OK
'
_output_shapes
:         P
 
_user_specified_nameinit_h:GC

_output_shapes
:	Ё
 
_user_specified_namekernel:QM

_output_shapes
:	PЁ
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	Ё

_user_specified_namebias
Юf
╧
"__inference__traced_restore_183867
file_prefix!
assignvariableop_dense_kernel!
assignvariableop_1_dense_bias 
assignvariableop_2_adam_iter"
assignvariableop_3_adam_beta_1"
assignvariableop_4_adam_beta_2!
assignvariableop_5_adam_decay)
%assignvariableop_6_adam_learning_rate*
&assignvariableop_7_gru_gru_cell_kernel4
0assignvariableop_8_gru_gru_cell_recurrent_kernel(
$assignvariableop_9_gru_gru_cell_bias
assignvariableop_10_total
assignvariableop_11_count
assignvariableop_12_total_1
assignvariableop_13_count_1+
'assignvariableop_14_adam_dense_kernel_m)
%assignvariableop_15_adam_dense_bias_m2
.assignvariableop_16_adam_gru_gru_cell_kernel_m<
8assignvariableop_17_adam_gru_gru_cell_recurrent_kernel_m0
,assignvariableop_18_adam_gru_gru_cell_bias_m+
'assignvariableop_19_adam_dense_kernel_v)
%assignvariableop_20_adam_dense_bias_v2
.assignvariableop_21_adam_gru_gru_cell_kernel_v<
8assignvariableop_22_adam_gru_gru_cell_recurrent_kernel_v0
,assignvariableop_23_adam_gru_gru_cell_bias_v
identity_25ИвAssignVariableOpвAssignVariableOp_1вAssignVariableOp_10вAssignVariableOp_11вAssignVariableOp_12вAssignVariableOp_13вAssignVariableOp_14вAssignVariableOp_15вAssignVariableOp_16вAssignVariableOp_17вAssignVariableOp_18вAssignVariableOp_19вAssignVariableOp_2вAssignVariableOp_20вAssignVariableOp_21вAssignVariableOp_22вAssignVariableOp_23вAssignVariableOp_3вAssignVariableOp_4вAssignVariableOp_5вAssignVariableOp_6вAssignVariableOp_7вAssignVariableOp_8вAssignVariableOp_9о
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*║
value░BнB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names└
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*E
value<B:B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slicesи
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

IdentityЬ
AssignVariableOpAssignVariableOpassignvariableop_dense_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1в
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_2б
AssignVariableOp_2AssignVariableOpassignvariableop_2_adam_iterIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3г
AssignVariableOp_3AssignVariableOpassignvariableop_3_adam_beta_1Identity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4г
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_beta_2Identity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5в
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_decayIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6к
AssignVariableOp_6AssignVariableOp%assignvariableop_6_adam_learning_rateIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7л
AssignVariableOp_7AssignVariableOp&assignvariableop_7_gru_gru_cell_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8╡
AssignVariableOp_8AssignVariableOp0assignvariableop_8_gru_gru_cell_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9й
AssignVariableOp_9AssignVariableOp$assignvariableop_9_gru_gru_cell_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10б
AssignVariableOp_10AssignVariableOpassignvariableop_10_totalIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11б
AssignVariableOp_11AssignVariableOpassignvariableop_11_countIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12г
AssignVariableOp_12AssignVariableOpassignvariableop_12_total_1Identity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13г
AssignVariableOp_13AssignVariableOpassignvariableop_13_count_1Identity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14п
AssignVariableOp_14AssignVariableOp'assignvariableop_14_adam_dense_kernel_mIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15н
AssignVariableOp_15AssignVariableOp%assignvariableop_15_adam_dense_bias_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16╢
AssignVariableOp_16AssignVariableOp.assignvariableop_16_adam_gru_gru_cell_kernel_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17└
AssignVariableOp_17AssignVariableOp8assignvariableop_17_adam_gru_gru_cell_recurrent_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18┤
AssignVariableOp_18AssignVariableOp,assignvariableop_18_adam_gru_gru_cell_bias_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19п
AssignVariableOp_19AssignVariableOp'assignvariableop_19_adam_dense_kernel_vIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20н
AssignVariableOp_20AssignVariableOp%assignvariableop_20_adam_dense_bias_vIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21╢
AssignVariableOp_21AssignVariableOp.assignvariableop_21_adam_gru_gru_cell_kernel_vIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22└
AssignVariableOp_22AssignVariableOp8assignvariableop_22_adam_gru_gru_cell_recurrent_kernel_vIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23┤
AssignVariableOp_23AssignVariableOp,assignvariableop_23_adam_gru_gru_cell_bias_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_239
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOpю
Identity_24Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_24с
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
Ў
▐
while_cond_181730
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice4
0while_while_cond_181730___redundant_placeholder04
0while_while_cond_181730___redundant_placeholder14
0while_while_cond_181730___redundant_placeholder24
0while_while_cond_181730___redundant_placeholder34
0while_while_cond_181730___redundant_placeholder4
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
while_identitywhile/Identity:output:0*<
_input_shapes+
): : : : :	АP: :::::: 
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
:	АP:

_output_shapes
: :

_output_shapes
::
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
Ж	
▐
while_cond_179994
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice4
0while_while_cond_179994___redundant_placeholder04
0while_while_cond_179994___redundant_placeholder14
0while_while_cond_179994___redundant_placeholder24
0while_while_cond_179994___redundant_placeholder34
0while_while_cond_179994___redundant_placeholder4
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
while_identitywhile/Identity:output:0*D
_input_shapes3
1: : : : :         P: :::::: 
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
:         P:

_output_shapes
: :

_output_shapes
::
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
Ў
▐
while_cond_183338
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice4
0while_while_cond_183338___redundant_placeholder04
0while_while_cond_183338___redundant_placeholder14
0while_while_cond_183338___redundant_placeholder24
0while_while_cond_183338___redundant_placeholder34
0while_while_cond_183338___redundant_placeholder4
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
while_identitywhile/Identity:output:0*<
_input_shapes+
): : : : :	АP: :::::: 
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
:	АP:

_output_shapes
: :

_output_shapes
::
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
шE
г
__inference_standard_gru_182634

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3Z
unstackUnpackbias*
T0*"
_output_shapes
:Ё:Ё*	
num2	
unstacku
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permГ
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
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceЕ
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
5TensorArrayUnstack/TensorListFromTensor/element_shape°
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
strided_slice_1/stack_2№
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
:         Ё2
MatMult
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:         Ё2	
BiasAddP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimм
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*M
_output_shapes;
9:         P:         P:         P*
	num_split2
splitk
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:         Ё2

MatMul_1z
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:         Ё2
	BiasAdd_1T
Const_1Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim┤
split_1Splitsplit_1/split_dim:output:0BiasAdd_1:output:0*
T0*M
_output_shapes;
9:         P:         P:         P*
	num_split2	
split_1g
addAddV2split:output:0split_1:output:0*
T0*'
_output_shapes
:         P2
addX
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:         P2	
Sigmoidk
add_1AddV2split:output:1split_1:output:1*
T0*'
_output_shapes
:         P2
add_1^
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:         P2
	Sigmoid_1d
mulMulSigmoid_1:y:0split_1:output:2*
T0*'
_output_shapes
:         P2
mulb
add_2AddV2split:output:2mul:z:0*
T0*'
_output_shapes
:         P2
add_2Q
TanhTanh	add_2:z:0*
T0*'
_output_shapes
:         P2
Tanh\
mul_1MulSigmoid:y:0init_h*
T0*'
_output_shapes
:         P2
mul_1S
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
sub/x`
subSubsub/x:output:0Sigmoid:y:0*
T0*'
_output_shapes
:         P2
subZ
mul_2Mulsub:z:0Tanh:y:0*
T0*'
_output_shapes
:         P2
mul_2_
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*'
_output_shapes
:         P2
add_3П
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    P   2
TensorArrayV2_1/element_shape╢
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
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelunstack:output:0recurrent_kernelunstack:output:1*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*W
_output_shapesE
C: : : : :         P: : :	Ё:Ё:	PЁ:Ё* 
_read_only_resource_inputs
 *
bodyR
while_body_182543*
condR
while_cond_182542*V
output_shapesE
C: : : : :         P: : :	Ё:Ё:	PЁ:Ё*
parallel_iterations 2
while╡
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    P   22
0TensorArrayV2Stack/TensorListStack/element_shapeё
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  P*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
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
strided_slice_2/stack_2Ъ
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         P*
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permо
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  P2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  А?2	
runtimel
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:         P2

Identityt

Identity_1Identitytranspose_1:y:0*
T0*4
_output_shapes"
 :                  P2

Identity_1f

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:         P2

Identity_2W

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*g
_input_shapesV
T:                  :         P:	Ё:	PЁ:	Ё*<
api_implements*(gru_60e5b8f7-db2b-490b-9f7d-d80a2ddf94dc*
api_preferred_deviceCPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs:OK
'
_output_shapes
:         P
 
_user_specified_nameinit_h:GC

_output_shapes
:	Ё
 
_user_specified_namekernel:QM

_output_shapes
:	PЁ
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	Ё

_user_specified_namebias
Ж<
п
(__inference_gpu_gru_with_fallback_183122

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3Иu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permr
	transpose	Transposeinputstranspose/perm:output:0*
T0*#
_output_shapes
:fА2
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
:АP2

ExpandDimsP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimЗ
splitSplitsplit/split_dim:output:0kernel*
T0*2
_output_shapes 
:P:P:P*
	num_split2
splitT
Const_1Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimЧ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*2
_output_shapes 
:PP:PP:PP*
	num_split2	
split_1q
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
         2
Reshape/shapea
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:р2	
ReshapeT
Const_2Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_2h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dimЭ
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*8
_output_shapes&
$:P:P:P:P:P:P*
	num_split2	
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
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0*
_output_shapes

:P2
transpose_1i
	Reshape_1Reshapetranspose_1:y:0Const_3:output:0*
T0*
_output_shapes
:P2
	Reshape_1u
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0*
_output_shapes

:P2
transpose_2i
	Reshape_2Reshapetranspose_2:y:0Const_3:output:0*
T0*
_output_shapes
:P2
	Reshape_2u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:P2
transpose_3i
	Reshape_3Reshapetranspose_3:y:0Const_3:output:0*
T0*
_output_shapes
:P2
	Reshape_3u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm}
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0*
_output_shapes

:PP2
transpose_4j
	Reshape_4Reshapetranspose_4:y:0Const_3:output:0*
T0*
_output_shapes	
:А22
	Reshape_4u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:PP2
transpose_5j
	Reshape_5Reshapetranspose_5:y:0Const_3:output:0*
T0*
_output_shapes	
:А22
	Reshape_5u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0*
_output_shapes

:PP2
transpose_6j
	Reshape_6Reshapetranspose_6:y:0Const_3:output:0*
T0*
_output_shapes	
:А22
	Reshape_6j
	Reshape_7Reshapesplit_2:output:1Const_3:output:0*
T0*
_output_shapes
:P2
	Reshape_7j
	Reshape_8Reshapesplit_2:output:0Const_3:output:0*
T0*
_output_shapes
:P2
	Reshape_8j
	Reshape_9Reshapesplit_2:output:2Const_3:output:0*
T0*
_output_shapes
:P2
	Reshape_9l

Reshape_10Reshapesplit_2:output:4Const_3:output:0*
T0*
_output_shapes
:P2

Reshape_10l

Reshape_11Reshapesplit_2:output:3Const_3:output:0*
T0*
_output_shapes
:P2

Reshape_11l

Reshape_12Reshapesplit_2:output:5Const_3:output:0*
T0*
_output_shapes
:P2

Reshape_12\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis╒
concatConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0*
_output_shapes

:╨Ы2
concati
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    2
CudnnRNN/input_c╞
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat:output:0*
T0*8
_output_shapes&
$:fАP:АP: :*
rnn_modegru2

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
strided_slice/stack_2ю
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	АP*
shrink_axis_mask2
strided_slicey
transpose_7/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_7/permГ
transpose_7	TransposeCudnnRNN:output:0transpose_7/perm:output:0*
T0*#
_output_shapes
:АfP2
transpose_7s
SqueezeSqueezeCudnnRNN:output_h:0*
T0*
_output_shapes
:	АP*
squeeze_dims
 2	
Squeezef
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
:	АP2

Identityc

Identity_1Identitytranspose_7:y:0*
T0*#
_output_shapes
:АfP2

Identity_1`

Identity_2IdentitySqueeze:output:0*
T0*
_output_shapes
:	АP2

Identity_2W

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*N
_input_shapes=
;:Аf:	АP:	Ё:	PЁ:	Ё*<
api_implements*(gru_213abd45-4533-4531-917c-8912d5b592e1*
api_preferred_deviceGPU*
go_backwards( *

time_major( :K G
#
_output_shapes
:Аf
 
_user_specified_nameinputs:GC

_output_shapes
:	АP
 
_user_specified_nameinit_h:GC

_output_shapes
:	Ё
 
_user_specified_namekernel:QM

_output_shapes
:	PЁ
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	Ё

_user_specified_namebias
фE
о
&__forward_gpu_gru_with_fallback_178732

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3
transpose_7_perm
cudnnrnn

cudnnrnn_0
	transpose

expanddims
cudnnrnn_input_c

concat

cudnnrnn_1

cudnnrnn_2
transpose_perm
concat_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
split_2_split_dim
split_split_dim
split_1_split_dimИu
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
:АP2

ExpandDimsP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimЗ
splitSplitsplit/split_dim:output:0kernel*
T0*2
_output_shapes 
:P:P:P*
	num_split2
splitT
Const_1Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimЧ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*2
_output_shapes 
:PP:PP:PP*
	num_split2	
split_1q
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
         2
Reshape/shapea
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:р2	
ReshapeT
Const_2Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_2h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dimЭ
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*8
_output_shapes&
$:P:P:P:P:P:P*
	num_split2	
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
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0*
_output_shapes

:P2
transpose_1i
	Reshape_1Reshapetranspose_1:y:0Const_3:output:0*
T0*
_output_shapes
:P2
	Reshape_1u
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0*
_output_shapes

:P2
transpose_2i
	Reshape_2Reshapetranspose_2:y:0Const_3:output:0*
T0*
_output_shapes
:P2
	Reshape_2u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:P2
transpose_3i
	Reshape_3Reshapetranspose_3:y:0Const_3:output:0*
T0*
_output_shapes
:P2
	Reshape_3u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm}
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0*
_output_shapes

:PP2
transpose_4j
	Reshape_4Reshapetranspose_4:y:0Const_3:output:0*
T0*
_output_shapes	
:А22
	Reshape_4u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:PP2
transpose_5j
	Reshape_5Reshapetranspose_5:y:0Const_3:output:0*
T0*
_output_shapes	
:А22
	Reshape_5u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0*
_output_shapes

:PP2
transpose_6j
	Reshape_6Reshapetranspose_6:y:0Const_3:output:0*
T0*
_output_shapes	
:А22
	Reshape_6j
	Reshape_7Reshapesplit_2:output:1Const_3:output:0*
T0*
_output_shapes
:P2
	Reshape_7j
	Reshape_8Reshapesplit_2:output:0Const_3:output:0*
T0*
_output_shapes
:P2
	Reshape_8j
	Reshape_9Reshapesplit_2:output:2Const_3:output:0*
T0*
_output_shapes
:P2
	Reshape_9l

Reshape_10Reshapesplit_2:output:4Const_3:output:0*
T0*
_output_shapes
:P2

Reshape_10l

Reshape_11Reshapesplit_2:output:3Const_3:output:0*
T0*
_output_shapes
:P2

Reshape_11l

Reshape_12Reshapesplit_2:output:5Const_3:output:0*
T0*
_output_shapes
:P2

Reshape_12\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis╣
concat_0ConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T02
concati
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    2
CudnnRNN/input_c╩
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat_0:output:0*
T0*8
_output_shapes&
$:fАP:АP: :*
rnn_modegru2

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
strided_slice/stack_2ю
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	АP*
shrink_axis_mask2
strided_slicey
transpose_7/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_7/permГ
transpose_7	TransposeCudnnRNN:output:0transpose_7/perm:output:0*
T0*#
_output_shapes
:АfP2
transpose_7s
SqueezeSqueezeCudnnRNN:output_h:0*
T0*
_output_shapes
:	АP*
squeeze_dims
 2	
Squeezef
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
:	АP2

Identityc

Identity_1Identitytranspose_7:y:0*
T0*#
_output_shapes
:АfP2

Identity_1`

Identity_2IdentitySqueeze:output:0*
T0*
_output_shapes
:	АP2

Identity_2W

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_3"
concatconcat_0:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output_c:0"&

cudnnrnn_0CudnnRNN:reserve_space:0"

cudnnrnn_1CudnnRNN:output:0"!

cudnnrnn_2CudnnRNN:output_h:0"-
cudnnrnn_input_cCudnnRNN/input_c:output:0"!

expanddimsExpandDims:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"/
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
transpose_7_permtranspose_7/perm:output:0")
transpose_permtranspose/perm:output:0*N
_input_shapes=
;:Аf:	АP:	Ё:	PЁ:	Ё*<
api_implements*(gru_04d38b74-02be-4856-ad13-b7761c087ec4*
api_preferred_deviceGPU*V
backward_function_name<:__inference___backward_gpu_gru_with_fallback_178597_178733*
go_backwards( *

time_major( :K G
#
_output_shapes
:Аf
 
_user_specified_nameinputs:GC

_output_shapes
:	АP
 
_user_specified_nameinit_h:GC

_output_shapes
:	Ё
 
_user_specified_namekernel:QM

_output_shapes
:	PЁ
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	Ё

_user_specified_namebias
Рм
╬

:__inference___backward_gpu_gru_with_fallback_181508_181644
placeholder
placeholder_1
placeholder_2
placeholder_3A
=gradients_transpose_7_grad_invertpermutation_transpose_7_perm!
gradients_zeros_like_cudnnrnn#
gradients_zeros_like_1_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims=
9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c3
/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat5
1gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_1=
9gradients_transpose_grad_invertpermutation_transpose_perm)
%gradients_concat_grad_mod_concat_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim
identity

identity_1

identity_2

identity_3

identity_4Иm
gradients/grad_ys_0Identityplaceholder*
T0*
_output_shapes
:	АP2
gradients/grad_ys_0s
gradients/grad_ys_1Identityplaceholder_1*
T0*#
_output_shapes
:АfP2
gradients/grad_ys_1o
gradients/grad_ys_2Identityplaceholder_2*
T0*
_output_shapes
:	АP2
gradients/grad_ys_2f
gradients/grad_ys_3Identityplaceholder_3*
T0*
_output_shapes
: 2
gradients/grad_ys_3Э
"gradients/strided_slice_grad/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"f   А   P   2$
"gradients/strided_slice_grad/Shape┐
3gradients/strided_slice_grad/StridedSliceGrad/shapeConst*
_output_shapes
:*
dtype0*!
valueB"f   А   P   25
3gradients/strided_slice_grad/StridedSliceGrad/shape╜
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
1gradients/strided_slice_grad/StridedSliceGrad/end╕
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
:fАP*
shrink_axis_mask2/
-gradients/strided_slice_grad/StridedSliceGrad╠
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:2.
,gradients/transpose_7_grad/InvertPermutation╫
$gradients/transpose_7_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*#
_output_shapes
:fАP2&
$gradients/transpose_7_grad/transposeС
gradients/Squeeze_grad/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"   А   P   2
gradients/Squeeze_grad/Shape╛
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*#
_output_shapes
:АP2 
gradients/Squeeze_grad/ReshapeГ
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_7_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*#
_output_shapes
:fАP2
gradients/AddNy
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
: 2
gradients/zeros_likeБ
gradients/zeros_like_1	ZerosLikegradients_zeros_like_1_cudnnrnn*
T0*
_output_shapes
:2
gradients/zeros_like_1Ш
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat1gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn3gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_1gradients_zeros_like_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0gradients/zeros_like:y:0gradients_zeros_like_1_cudnnrnn*
T0*<
_output_shapes*
(:fА:АP: :╨Ы*
rnn_modegru2*
(gradients/CudnnRNN_grad/CudnnRNNBackprop─
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:2,
*gradients/transpose_grad/InvertPermutationю
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*#
_output_shapes
:Аf2$
"gradients/transpose_grad/transposeУ
gradients/ExpandDims_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"А   P   2!
gradients/ExpandDims_grad/Shapeт
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*
_output_shapes
:	АP2#
!gradients/ExpandDims_grad/Reshapez
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_grad/Rankп
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_grad/modД
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:P2
gradients/concat_grad/ShapeИ
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:P2
gradients/concat_grad/Shape_1И
gradients/concat_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:P2
gradients/concat_grad/Shape_2Й
gradients/concat_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:А22
gradients/concat_grad/Shape_3Й
gradients/concat_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:А22
gradients/concat_grad/Shape_4Й
gradients/concat_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:А22
gradients/concat_grad/Shape_5И
gradients/concat_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:P2
gradients/concat_grad/Shape_6И
gradients/concat_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:P2
gradients/concat_grad/Shape_7И
gradients/concat_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:P2
gradients/concat_grad/Shape_8И
gradients/concat_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:P2
gradients/concat_grad/Shape_9К
gradients/concat_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:P2 
gradients/concat_grad/Shape_10К
gradients/concat_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:P2 
gradients/concat_grad/Shape_11╛
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0&gradients/concat_grad/Shape_2:output:0&gradients/concat_grad/Shape_3:output:0&gradients/concat_grad/Shape_4:output:0&gradients/concat_grad/Shape_5:output:0&gradients/concat_grad/Shape_6:output:0&gradients/concat_grad/Shape_7:output:0&gradients/concat_grad/Shape_8:output:0&gradients/concat_grad/Shape_9:output:0'gradients/concat_grad/Shape_10:output:0'gradients/concat_grad/Shape_11:output:0*
N*\
_output_shapesJ
H::::::::::::2$
"gradients/concat_grad/ConcatOffsetД
gradients/concat_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes
:P2
gradients/concat_grad/SliceК
gradients/concat_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes
:P2
gradients/concat_grad/Slice_1К
gradients/concat_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:2&gradients/concat_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes
:P2
gradients/concat_grad/Slice_2Л
gradients/concat_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:3&gradients/concat_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:А22
gradients/concat_grad/Slice_3Л
gradients/concat_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:4&gradients/concat_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:А22
gradients/concat_grad/Slice_4Л
gradients/concat_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:5&gradients/concat_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:А22
gradients/concat_grad/Slice_5К
gradients/concat_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:6&gradients/concat_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes
:P2
gradients/concat_grad/Slice_6К
gradients/concat_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:7&gradients/concat_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes
:P2
gradients/concat_grad/Slice_7К
gradients/concat_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:8&gradients/concat_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:P2
gradients/concat_grad/Slice_8К
gradients/concat_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:9&gradients/concat_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:P2
gradients/concat_grad/Slice_9О
gradients/concat_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:10'gradients/concat_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:P2 
gradients/concat_grad/Slice_10О
gradients/concat_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:11'gradients/concat_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:P2 
gradients/concat_grad/Slice_11С
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"P      2 
gradients/Reshape_1_grad/Shape╟
 gradients/Reshape_1_grad/ReshapeReshape$gradients/concat_grad/Slice:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:P2"
 gradients/Reshape_1_grad/ReshapeС
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"P      2 
gradients/Reshape_2_grad/Shape╔
 gradients/Reshape_2_grad/ReshapeReshape&gradients/concat_grad/Slice_1:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:P2"
 gradients/Reshape_2_grad/ReshapeС
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"P      2 
gradients/Reshape_3_grad/Shape╔
 gradients/Reshape_3_grad/ReshapeReshape&gradients/concat_grad/Slice_2:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:P2"
 gradients/Reshape_3_grad/ReshapeС
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"P   P   2 
gradients/Reshape_4_grad/Shape╔
 gradients/Reshape_4_grad/ReshapeReshape&gradients/concat_grad/Slice_3:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:PP2"
 gradients/Reshape_4_grad/ReshapeС
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"P   P   2 
gradients/Reshape_5_grad/Shape╔
 gradients/Reshape_5_grad/ReshapeReshape&gradients/concat_grad/Slice_4:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:PP2"
 gradients/Reshape_5_grad/ReshapeС
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"P   P   2 
gradients/Reshape_6_grad/Shape╔
 gradients/Reshape_6_grad/ReshapeReshape&gradients/concat_grad/Slice_5:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:PP2"
 gradients/Reshape_6_grad/ReshapeК
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:P2 
gradients/Reshape_7_grad/Shape┼
 gradients/Reshape_7_grad/ReshapeReshape&gradients/concat_grad/Slice_6:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes
:P2"
 gradients/Reshape_7_grad/ReshapeК
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:P2 
gradients/Reshape_8_grad/Shape┼
 gradients/Reshape_8_grad/ReshapeReshape&gradients/concat_grad/Slice_7:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:P2"
 gradients/Reshape_8_grad/ReshapeК
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:P2 
gradients/Reshape_9_grad/Shape┼
 gradients/Reshape_9_grad/ReshapeReshape&gradients/concat_grad/Slice_8:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:P2"
 gradients/Reshape_9_grad/ReshapeМ
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:P2!
gradients/Reshape_10_grad/Shape╚
!gradients/Reshape_10_grad/ReshapeReshape&gradients/concat_grad/Slice_9:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:P2#
!gradients/Reshape_10_grad/ReshapeМ
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:P2!
gradients/Reshape_11_grad/Shape╔
!gradients/Reshape_11_grad/ReshapeReshape'gradients/concat_grad/Slice_10:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:P2#
!gradients/Reshape_11_grad/ReshapeМ
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:P2!
gradients/Reshape_12_grad/Shape╔
!gradients/Reshape_12_grad/ReshapeReshape'gradients/concat_grad/Slice_11:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:P2#
!gradients/Reshape_12_grad/Reshape╠
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:2.
,gradients/transpose_1_grad/InvertPermutation▀
$gradients/transpose_1_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:P2&
$gradients/transpose_1_grad/transpose╠
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:2.
,gradients/transpose_2_grad/InvertPermutation▀
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:P2&
$gradients/transpose_2_grad/transpose╠
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:2.
,gradients/transpose_3_grad/InvertPermutation▀
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:P2&
$gradients/transpose_3_grad/transpose╠
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:2.
,gradients/transpose_4_grad/InvertPermutation▀
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:PP2&
$gradients/transpose_4_grad/transpose╠
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:2.
,gradients/transpose_5_grad/InvertPermutation▀
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:PP2&
$gradients/transpose_5_grad/transpose╠
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:2.
,gradients/transpose_6_grad/InvertPermutation▀
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:PP2&
$gradients/transpose_6_grad/transposeп
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_7_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:р2
gradients/split_2_grad/concatд
gradients/split_grad/concatConcatV2(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	Ё2
gradients/split_grad/concatм
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	PЁ2
gradients/split_1_grad/concatН
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   Ё   2
gradients/Reshape_grad/Shape─
gradients/Reshape_grad/ReshapeReshape&gradients/split_2_grad/concat:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	Ё2 
gradients/Reshape_grad/Reshapev
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*#
_output_shapes
:Аf2

Identityz

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*
_output_shapes
:	АP2

Identity_1t

Identity_2Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	Ё2

Identity_2v

Identity_3Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	PЁ2

Identity_3w

Identity_4Identity'gradients/Reshape_grad/Reshape:output:0*
T0*
_output_shapes
:	Ё2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*└
_input_shapesо
л:	АP:АfP:	АP: :: ::fА:АP: :╨Ы:fАP:АP:: ::::::: : : *<
api_implements*(gru_97a25323-5f73-47b1-8c97-356824aa4592*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_gru_with_fallback_181643*
go_backwards( *

time_major( :% !

_output_shapes
:	АP:)%
#
_output_shapes
:АfP:%!

_output_shapes
:	АP:

_output_shapes
: : 

_output_shapes
::

_output_shapes
: :

_output_shapes
::)%
#
_output_shapes
:fА:)%
#
_output_shapes
:АP:	

_output_shapes
: :"


_output_shapes

:╨Ы:)%
#
_output_shapes
:fАP:)%
#
_output_shapes
:АP: 

_output_shapes
::

_output_shapes
: : 

_output_shapes
:: 
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
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
╒
■
?__inference_gru_layer_call_and_return_conditional_losses_181165
input_1
input_2

gru_181152

gru_181154

gru_181156
dense_181159
dense_181161
identityИвdense/StatefulPartitionedCallвgru/StatefulPartitionedCallВ
gru/StatefulPartitionedCallStatefulPartitionedCallinput_1
gru_181152
gru_181154
gru_181156*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:	АP*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_gru_layer_call_and_return_conditional_losses_1810912
gru/StatefulPartitionedCallЫ
dense/StatefulPartitionedCallStatefulPartitionedCall$gru/StatefulPartitionedCall:output:0dense_181159dense_181161*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:	А
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_1811312
dense/StatefulPartitionedCall░
IdentityIdentity&dense/StatefulPartitionedCall:output:0^dense/StatefulPartitionedCall^gru/StatefulPartitionedCall*
T0*
_output_shapes
:	А
2

Identity"
identityIdentity:output:0*E
_input_shapes4
2:Аf:Аf:::::2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2:
gru/StatefulPartitionedCallgru/StatefulPartitionedCall:L H
#
_output_shapes
:Аf
!
_user_specified_name	input_1:LH
#
_output_shapes
:Аf
!
_user_specified_name	input_2
фE
о
&__forward_gpu_gru_with_fallback_183258

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3
transpose_7_perm
cudnnrnn

cudnnrnn_0
	transpose

expanddims
cudnnrnn_input_c

concat

cudnnrnn_1

cudnnrnn_2
transpose_perm
concat_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
split_2_split_dim
split_split_dim
split_1_split_dimИu
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
:АP2

ExpandDimsP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimЗ
splitSplitsplit/split_dim:output:0kernel*
T0*2
_output_shapes 
:P:P:P*
	num_split2
splitT
Const_1Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimЧ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*2
_output_shapes 
:PP:PP:PP*
	num_split2	
split_1q
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
         2
Reshape/shapea
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:р2	
ReshapeT
Const_2Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_2h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dimЭ
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*8
_output_shapes&
$:P:P:P:P:P:P*
	num_split2	
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
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0*
_output_shapes

:P2
transpose_1i
	Reshape_1Reshapetranspose_1:y:0Const_3:output:0*
T0*
_output_shapes
:P2
	Reshape_1u
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0*
_output_shapes

:P2
transpose_2i
	Reshape_2Reshapetranspose_2:y:0Const_3:output:0*
T0*
_output_shapes
:P2
	Reshape_2u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:P2
transpose_3i
	Reshape_3Reshapetranspose_3:y:0Const_3:output:0*
T0*
_output_shapes
:P2
	Reshape_3u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm}
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0*
_output_shapes

:PP2
transpose_4j
	Reshape_4Reshapetranspose_4:y:0Const_3:output:0*
T0*
_output_shapes	
:А22
	Reshape_4u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:PP2
transpose_5j
	Reshape_5Reshapetranspose_5:y:0Const_3:output:0*
T0*
_output_shapes	
:А22
	Reshape_5u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0*
_output_shapes

:PP2
transpose_6j
	Reshape_6Reshapetranspose_6:y:0Const_3:output:0*
T0*
_output_shapes	
:А22
	Reshape_6j
	Reshape_7Reshapesplit_2:output:1Const_3:output:0*
T0*
_output_shapes
:P2
	Reshape_7j
	Reshape_8Reshapesplit_2:output:0Const_3:output:0*
T0*
_output_shapes
:P2
	Reshape_8j
	Reshape_9Reshapesplit_2:output:2Const_3:output:0*
T0*
_output_shapes
:P2
	Reshape_9l

Reshape_10Reshapesplit_2:output:4Const_3:output:0*
T0*
_output_shapes
:P2

Reshape_10l

Reshape_11Reshapesplit_2:output:3Const_3:output:0*
T0*
_output_shapes
:P2

Reshape_11l

Reshape_12Reshapesplit_2:output:5Const_3:output:0*
T0*
_output_shapes
:P2

Reshape_12\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis╣
concat_0ConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T02
concati
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    2
CudnnRNN/input_c╩
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat_0:output:0*
T0*8
_output_shapes&
$:fАP:АP: :*
rnn_modegru2

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
strided_slice/stack_2ю
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	АP*
shrink_axis_mask2
strided_slicey
transpose_7/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_7/permГ
transpose_7	TransposeCudnnRNN:output:0transpose_7/perm:output:0*
T0*#
_output_shapes
:АfP2
transpose_7s
SqueezeSqueezeCudnnRNN:output_h:0*
T0*
_output_shapes
:	АP*
squeeze_dims
 2	
Squeezef
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
:	АP2

Identityc

Identity_1Identitytranspose_7:y:0*
T0*#
_output_shapes
:АfP2

Identity_1`

Identity_2IdentitySqueeze:output:0*
T0*
_output_shapes
:	АP2

Identity_2W

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_3"
concatconcat_0:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output_c:0"&

cudnnrnn_0CudnnRNN:reserve_space:0"

cudnnrnn_1CudnnRNN:output:0"!

cudnnrnn_2CudnnRNN:output_h:0"-
cudnnrnn_input_cCudnnRNN/input_c:output:0"!

expanddimsExpandDims:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"/
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
transpose_7_permtranspose_7/perm:output:0")
transpose_permtranspose/perm:output:0*N
_input_shapes=
;:Аf:	АP:	Ё:	PЁ:	Ё*<
api_implements*(gru_213abd45-4533-4531-917c-8912d5b592e1*
api_preferred_deviceGPU*V
backward_function_name<:__inference___backward_gpu_gru_with_fallback_183123_183259*
go_backwards( *

time_major( :K G
#
_output_shapes
:Аf
 
_user_specified_nameinputs:GC

_output_shapes
:	АP
 
_user_specified_nameinit_h:GC

_output_shapes
:	Ё
 
_user_specified_namekernel:QM

_output_shapes
:	PЁ
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	Ё

_user_specified_namebias
У
К
$__inference_gru_layer_call_fn_182874
inputs_0
unknown
	unknown_0
	unknown_1
identityИвStatefulPartitionedCall■
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         P*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_gru_layer_call_and_return_conditional_losses_1803042
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         P2

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
Рм
╬

:__inference___backward_gpu_gru_with_fallback_180566_180702
placeholder
placeholder_1
placeholder_2
placeholder_3A
=gradients_transpose_7_grad_invertpermutation_transpose_7_perm!
gradients_zeros_like_cudnnrnn#
gradients_zeros_like_1_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims=
9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c3
/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat5
1gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_1=
9gradients_transpose_grad_invertpermutation_transpose_perm)
%gradients_concat_grad_mod_concat_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim
identity

identity_1

identity_2

identity_3

identity_4Иm
gradients/grad_ys_0Identityplaceholder*
T0*
_output_shapes
:	АP2
gradients/grad_ys_0s
gradients/grad_ys_1Identityplaceholder_1*
T0*#
_output_shapes
:АfP2
gradients/grad_ys_1o
gradients/grad_ys_2Identityplaceholder_2*
T0*
_output_shapes
:	АP2
gradients/grad_ys_2f
gradients/grad_ys_3Identityplaceholder_3*
T0*
_output_shapes
: 2
gradients/grad_ys_3Э
"gradients/strided_slice_grad/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"f   А   P   2$
"gradients/strided_slice_grad/Shape┐
3gradients/strided_slice_grad/StridedSliceGrad/shapeConst*
_output_shapes
:*
dtype0*!
valueB"f   А   P   25
3gradients/strided_slice_grad/StridedSliceGrad/shape╜
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
1gradients/strided_slice_grad/StridedSliceGrad/end╕
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
:fАP*
shrink_axis_mask2/
-gradients/strided_slice_grad/StridedSliceGrad╠
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:2.
,gradients/transpose_7_grad/InvertPermutation╫
$gradients/transpose_7_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*#
_output_shapes
:fАP2&
$gradients/transpose_7_grad/transposeС
gradients/Squeeze_grad/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"   А   P   2
gradients/Squeeze_grad/Shape╛
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*#
_output_shapes
:АP2 
gradients/Squeeze_grad/ReshapeГ
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_7_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*#
_output_shapes
:fАP2
gradients/AddNy
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
: 2
gradients/zeros_likeБ
gradients/zeros_like_1	ZerosLikegradients_zeros_like_1_cudnnrnn*
T0*
_output_shapes
:2
gradients/zeros_like_1Ш
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat1gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn3gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_1gradients_zeros_like_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0gradients/zeros_like:y:0gradients_zeros_like_1_cudnnrnn*
T0*<
_output_shapes*
(:fА:АP: :╨Ы*
rnn_modegru2*
(gradients/CudnnRNN_grad/CudnnRNNBackprop─
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:2,
*gradients/transpose_grad/InvertPermutationю
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*#
_output_shapes
:Аf2$
"gradients/transpose_grad/transposeУ
gradients/ExpandDims_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"А   P   2!
gradients/ExpandDims_grad/Shapeт
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*
_output_shapes
:	АP2#
!gradients/ExpandDims_grad/Reshapez
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_grad/Rankп
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_grad/modД
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:P2
gradients/concat_grad/ShapeИ
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:P2
gradients/concat_grad/Shape_1И
gradients/concat_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:P2
gradients/concat_grad/Shape_2Й
gradients/concat_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:А22
gradients/concat_grad/Shape_3Й
gradients/concat_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:А22
gradients/concat_grad/Shape_4Й
gradients/concat_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:А22
gradients/concat_grad/Shape_5И
gradients/concat_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:P2
gradients/concat_grad/Shape_6И
gradients/concat_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:P2
gradients/concat_grad/Shape_7И
gradients/concat_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:P2
gradients/concat_grad/Shape_8И
gradients/concat_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:P2
gradients/concat_grad/Shape_9К
gradients/concat_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:P2 
gradients/concat_grad/Shape_10К
gradients/concat_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:P2 
gradients/concat_grad/Shape_11╛
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0&gradients/concat_grad/Shape_2:output:0&gradients/concat_grad/Shape_3:output:0&gradients/concat_grad/Shape_4:output:0&gradients/concat_grad/Shape_5:output:0&gradients/concat_grad/Shape_6:output:0&gradients/concat_grad/Shape_7:output:0&gradients/concat_grad/Shape_8:output:0&gradients/concat_grad/Shape_9:output:0'gradients/concat_grad/Shape_10:output:0'gradients/concat_grad/Shape_11:output:0*
N*\
_output_shapesJ
H::::::::::::2$
"gradients/concat_grad/ConcatOffsetД
gradients/concat_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes
:P2
gradients/concat_grad/SliceК
gradients/concat_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes
:P2
gradients/concat_grad/Slice_1К
gradients/concat_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:2&gradients/concat_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes
:P2
gradients/concat_grad/Slice_2Л
gradients/concat_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:3&gradients/concat_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:А22
gradients/concat_grad/Slice_3Л
gradients/concat_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:4&gradients/concat_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:А22
gradients/concat_grad/Slice_4Л
gradients/concat_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:5&gradients/concat_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:А22
gradients/concat_grad/Slice_5К
gradients/concat_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:6&gradients/concat_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes
:P2
gradients/concat_grad/Slice_6К
gradients/concat_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:7&gradients/concat_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes
:P2
gradients/concat_grad/Slice_7К
gradients/concat_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:8&gradients/concat_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:P2
gradients/concat_grad/Slice_8К
gradients/concat_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:9&gradients/concat_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:P2
gradients/concat_grad/Slice_9О
gradients/concat_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:10'gradients/concat_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:P2 
gradients/concat_grad/Slice_10О
gradients/concat_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:11'gradients/concat_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:P2 
gradients/concat_grad/Slice_11С
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"P      2 
gradients/Reshape_1_grad/Shape╟
 gradients/Reshape_1_grad/ReshapeReshape$gradients/concat_grad/Slice:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:P2"
 gradients/Reshape_1_grad/ReshapeС
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"P      2 
gradients/Reshape_2_grad/Shape╔
 gradients/Reshape_2_grad/ReshapeReshape&gradients/concat_grad/Slice_1:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:P2"
 gradients/Reshape_2_grad/ReshapeС
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"P      2 
gradients/Reshape_3_grad/Shape╔
 gradients/Reshape_3_grad/ReshapeReshape&gradients/concat_grad/Slice_2:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:P2"
 gradients/Reshape_3_grad/ReshapeС
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"P   P   2 
gradients/Reshape_4_grad/Shape╔
 gradients/Reshape_4_grad/ReshapeReshape&gradients/concat_grad/Slice_3:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:PP2"
 gradients/Reshape_4_grad/ReshapeС
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"P   P   2 
gradients/Reshape_5_grad/Shape╔
 gradients/Reshape_5_grad/ReshapeReshape&gradients/concat_grad/Slice_4:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:PP2"
 gradients/Reshape_5_grad/ReshapeС
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"P   P   2 
gradients/Reshape_6_grad/Shape╔
 gradients/Reshape_6_grad/ReshapeReshape&gradients/concat_grad/Slice_5:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:PP2"
 gradients/Reshape_6_grad/ReshapeК
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:P2 
gradients/Reshape_7_grad/Shape┼
 gradients/Reshape_7_grad/ReshapeReshape&gradients/concat_grad/Slice_6:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes
:P2"
 gradients/Reshape_7_grad/ReshapeК
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:P2 
gradients/Reshape_8_grad/Shape┼
 gradients/Reshape_8_grad/ReshapeReshape&gradients/concat_grad/Slice_7:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:P2"
 gradients/Reshape_8_grad/ReshapeК
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:P2 
gradients/Reshape_9_grad/Shape┼
 gradients/Reshape_9_grad/ReshapeReshape&gradients/concat_grad/Slice_8:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:P2"
 gradients/Reshape_9_grad/ReshapeМ
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:P2!
gradients/Reshape_10_grad/Shape╚
!gradients/Reshape_10_grad/ReshapeReshape&gradients/concat_grad/Slice_9:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:P2#
!gradients/Reshape_10_grad/ReshapeМ
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:P2!
gradients/Reshape_11_grad/Shape╔
!gradients/Reshape_11_grad/ReshapeReshape'gradients/concat_grad/Slice_10:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:P2#
!gradients/Reshape_11_grad/ReshapeМ
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:P2!
gradients/Reshape_12_grad/Shape╔
!gradients/Reshape_12_grad/ReshapeReshape'gradients/concat_grad/Slice_11:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:P2#
!gradients/Reshape_12_grad/Reshape╠
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:2.
,gradients/transpose_1_grad/InvertPermutation▀
$gradients/transpose_1_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:P2&
$gradients/transpose_1_grad/transpose╠
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:2.
,gradients/transpose_2_grad/InvertPermutation▀
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:P2&
$gradients/transpose_2_grad/transpose╠
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:2.
,gradients/transpose_3_grad/InvertPermutation▀
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:P2&
$gradients/transpose_3_grad/transpose╠
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:2.
,gradients/transpose_4_grad/InvertPermutation▀
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:PP2&
$gradients/transpose_4_grad/transpose╠
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:2.
,gradients/transpose_5_grad/InvertPermutation▀
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:PP2&
$gradients/transpose_5_grad/transpose╠
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:2.
,gradients/transpose_6_grad/InvertPermutation▀
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:PP2&
$gradients/transpose_6_grad/transposeп
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_7_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:р2
gradients/split_2_grad/concatд
gradients/split_grad/concatConcatV2(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	Ё2
gradients/split_grad/concatм
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	PЁ2
gradients/split_1_grad/concatН
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   Ё   2
gradients/Reshape_grad/Shape─
gradients/Reshape_grad/ReshapeReshape&gradients/split_2_grad/concat:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	Ё2 
gradients/Reshape_grad/Reshapev
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*#
_output_shapes
:Аf2

Identityz

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*
_output_shapes
:	АP2

Identity_1t

Identity_2Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	Ё2

Identity_2v

Identity_3Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	PЁ2

Identity_3w

Identity_4Identity'gradients/Reshape_grad/Reshape:output:0*
T0*
_output_shapes
:	Ё2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*└
_input_shapesо
л:	АP:АfP:	АP: :: ::fА:АP: :╨Ы:fАP:АP:: ::::::: : : *<
api_implements*(gru_b781c3ab-c21d-4d02-9879-c227062151d0*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_gru_with_fallback_180701*
go_backwards( *

time_major( :% !

_output_shapes
:	АP:)%
#
_output_shapes
:АfP:%!

_output_shapes
:	АP:

_output_shapes
: : 

_output_shapes
::

_output_shapes
: :

_output_shapes
::)%
#
_output_shapes
:fА:)%
#
_output_shapes
:АP:	

_output_shapes
: :"


_output_shapes

:╨Ы:)%
#
_output_shapes
:fАP:)%
#
_output_shapes
:АP: 

_output_shapes
::

_output_shapes
: : 

_output_shapes
:: 
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
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
Ў
▐
while_cond_181336
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice4
0while_while_cond_181336___redundant_placeholder04
0while_while_cond_181336___redundant_placeholder14
0while_while_cond_181336___redundant_placeholder24
0while_while_cond_181336___redundant_placeholder34
0while_while_cond_181336___redundant_placeholder4
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
while_identitywhile/Identity:output:0*<
_input_shapes+
): : : : :	АP: :::::: 
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
:	АP:

_output_shapes
: :

_output_shapes
::
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
Ї
┤
$__inference_signature_wrapper_181258
input_1
input_2
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
identityИвStatefulPartitionedCall√
StatefulPartitionedCallStatefulPartitionedCallinput_1input_2unknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin
	2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:	А
*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8В **
f%R#
!__inference__wrapped_model_1787412
StatefulPartitionedCallЖ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*
_output_shapes
:	А
2

Identity"
identityIdentity:output:0*E
_input_shapes4
2:Аf:Аf:::::22
StatefulPartitionedCallStatefulPartitionedCall:L H
#
_output_shapes
:Аf
!
_user_specified_name	input_1:LH
#
_output_shapes
:Аf
!
_user_specified_name	input_2
╢
{
&__inference_dense_layer_call_fn_183689

inputs
unknown
	unknown_0
identityИвStatefulPartitionedCallщ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:	А
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_1811312
StatefulPartitionedCallЖ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*
_output_shapes
:	А
2

Identity"
identityIdentity:output:0*&
_input_shapes
:	АP::22
StatefulPartitionedCallStatefulPartitionedCall:G C

_output_shapes
:	АP
 
_user_specified_nameinputs
О1
т
while_body_180395
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0
while_biasadd_unstack_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_1_unstack_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel
while_biasadd_unstack#
while_matmul_1_recurrent_kernel
while_biasadd_1_unstack├
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"А      29
7while/TensorArrayV2Read/TensorListGetItem/element_shape╦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes
:	А*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemЪ
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0* 
_output_shapes
:
АЁ2
while/MatMulЕ
while/BiasAddBiasAddwhile/MatMul:product:0while_biasadd_unstack_0*
T0* 
_output_shapes
:
АЁ2
while/BiasAdd\
while/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/Constp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dimм
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*5
_output_shapes#
!:	АP:	АP:	АP*
	num_split2
while/splitН
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0* 
_output_shapes
:
АЁ2
while/MatMul_1Н
while/BiasAdd_1BiasAddwhile/MatMul_1:product:0while_biasadd_1_unstack_0*
T0* 
_output_shapes
:
АЁ2
while/BiasAdd_1`
while/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
while/Const_1t
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split_1/split_dim┤
while/split_1Split while/split_1/split_dim:output:0while/BiasAdd_1:output:0*
T0*5
_output_shapes#
!:	АP:	АP:	АP*
	num_split2
while/split_1w
	while/addAddV2while/split:output:0while/split_1:output:0*
T0*
_output_shapes
:	АP2
	while/addb
while/SigmoidSigmoidwhile/add:z:0*
T0*
_output_shapes
:	АP2
while/Sigmoid{
while/add_1AddV2while/split:output:1while/split_1:output:1*
T0*
_output_shapes
:	АP2
while/add_1h
while/Sigmoid_1Sigmoidwhile/add_1:z:0*
T0*
_output_shapes
:	АP2
while/Sigmoid_1t
	while/mulMulwhile/Sigmoid_1:y:0while/split_1:output:2*
T0*
_output_shapes
:	АP2
	while/mulr
while/add_2AddV2while/split:output:2while/mul:z:0*
T0*
_output_shapes
:	АP2
while/add_2[

while/TanhTanhwhile/add_2:z:0*
T0*
_output_shapes
:	АP2

while/Tanhs
while/mul_1Mulwhile/Sigmoid:y:0while_placeholder_2*
T0*
_output_shapes
:	АP2
while/mul_1_
while/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
while/sub/xp
	while/subSubwhile/sub/x:output:0while/Sigmoid:y:0*
T0*
_output_shapes
:	АP2
	while/subj
while/mul_2Mulwhile/sub:z:0while/Tanh:y:0*
T0*
_output_shapes
:	АP2
while/mul_2o
while/add_3AddV2while/mul_1:z:0while/mul_2:z:0*
T0*
_output_shapes
:	АP2
while/add_3╙
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/add_3:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem`
while/add_4/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_4/yo
while/add_4AddV2while_placeholderwhile/add_4/y:output:0*
T0*
_output_shapes
: 2
while/add_4`
while/add_5/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_5/yv
while/add_5AddV2while_while_loop_counterwhile/add_5/y:output:0*
T0*
_output_shapes
: 2
while/add_5^
while/IdentityIdentitywhile/add_5:z:0*
T0*
_output_shapes
: 2
while/Identityq
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: 2
while/Identity_1b
while/Identity_2Identitywhile/add_4:z:0*
T0*
_output_shapes
: 2
while/Identity_2Н
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: 2
while/Identity_3k
while/Identity_4Identitywhile/add_3:z:0*
T0*
_output_shapes
:	АP2
while/Identity_4"4
while_biasadd_1_unstackwhile_biasadd_1_unstack_0"0
while_biasadd_unstackwhile_biasadd_unstack_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*N
_input_shapes=
;: : : : :	АP: : :	Ё:Ё:	PЁ:Ё: 
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
:	АP:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	Ё:!

_output_shapes	
:Ё:%	!

_output_shapes
:	PЁ:!


_output_shapes	
:Ё
ц
┌
A__inference_dense_layer_call_and_return_conditional_losses_181131

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:P
*
dtype02
MatMul/ReadVariableOpk
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	А
2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	А
2	
BiasAddН
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*
_output_shapes
:	А
2

Identity"
identityIdentity:output:0*&
_input_shapes
:	АP::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:G C

_output_shapes
:	АP
 
_user_specified_nameinputs
▒C
г
__inference_standard_gru_178517

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3Z
unstackUnpackbias*
T0*"
_output_shapes
:Ё:Ё*	
num2	
unstacku
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permr
	transpose	Transposeinputstranspose/perm:output:0*
T0*#
_output_shapes
:fА2
	transposec
ShapeConst*
_output_shapes
:*
dtype0*!
valueB"f   А      2
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
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceЕ
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
valueB"А      27
5TensorArrayUnstack/TensorListFromTensor/element_shape°
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
strided_slice_1/stack_2Ї
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	А*
shrink_axis_mask2
strided_slice_1g
MatMulMatMulstrided_slice_1:output:0kernel*
T0* 
_output_shapes
:
АЁ2
MatMull
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0* 
_output_shapes
:
АЁ2	
BiasAddP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimФ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*5
_output_shapes#
!:	АP:	АP:	АP*
	num_split2
splitc
MatMul_1MatMulinit_hrecurrent_kernel*
T0* 
_output_shapes
:
АЁ2

MatMul_1r
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0* 
_output_shapes
:
АЁ2
	BiasAdd_1T
Const_1Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimЬ
split_1Splitsplit_1/split_dim:output:0BiasAdd_1:output:0*
T0*5
_output_shapes#
!:	АP:	АP:	АP*
	num_split2	
split_1_
addAddV2split:output:0split_1:output:0*
T0*
_output_shapes
:	АP2
addP
SigmoidSigmoidadd:z:0*
T0*
_output_shapes
:	АP2	
Sigmoidc
add_1AddV2split:output:1split_1:output:1*
T0*
_output_shapes
:	АP2
add_1V
	Sigmoid_1Sigmoid	add_1:z:0*
T0*
_output_shapes
:	АP2
	Sigmoid_1\
mulMulSigmoid_1:y:0split_1:output:2*
T0*
_output_shapes
:	АP2
mulZ
add_2AddV2split:output:2mul:z:0*
T0*
_output_shapes
:	АP2
add_2I
TanhTanh	add_2:z:0*
T0*
_output_shapes
:	АP2
TanhT
mul_1MulSigmoid:y:0init_h*
T0*
_output_shapes
:	АP2
mul_1S
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
sub/xX
subSubsub/x:output:0Sigmoid:y:0*
T0*
_output_shapes
:	АP2
subR
mul_2Mulsub:z:0Tanh:y:0*
T0*
_output_shapes
:	АP2
mul_2W
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*
_output_shapes
:	АP2
add_3П
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"А   P   2
TensorArrayV2_1/element_shape╢
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
while/loop_counterР
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelunstack:output:0recurrent_kernelunstack:output:1*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*O
_output_shapes=
;: : : : :	АP: : :	Ё:Ё:	PЁ:Ё* 
_read_only_resource_inputs
 *
bodyR
while_body_178426*
condR
while_cond_178425*N
output_shapes=
;: : : : :	АP: : :	Ё:Ё:	PЁ:Ё*
parallel_iterations 2
while╡
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"А   P   22
0TensorArrayV2Stack/TensorListStack/element_shapeр
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*#
_output_shapes
:fАP*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
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
strided_slice_2/stack_2Т
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	АP*
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЭ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*#
_output_shapes
:АfP2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  А?2	
runtimed
IdentityIdentitystrided_slice_2:output:0*
T0*
_output_shapes
:	АP2

Identityc

Identity_1Identitytranspose_1:y:0*
T0*#
_output_shapes
:АfP2

Identity_1^

Identity_2Identitywhile:output:4*
T0*
_output_shapes
:	АP2

Identity_2W

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*N
_input_shapes=
;:Аf:	АP:	Ё:	PЁ:	Ё*<
api_implements*(gru_04d38b74-02be-4856-ad13-b7761c087ec4*
api_preferred_deviceCPU*
go_backwards( *

time_major( :K G
#
_output_shapes
:Аf
 
_user_specified_nameinputs:GC

_output_shapes
:	АP
 
_user_specified_nameinit_h:GC

_output_shapes
:	Ё
 
_user_specified_namekernel:QM

_output_shapes
:	PЁ
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	Ё

_user_specified_namebias
Рм
╬

:__inference___backward_gpu_gru_with_fallback_178597_178733
placeholder
placeholder_1
placeholder_2
placeholder_3A
=gradients_transpose_7_grad_invertpermutation_transpose_7_perm!
gradients_zeros_like_cudnnrnn#
gradients_zeros_like_1_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims=
9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c3
/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat5
1gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_1=
9gradients_transpose_grad_invertpermutation_transpose_perm)
%gradients_concat_grad_mod_concat_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim
identity

identity_1

identity_2

identity_3

identity_4Иm
gradients/grad_ys_0Identityplaceholder*
T0*
_output_shapes
:	АP2
gradients/grad_ys_0s
gradients/grad_ys_1Identityplaceholder_1*
T0*#
_output_shapes
:АfP2
gradients/grad_ys_1o
gradients/grad_ys_2Identityplaceholder_2*
T0*
_output_shapes
:	АP2
gradients/grad_ys_2f
gradients/grad_ys_3Identityplaceholder_3*
T0*
_output_shapes
: 2
gradients/grad_ys_3Э
"gradients/strided_slice_grad/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"f   А   P   2$
"gradients/strided_slice_grad/Shape┐
3gradients/strided_slice_grad/StridedSliceGrad/shapeConst*
_output_shapes
:*
dtype0*!
valueB"f   А   P   25
3gradients/strided_slice_grad/StridedSliceGrad/shape╜
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
1gradients/strided_slice_grad/StridedSliceGrad/end╕
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
:fАP*
shrink_axis_mask2/
-gradients/strided_slice_grad/StridedSliceGrad╠
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:2.
,gradients/transpose_7_grad/InvertPermutation╫
$gradients/transpose_7_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*#
_output_shapes
:fАP2&
$gradients/transpose_7_grad/transposeС
gradients/Squeeze_grad/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"   А   P   2
gradients/Squeeze_grad/Shape╛
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*#
_output_shapes
:АP2 
gradients/Squeeze_grad/ReshapeГ
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_7_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*#
_output_shapes
:fАP2
gradients/AddNy
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
: 2
gradients/zeros_likeБ
gradients/zeros_like_1	ZerosLikegradients_zeros_like_1_cudnnrnn*
T0*
_output_shapes
:2
gradients/zeros_like_1Ш
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat1gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn3gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_1gradients_zeros_like_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0gradients/zeros_like:y:0gradients_zeros_like_1_cudnnrnn*
T0*<
_output_shapes*
(:fА:АP: :╨Ы*
rnn_modegru2*
(gradients/CudnnRNN_grad/CudnnRNNBackprop─
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:2,
*gradients/transpose_grad/InvertPermutationю
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*#
_output_shapes
:Аf2$
"gradients/transpose_grad/transposeУ
gradients/ExpandDims_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"А   P   2!
gradients/ExpandDims_grad/Shapeт
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*
_output_shapes
:	АP2#
!gradients/ExpandDims_grad/Reshapez
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_grad/Rankп
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_grad/modД
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:P2
gradients/concat_grad/ShapeИ
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:P2
gradients/concat_grad/Shape_1И
gradients/concat_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:P2
gradients/concat_grad/Shape_2Й
gradients/concat_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:А22
gradients/concat_grad/Shape_3Й
gradients/concat_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:А22
gradients/concat_grad/Shape_4Й
gradients/concat_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:А22
gradients/concat_grad/Shape_5И
gradients/concat_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:P2
gradients/concat_grad/Shape_6И
gradients/concat_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:P2
gradients/concat_grad/Shape_7И
gradients/concat_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:P2
gradients/concat_grad/Shape_8И
gradients/concat_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:P2
gradients/concat_grad/Shape_9К
gradients/concat_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:P2 
gradients/concat_grad/Shape_10К
gradients/concat_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:P2 
gradients/concat_grad/Shape_11╛
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0&gradients/concat_grad/Shape_2:output:0&gradients/concat_grad/Shape_3:output:0&gradients/concat_grad/Shape_4:output:0&gradients/concat_grad/Shape_5:output:0&gradients/concat_grad/Shape_6:output:0&gradients/concat_grad/Shape_7:output:0&gradients/concat_grad/Shape_8:output:0&gradients/concat_grad/Shape_9:output:0'gradients/concat_grad/Shape_10:output:0'gradients/concat_grad/Shape_11:output:0*
N*\
_output_shapesJ
H::::::::::::2$
"gradients/concat_grad/ConcatOffsetД
gradients/concat_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes
:P2
gradients/concat_grad/SliceК
gradients/concat_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes
:P2
gradients/concat_grad/Slice_1К
gradients/concat_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:2&gradients/concat_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes
:P2
gradients/concat_grad/Slice_2Л
gradients/concat_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:3&gradients/concat_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:А22
gradients/concat_grad/Slice_3Л
gradients/concat_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:4&gradients/concat_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:А22
gradients/concat_grad/Slice_4Л
gradients/concat_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:5&gradients/concat_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:А22
gradients/concat_grad/Slice_5К
gradients/concat_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:6&gradients/concat_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes
:P2
gradients/concat_grad/Slice_6К
gradients/concat_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:7&gradients/concat_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes
:P2
gradients/concat_grad/Slice_7К
gradients/concat_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:8&gradients/concat_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:P2
gradients/concat_grad/Slice_8К
gradients/concat_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:9&gradients/concat_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:P2
gradients/concat_grad/Slice_9О
gradients/concat_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:10'gradients/concat_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:P2 
gradients/concat_grad/Slice_10О
gradients/concat_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:11'gradients/concat_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:P2 
gradients/concat_grad/Slice_11С
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"P      2 
gradients/Reshape_1_grad/Shape╟
 gradients/Reshape_1_grad/ReshapeReshape$gradients/concat_grad/Slice:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:P2"
 gradients/Reshape_1_grad/ReshapeС
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"P      2 
gradients/Reshape_2_grad/Shape╔
 gradients/Reshape_2_grad/ReshapeReshape&gradients/concat_grad/Slice_1:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:P2"
 gradients/Reshape_2_grad/ReshapeС
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"P      2 
gradients/Reshape_3_grad/Shape╔
 gradients/Reshape_3_grad/ReshapeReshape&gradients/concat_grad/Slice_2:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:P2"
 gradients/Reshape_3_grad/ReshapeС
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"P   P   2 
gradients/Reshape_4_grad/Shape╔
 gradients/Reshape_4_grad/ReshapeReshape&gradients/concat_grad/Slice_3:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:PP2"
 gradients/Reshape_4_grad/ReshapeС
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"P   P   2 
gradients/Reshape_5_grad/Shape╔
 gradients/Reshape_5_grad/ReshapeReshape&gradients/concat_grad/Slice_4:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:PP2"
 gradients/Reshape_5_grad/ReshapeС
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"P   P   2 
gradients/Reshape_6_grad/Shape╔
 gradients/Reshape_6_grad/ReshapeReshape&gradients/concat_grad/Slice_5:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:PP2"
 gradients/Reshape_6_grad/ReshapeК
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:P2 
gradients/Reshape_7_grad/Shape┼
 gradients/Reshape_7_grad/ReshapeReshape&gradients/concat_grad/Slice_6:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes
:P2"
 gradients/Reshape_7_grad/ReshapeК
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:P2 
gradients/Reshape_8_grad/Shape┼
 gradients/Reshape_8_grad/ReshapeReshape&gradients/concat_grad/Slice_7:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:P2"
 gradients/Reshape_8_grad/ReshapeК
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:P2 
gradients/Reshape_9_grad/Shape┼
 gradients/Reshape_9_grad/ReshapeReshape&gradients/concat_grad/Slice_8:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:P2"
 gradients/Reshape_9_grad/ReshapeМ
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:P2!
gradients/Reshape_10_grad/Shape╚
!gradients/Reshape_10_grad/ReshapeReshape&gradients/concat_grad/Slice_9:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:P2#
!gradients/Reshape_10_grad/ReshapeМ
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:P2!
gradients/Reshape_11_grad/Shape╔
!gradients/Reshape_11_grad/ReshapeReshape'gradients/concat_grad/Slice_10:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:P2#
!gradients/Reshape_11_grad/ReshapeМ
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:P2!
gradients/Reshape_12_grad/Shape╔
!gradients/Reshape_12_grad/ReshapeReshape'gradients/concat_grad/Slice_11:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:P2#
!gradients/Reshape_12_grad/Reshape╠
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:2.
,gradients/transpose_1_grad/InvertPermutation▀
$gradients/transpose_1_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:P2&
$gradients/transpose_1_grad/transpose╠
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:2.
,gradients/transpose_2_grad/InvertPermutation▀
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:P2&
$gradients/transpose_2_grad/transpose╠
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:2.
,gradients/transpose_3_grad/InvertPermutation▀
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:P2&
$gradients/transpose_3_grad/transpose╠
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:2.
,gradients/transpose_4_grad/InvertPermutation▀
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:PP2&
$gradients/transpose_4_grad/transpose╠
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:2.
,gradients/transpose_5_grad/InvertPermutation▀
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:PP2&
$gradients/transpose_5_grad/transpose╠
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:2.
,gradients/transpose_6_grad/InvertPermutation▀
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:PP2&
$gradients/transpose_6_grad/transposeп
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_7_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:р2
gradients/split_2_grad/concatд
gradients/split_grad/concatConcatV2(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	Ё2
gradients/split_grad/concatм
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	PЁ2
gradients/split_1_grad/concatН
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   Ё   2
gradients/Reshape_grad/Shape─
gradients/Reshape_grad/ReshapeReshape&gradients/split_2_grad/concat:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	Ё2 
gradients/Reshape_grad/Reshapev
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*#
_output_shapes
:Аf2

Identityz

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*
_output_shapes
:	АP2

Identity_1t

Identity_2Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	Ё2

Identity_2v

Identity_3Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	PЁ2

Identity_3w

Identity_4Identity'gradients/Reshape_grad/Reshape:output:0*
T0*
_output_shapes
:	Ё2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*└
_input_shapesо
л:	АP:АfP:	АP: :: ::fА:АP: :╨Ы:fАP:АP:: ::::::: : : *<
api_implements*(gru_04d38b74-02be-4856-ad13-b7761c087ec4*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_gru_with_fallback_178732*
go_backwards( *

time_major( :% !

_output_shapes
:	АP:)%
#
_output_shapes
:АfP:%!

_output_shapes
:	АP:

_output_shapes
: : 

_output_shapes
::

_output_shapes
: :

_output_shapes
::)%
#
_output_shapes
:fА:)%
#
_output_shapes
:АP:	

_output_shapes
: :"


_output_shapes

:╨Ы:)%
#
_output_shapes
:fАP:)%
#
_output_shapes
:АP: 

_output_shapes
::

_output_shapes
: : 

_output_shapes
:: 
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
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
Рм
╬

:__inference___backward_gpu_gru_with_fallback_183123_183259
placeholder
placeholder_1
placeholder_2
placeholder_3A
=gradients_transpose_7_grad_invertpermutation_transpose_7_perm!
gradients_zeros_like_cudnnrnn#
gradients_zeros_like_1_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims=
9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c3
/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat5
1gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_1=
9gradients_transpose_grad_invertpermutation_transpose_perm)
%gradients_concat_grad_mod_concat_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim
identity

identity_1

identity_2

identity_3

identity_4Иm
gradients/grad_ys_0Identityplaceholder*
T0*
_output_shapes
:	АP2
gradients/grad_ys_0s
gradients/grad_ys_1Identityplaceholder_1*
T0*#
_output_shapes
:АfP2
gradients/grad_ys_1o
gradients/grad_ys_2Identityplaceholder_2*
T0*
_output_shapes
:	АP2
gradients/grad_ys_2f
gradients/grad_ys_3Identityplaceholder_3*
T0*
_output_shapes
: 2
gradients/grad_ys_3Э
"gradients/strided_slice_grad/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"f   А   P   2$
"gradients/strided_slice_grad/Shape┐
3gradients/strided_slice_grad/StridedSliceGrad/shapeConst*
_output_shapes
:*
dtype0*!
valueB"f   А   P   25
3gradients/strided_slice_grad/StridedSliceGrad/shape╜
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
1gradients/strided_slice_grad/StridedSliceGrad/end╕
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
:fАP*
shrink_axis_mask2/
-gradients/strided_slice_grad/StridedSliceGrad╠
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:2.
,gradients/transpose_7_grad/InvertPermutation╫
$gradients/transpose_7_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*#
_output_shapes
:fАP2&
$gradients/transpose_7_grad/transposeС
gradients/Squeeze_grad/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"   А   P   2
gradients/Squeeze_grad/Shape╛
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*#
_output_shapes
:АP2 
gradients/Squeeze_grad/ReshapeГ
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_7_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*#
_output_shapes
:fАP2
gradients/AddNy
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
: 2
gradients/zeros_likeБ
gradients/zeros_like_1	ZerosLikegradients_zeros_like_1_cudnnrnn*
T0*
_output_shapes
:2
gradients/zeros_like_1Ш
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat1gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn3gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_1gradients_zeros_like_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0gradients/zeros_like:y:0gradients_zeros_like_1_cudnnrnn*
T0*<
_output_shapes*
(:fА:АP: :╨Ы*
rnn_modegru2*
(gradients/CudnnRNN_grad/CudnnRNNBackprop─
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:2,
*gradients/transpose_grad/InvertPermutationю
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*#
_output_shapes
:Аf2$
"gradients/transpose_grad/transposeУ
gradients/ExpandDims_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"А   P   2!
gradients/ExpandDims_grad/Shapeт
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*
_output_shapes
:	АP2#
!gradients/ExpandDims_grad/Reshapez
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_grad/Rankп
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_grad/modД
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:P2
gradients/concat_grad/ShapeИ
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:P2
gradients/concat_grad/Shape_1И
gradients/concat_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:P2
gradients/concat_grad/Shape_2Й
gradients/concat_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:А22
gradients/concat_grad/Shape_3Й
gradients/concat_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:А22
gradients/concat_grad/Shape_4Й
gradients/concat_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:А22
gradients/concat_grad/Shape_5И
gradients/concat_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:P2
gradients/concat_grad/Shape_6И
gradients/concat_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:P2
gradients/concat_grad/Shape_7И
gradients/concat_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:P2
gradients/concat_grad/Shape_8И
gradients/concat_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:P2
gradients/concat_grad/Shape_9К
gradients/concat_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:P2 
gradients/concat_grad/Shape_10К
gradients/concat_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:P2 
gradients/concat_grad/Shape_11╛
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0&gradients/concat_grad/Shape_2:output:0&gradients/concat_grad/Shape_3:output:0&gradients/concat_grad/Shape_4:output:0&gradients/concat_grad/Shape_5:output:0&gradients/concat_grad/Shape_6:output:0&gradients/concat_grad/Shape_7:output:0&gradients/concat_grad/Shape_8:output:0&gradients/concat_grad/Shape_9:output:0'gradients/concat_grad/Shape_10:output:0'gradients/concat_grad/Shape_11:output:0*
N*\
_output_shapesJ
H::::::::::::2$
"gradients/concat_grad/ConcatOffsetД
gradients/concat_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes
:P2
gradients/concat_grad/SliceК
gradients/concat_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes
:P2
gradients/concat_grad/Slice_1К
gradients/concat_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:2&gradients/concat_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes
:P2
gradients/concat_grad/Slice_2Л
gradients/concat_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:3&gradients/concat_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:А22
gradients/concat_grad/Slice_3Л
gradients/concat_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:4&gradients/concat_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:А22
gradients/concat_grad/Slice_4Л
gradients/concat_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:5&gradients/concat_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:А22
gradients/concat_grad/Slice_5К
gradients/concat_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:6&gradients/concat_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes
:P2
gradients/concat_grad/Slice_6К
gradients/concat_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:7&gradients/concat_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes
:P2
gradients/concat_grad/Slice_7К
gradients/concat_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:8&gradients/concat_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:P2
gradients/concat_grad/Slice_8К
gradients/concat_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:9&gradients/concat_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:P2
gradients/concat_grad/Slice_9О
gradients/concat_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:10'gradients/concat_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:P2 
gradients/concat_grad/Slice_10О
gradients/concat_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:11'gradients/concat_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:P2 
gradients/concat_grad/Slice_11С
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"P      2 
gradients/Reshape_1_grad/Shape╟
 gradients/Reshape_1_grad/ReshapeReshape$gradients/concat_grad/Slice:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:P2"
 gradients/Reshape_1_grad/ReshapeС
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"P      2 
gradients/Reshape_2_grad/Shape╔
 gradients/Reshape_2_grad/ReshapeReshape&gradients/concat_grad/Slice_1:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:P2"
 gradients/Reshape_2_grad/ReshapeС
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"P      2 
gradients/Reshape_3_grad/Shape╔
 gradients/Reshape_3_grad/ReshapeReshape&gradients/concat_grad/Slice_2:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:P2"
 gradients/Reshape_3_grad/ReshapeС
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"P   P   2 
gradients/Reshape_4_grad/Shape╔
 gradients/Reshape_4_grad/ReshapeReshape&gradients/concat_grad/Slice_3:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:PP2"
 gradients/Reshape_4_grad/ReshapeС
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"P   P   2 
gradients/Reshape_5_grad/Shape╔
 gradients/Reshape_5_grad/ReshapeReshape&gradients/concat_grad/Slice_4:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:PP2"
 gradients/Reshape_5_grad/ReshapeС
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"P   P   2 
gradients/Reshape_6_grad/Shape╔
 gradients/Reshape_6_grad/ReshapeReshape&gradients/concat_grad/Slice_5:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:PP2"
 gradients/Reshape_6_grad/ReshapeК
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:P2 
gradients/Reshape_7_grad/Shape┼
 gradients/Reshape_7_grad/ReshapeReshape&gradients/concat_grad/Slice_6:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes
:P2"
 gradients/Reshape_7_grad/ReshapeК
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:P2 
gradients/Reshape_8_grad/Shape┼
 gradients/Reshape_8_grad/ReshapeReshape&gradients/concat_grad/Slice_7:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:P2"
 gradients/Reshape_8_grad/ReshapeК
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:P2 
gradients/Reshape_9_grad/Shape┼
 gradients/Reshape_9_grad/ReshapeReshape&gradients/concat_grad/Slice_8:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:P2"
 gradients/Reshape_9_grad/ReshapeМ
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:P2!
gradients/Reshape_10_grad/Shape╚
!gradients/Reshape_10_grad/ReshapeReshape&gradients/concat_grad/Slice_9:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:P2#
!gradients/Reshape_10_grad/ReshapeМ
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:P2!
gradients/Reshape_11_grad/Shape╔
!gradients/Reshape_11_grad/ReshapeReshape'gradients/concat_grad/Slice_10:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:P2#
!gradients/Reshape_11_grad/ReshapeМ
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:P2!
gradients/Reshape_12_grad/Shape╔
!gradients/Reshape_12_grad/ReshapeReshape'gradients/concat_grad/Slice_11:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:P2#
!gradients/Reshape_12_grad/Reshape╠
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:2.
,gradients/transpose_1_grad/InvertPermutation▀
$gradients/transpose_1_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:P2&
$gradients/transpose_1_grad/transpose╠
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:2.
,gradients/transpose_2_grad/InvertPermutation▀
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:P2&
$gradients/transpose_2_grad/transpose╠
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:2.
,gradients/transpose_3_grad/InvertPermutation▀
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:P2&
$gradients/transpose_3_grad/transpose╠
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:2.
,gradients/transpose_4_grad/InvertPermutation▀
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:PP2&
$gradients/transpose_4_grad/transpose╠
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:2.
,gradients/transpose_5_grad/InvertPermutation▀
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:PP2&
$gradients/transpose_5_grad/transpose╠
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:2.
,gradients/transpose_6_grad/InvertPermutation▀
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:PP2&
$gradients/transpose_6_grad/transposeп
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_7_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:р2
gradients/split_2_grad/concatд
gradients/split_grad/concatConcatV2(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	Ё2
gradients/split_grad/concatм
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	PЁ2
gradients/split_1_grad/concatН
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   Ё   2
gradients/Reshape_grad/Shape─
gradients/Reshape_grad/ReshapeReshape&gradients/split_2_grad/concat:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	Ё2 
gradients/Reshape_grad/Reshapev
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*#
_output_shapes
:Аf2

Identityz

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*
_output_shapes
:	АP2

Identity_1t

Identity_2Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	Ё2

Identity_2v

Identity_3Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	PЁ2

Identity_3w

Identity_4Identity'gradients/Reshape_grad/Reshape:output:0*
T0*
_output_shapes
:	Ё2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*└
_input_shapesо
л:	АP:АfP:	АP: :: ::fА:АP: :╨Ы:fАP:АP:: ::::::: : : *<
api_implements*(gru_213abd45-4533-4531-917c-8912d5b592e1*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_gru_with_fallback_183258*
go_backwards( *

time_major( :% !

_output_shapes
:	АP:)%
#
_output_shapes
:АfP:%!

_output_shapes
:	АP:

_output_shapes
: : 

_output_shapes
::

_output_shapes
: :

_output_shapes
::)%
#
_output_shapes
:fА:)%
#
_output_shapes
:АP:	

_output_shapes
: :"


_output_shapes

:╨Ы:)%
#
_output_shapes
:fАP:)%
#
_output_shapes
:АP: 

_output_shapes
::

_output_shapes
: : 

_output_shapes
:: 
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
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
н=
п
(__inference_gpu_gru_with_fallback_179767

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3Иu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permГ
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
:         P2

ExpandDimsP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimЗ
splitSplitsplit/split_dim:output:0kernel*
T0*2
_output_shapes 
:P:P:P*
	num_split2
splitT
Const_1Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimЧ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*2
_output_shapes 
:PP:PP:PP*
	num_split2	
split_1q
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
         2
Reshape/shapea
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:р2	
ReshapeT
Const_2Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_2h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dimЭ
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*8
_output_shapes&
$:P:P:P:P:P:P*
	num_split2	
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
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0*
_output_shapes

:P2
transpose_1i
	Reshape_1Reshapetranspose_1:y:0Const_3:output:0*
T0*
_output_shapes
:P2
	Reshape_1u
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0*
_output_shapes

:P2
transpose_2i
	Reshape_2Reshapetranspose_2:y:0Const_3:output:0*
T0*
_output_shapes
:P2
	Reshape_2u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:P2
transpose_3i
	Reshape_3Reshapetranspose_3:y:0Const_3:output:0*
T0*
_output_shapes
:P2
	Reshape_3u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm}
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0*
_output_shapes

:PP2
transpose_4j
	Reshape_4Reshapetranspose_4:y:0Const_3:output:0*
T0*
_output_shapes	
:А22
	Reshape_4u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:PP2
transpose_5j
	Reshape_5Reshapetranspose_5:y:0Const_3:output:0*
T0*
_output_shapes	
:А22
	Reshape_5u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0*
_output_shapes

:PP2
transpose_6j
	Reshape_6Reshapetranspose_6:y:0Const_3:output:0*
T0*
_output_shapes	
:А22
	Reshape_6j
	Reshape_7Reshapesplit_2:output:1Const_3:output:0*
T0*
_output_shapes
:P2
	Reshape_7j
	Reshape_8Reshapesplit_2:output:0Const_3:output:0*
T0*
_output_shapes
:P2
	Reshape_8j
	Reshape_9Reshapesplit_2:output:2Const_3:output:0*
T0*
_output_shapes
:P2
	Reshape_9l

Reshape_10Reshapesplit_2:output:4Const_3:output:0*
T0*
_output_shapes
:P2

Reshape_10l

Reshape_11Reshapesplit_2:output:3Const_3:output:0*
T0*
_output_shapes
:P2

Reshape_11l

Reshape_12Reshapesplit_2:output:5Const_3:output:0*
T0*
_output_shapes
:P2

Reshape_12\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis╒
concatConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0*
_output_shapes

:╨Ы2
concati
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    2
CudnnRNN/input_c▀
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat:output:0*
T0*Q
_output_shapes?
=:                  P:         P: :*
rnn_modegru2

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
strided_slice/stack_2Ў
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         P*
shrink_axis_mask2
strided_slicey
transpose_7/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_7/permФ
transpose_7	TransposeCudnnRNN:output:0transpose_7/perm:output:0*
T0*4
_output_shapes"
 :                  P2
transpose_7{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:         P*
squeeze_dims
 2	
Squeezef
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
:         P2

Identityt

Identity_1Identitytranspose_7:y:0*
T0*4
_output_shapes"
 :                  P2

Identity_1h

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:         P2

Identity_2W

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*g
_input_shapesV
T:                  :         P:	Ё:	PЁ:	Ё*<
api_implements*(gru_e5c217df-3f49-4cb3-b56b-2ac01f8bd969*
api_preferred_deviceGPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs:OK
'
_output_shapes
:         P
 
_user_specified_nameinit_h:GC

_output_shapes
:	Ё
 
_user_specified_namekernel:QM

_output_shapes
:	PЁ
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	Ё

_user_specified_namebias
ЭG
╝
&__forward_gpu_gru_with_fallback_182462

inputs
init_h_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3
cudnnrnn
transpose_7_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
cudnnrnn_input_c

concat
transpose_perm

init_h
concat_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
split_2_split_dim
split_split_dim
split_1_split_dimИu
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
:         P2

ExpandDimsP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimЗ
splitSplitsplit/split_dim:output:0kernel*
T0*2
_output_shapes 
:P:P:P*
	num_split2
splitT
Const_1Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimЧ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*2
_output_shapes 
:PP:PP:PP*
	num_split2	
split_1q
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
         2
Reshape/shapea
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:р2	
ReshapeT
Const_2Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_2h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dimЭ
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*8
_output_shapes&
$:P:P:P:P:P:P*
	num_split2	
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
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0*
_output_shapes

:P2
transpose_1i
	Reshape_1Reshapetranspose_1:y:0Const_3:output:0*
T0*
_output_shapes
:P2
	Reshape_1u
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0*
_output_shapes

:P2
transpose_2i
	Reshape_2Reshapetranspose_2:y:0Const_3:output:0*
T0*
_output_shapes
:P2
	Reshape_2u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:P2
transpose_3i
	Reshape_3Reshapetranspose_3:y:0Const_3:output:0*
T0*
_output_shapes
:P2
	Reshape_3u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm}
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0*
_output_shapes

:PP2
transpose_4j
	Reshape_4Reshapetranspose_4:y:0Const_3:output:0*
T0*
_output_shapes	
:А22
	Reshape_4u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:PP2
transpose_5j
	Reshape_5Reshapetranspose_5:y:0Const_3:output:0*
T0*
_output_shapes	
:А22
	Reshape_5u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0*
_output_shapes

:PP2
transpose_6j
	Reshape_6Reshapetranspose_6:y:0Const_3:output:0*
T0*
_output_shapes	
:А22
	Reshape_6j
	Reshape_7Reshapesplit_2:output:1Const_3:output:0*
T0*
_output_shapes
:P2
	Reshape_7j
	Reshape_8Reshapesplit_2:output:0Const_3:output:0*
T0*
_output_shapes
:P2
	Reshape_8j
	Reshape_9Reshapesplit_2:output:2Const_3:output:0*
T0*
_output_shapes
:P2
	Reshape_9l

Reshape_10Reshapesplit_2:output:4Const_3:output:0*
T0*
_output_shapes
:P2

Reshape_10l

Reshape_11Reshapesplit_2:output:3Const_3:output:0*
T0*
_output_shapes
:P2

Reshape_11l

Reshape_12Reshapesplit_2:output:5Const_3:output:0*
T0*
_output_shapes
:P2

Reshape_12\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis╣
concat_0ConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T02
concati
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    2
CudnnRNN/input_cу
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat_0:output:0*
T0*Q
_output_shapes?
=:                  P:         P: :*
rnn_modegru2

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
strided_slice/stack_2Ў
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         P*
shrink_axis_mask2
strided_slicey
transpose_7/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_7/permФ
transpose_7	TransposeCudnnRNN:output:0transpose_7/perm:output:0*
T0*4
_output_shapes"
 :                  P2
transpose_7{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:         P*
squeeze_dims
 2	
Squeezef
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
:         P2

Identityt

Identity_1Identitytranspose_7:y:0*
T0*4
_output_shapes"
 :                  P2

Identity_1h

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:         P2

Identity_2W

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_3"
concatconcat_0:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"-
cudnnrnn_input_cCudnnRNN/input_c:output:0"!

expanddimsExpandDims:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"
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
transpose_7_permtranspose_7/perm:output:0")
transpose_permtranspose/perm:output:0*g
_input_shapesV
T:                  :         P:	Ё:	PЁ:	Ё*<
api_implements*(gru_7537e81a-4edc-4013-9f4b-628ed05efbcd*
api_preferred_deviceGPU*V
backward_function_name<:__inference___backward_gpu_gru_with_fallback_182327_182463*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs:OK
'
_output_shapes
:         P
 
_user_specified_nameinit_h:GC

_output_shapes
:	Ё
 
_user_specified_namekernel:QM

_output_shapes
:	PЁ
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	Ё

_user_specified_namebias
О1
т
while_body_180782
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0
while_biasadd_unstack_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_1_unstack_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel
while_biasadd_unstack#
while_matmul_1_recurrent_kernel
while_biasadd_1_unstack├
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"А      29
7while/TensorArrayV2Read/TensorListGetItem/element_shape╦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes
:	А*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemЪ
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0* 
_output_shapes
:
АЁ2
while/MatMulЕ
while/BiasAddBiasAddwhile/MatMul:product:0while_biasadd_unstack_0*
T0* 
_output_shapes
:
АЁ2
while/BiasAdd\
while/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/Constp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dimм
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*5
_output_shapes#
!:	АP:	АP:	АP*
	num_split2
while/splitН
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0* 
_output_shapes
:
АЁ2
while/MatMul_1Н
while/BiasAdd_1BiasAddwhile/MatMul_1:product:0while_biasadd_1_unstack_0*
T0* 
_output_shapes
:
АЁ2
while/BiasAdd_1`
while/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
while/Const_1t
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split_1/split_dim┤
while/split_1Split while/split_1/split_dim:output:0while/BiasAdd_1:output:0*
T0*5
_output_shapes#
!:	АP:	АP:	АP*
	num_split2
while/split_1w
	while/addAddV2while/split:output:0while/split_1:output:0*
T0*
_output_shapes
:	АP2
	while/addb
while/SigmoidSigmoidwhile/add:z:0*
T0*
_output_shapes
:	АP2
while/Sigmoid{
while/add_1AddV2while/split:output:1while/split_1:output:1*
T0*
_output_shapes
:	АP2
while/add_1h
while/Sigmoid_1Sigmoidwhile/add_1:z:0*
T0*
_output_shapes
:	АP2
while/Sigmoid_1t
	while/mulMulwhile/Sigmoid_1:y:0while/split_1:output:2*
T0*
_output_shapes
:	АP2
	while/mulr
while/add_2AddV2while/split:output:2while/mul:z:0*
T0*
_output_shapes
:	АP2
while/add_2[

while/TanhTanhwhile/add_2:z:0*
T0*
_output_shapes
:	АP2

while/Tanhs
while/mul_1Mulwhile/Sigmoid:y:0while_placeholder_2*
T0*
_output_shapes
:	АP2
while/mul_1_
while/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
while/sub/xp
	while/subSubwhile/sub/x:output:0while/Sigmoid:y:0*
T0*
_output_shapes
:	АP2
	while/subj
while/mul_2Mulwhile/sub:z:0while/Tanh:y:0*
T0*
_output_shapes
:	АP2
while/mul_2o
while/add_3AddV2while/mul_1:z:0while/mul_2:z:0*
T0*
_output_shapes
:	АP2
while/add_3╙
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/add_3:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem`
while/add_4/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_4/yo
while/add_4AddV2while_placeholderwhile/add_4/y:output:0*
T0*
_output_shapes
: 2
while/add_4`
while/add_5/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_5/yv
while/add_5AddV2while_while_loop_counterwhile/add_5/y:output:0*
T0*
_output_shapes
: 2
while/add_5^
while/IdentityIdentitywhile/add_5:z:0*
T0*
_output_shapes
: 2
while/Identityq
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: 2
while/Identity_1b
while/Identity_2Identitywhile/add_4:z:0*
T0*
_output_shapes
: 2
while/Identity_2Н
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: 2
while/Identity_3k
while/Identity_4Identitywhile/add_3:z:0*
T0*
_output_shapes
:	АP2
while/Identity_4"4
while_biasadd_1_unstackwhile_biasadd_1_unstack_0"0
while_biasadd_unstackwhile_biasadd_unstack_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*N
_input_shapes=
;: : : : :	АP: : :	Ё:Ё:	PЁ:Ё: 
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
:	АP:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	Ё:!

_output_shapes	
:Ё:%	!

_output_shapes
:	PЁ:!


_output_shapes	
:Ё
Рм
╬

:__inference___backward_gpu_gru_with_fallback_181902_182038
placeholder
placeholder_1
placeholder_2
placeholder_3A
=gradients_transpose_7_grad_invertpermutation_transpose_7_perm!
gradients_zeros_like_cudnnrnn#
gradients_zeros_like_1_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims=
9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c3
/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat5
1gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_1=
9gradients_transpose_grad_invertpermutation_transpose_perm)
%gradients_concat_grad_mod_concat_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim
identity

identity_1

identity_2

identity_3

identity_4Иm
gradients/grad_ys_0Identityplaceholder*
T0*
_output_shapes
:	АP2
gradients/grad_ys_0s
gradients/grad_ys_1Identityplaceholder_1*
T0*#
_output_shapes
:АfP2
gradients/grad_ys_1o
gradients/grad_ys_2Identityplaceholder_2*
T0*
_output_shapes
:	АP2
gradients/grad_ys_2f
gradients/grad_ys_3Identityplaceholder_3*
T0*
_output_shapes
: 2
gradients/grad_ys_3Э
"gradients/strided_slice_grad/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"f   А   P   2$
"gradients/strided_slice_grad/Shape┐
3gradients/strided_slice_grad/StridedSliceGrad/shapeConst*
_output_shapes
:*
dtype0*!
valueB"f   А   P   25
3gradients/strided_slice_grad/StridedSliceGrad/shape╜
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
1gradients/strided_slice_grad/StridedSliceGrad/end╕
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
:fАP*
shrink_axis_mask2/
-gradients/strided_slice_grad/StridedSliceGrad╠
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:2.
,gradients/transpose_7_grad/InvertPermutation╫
$gradients/transpose_7_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*#
_output_shapes
:fАP2&
$gradients/transpose_7_grad/transposeС
gradients/Squeeze_grad/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"   А   P   2
gradients/Squeeze_grad/Shape╛
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*#
_output_shapes
:АP2 
gradients/Squeeze_grad/ReshapeГ
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_7_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*#
_output_shapes
:fАP2
gradients/AddNy
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
: 2
gradients/zeros_likeБ
gradients/zeros_like_1	ZerosLikegradients_zeros_like_1_cudnnrnn*
T0*
_output_shapes
:2
gradients/zeros_like_1Ш
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat1gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn3gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_1gradients_zeros_like_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0gradients/zeros_like:y:0gradients_zeros_like_1_cudnnrnn*
T0*<
_output_shapes*
(:fА:АP: :╨Ы*
rnn_modegru2*
(gradients/CudnnRNN_grad/CudnnRNNBackprop─
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:2,
*gradients/transpose_grad/InvertPermutationю
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*#
_output_shapes
:Аf2$
"gradients/transpose_grad/transposeУ
gradients/ExpandDims_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"А   P   2!
gradients/ExpandDims_grad/Shapeт
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*
_output_shapes
:	АP2#
!gradients/ExpandDims_grad/Reshapez
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_grad/Rankп
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_grad/modД
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:P2
gradients/concat_grad/ShapeИ
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:P2
gradients/concat_grad/Shape_1И
gradients/concat_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:P2
gradients/concat_grad/Shape_2Й
gradients/concat_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:А22
gradients/concat_grad/Shape_3Й
gradients/concat_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:А22
gradients/concat_grad/Shape_4Й
gradients/concat_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:А22
gradients/concat_grad/Shape_5И
gradients/concat_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:P2
gradients/concat_grad/Shape_6И
gradients/concat_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:P2
gradients/concat_grad/Shape_7И
gradients/concat_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:P2
gradients/concat_grad/Shape_8И
gradients/concat_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:P2
gradients/concat_grad/Shape_9К
gradients/concat_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:P2 
gradients/concat_grad/Shape_10К
gradients/concat_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:P2 
gradients/concat_grad/Shape_11╛
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0&gradients/concat_grad/Shape_2:output:0&gradients/concat_grad/Shape_3:output:0&gradients/concat_grad/Shape_4:output:0&gradients/concat_grad/Shape_5:output:0&gradients/concat_grad/Shape_6:output:0&gradients/concat_grad/Shape_7:output:0&gradients/concat_grad/Shape_8:output:0&gradients/concat_grad/Shape_9:output:0'gradients/concat_grad/Shape_10:output:0'gradients/concat_grad/Shape_11:output:0*
N*\
_output_shapesJ
H::::::::::::2$
"gradients/concat_grad/ConcatOffsetД
gradients/concat_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes
:P2
gradients/concat_grad/SliceК
gradients/concat_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes
:P2
gradients/concat_grad/Slice_1К
gradients/concat_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:2&gradients/concat_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes
:P2
gradients/concat_grad/Slice_2Л
gradients/concat_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:3&gradients/concat_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:А22
gradients/concat_grad/Slice_3Л
gradients/concat_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:4&gradients/concat_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:А22
gradients/concat_grad/Slice_4Л
gradients/concat_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:5&gradients/concat_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:А22
gradients/concat_grad/Slice_5К
gradients/concat_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:6&gradients/concat_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes
:P2
gradients/concat_grad/Slice_6К
gradients/concat_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:7&gradients/concat_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes
:P2
gradients/concat_grad/Slice_7К
gradients/concat_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:8&gradients/concat_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:P2
gradients/concat_grad/Slice_8К
gradients/concat_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:9&gradients/concat_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:P2
gradients/concat_grad/Slice_9О
gradients/concat_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:10'gradients/concat_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:P2 
gradients/concat_grad/Slice_10О
gradients/concat_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:11'gradients/concat_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:P2 
gradients/concat_grad/Slice_11С
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"P      2 
gradients/Reshape_1_grad/Shape╟
 gradients/Reshape_1_grad/ReshapeReshape$gradients/concat_grad/Slice:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:P2"
 gradients/Reshape_1_grad/ReshapeС
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"P      2 
gradients/Reshape_2_grad/Shape╔
 gradients/Reshape_2_grad/ReshapeReshape&gradients/concat_grad/Slice_1:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:P2"
 gradients/Reshape_2_grad/ReshapeС
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"P      2 
gradients/Reshape_3_grad/Shape╔
 gradients/Reshape_3_grad/ReshapeReshape&gradients/concat_grad/Slice_2:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:P2"
 gradients/Reshape_3_grad/ReshapeС
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"P   P   2 
gradients/Reshape_4_grad/Shape╔
 gradients/Reshape_4_grad/ReshapeReshape&gradients/concat_grad/Slice_3:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:PP2"
 gradients/Reshape_4_grad/ReshapeС
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"P   P   2 
gradients/Reshape_5_grad/Shape╔
 gradients/Reshape_5_grad/ReshapeReshape&gradients/concat_grad/Slice_4:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:PP2"
 gradients/Reshape_5_grad/ReshapeС
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"P   P   2 
gradients/Reshape_6_grad/Shape╔
 gradients/Reshape_6_grad/ReshapeReshape&gradients/concat_grad/Slice_5:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:PP2"
 gradients/Reshape_6_grad/ReshapeК
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:P2 
gradients/Reshape_7_grad/Shape┼
 gradients/Reshape_7_grad/ReshapeReshape&gradients/concat_grad/Slice_6:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes
:P2"
 gradients/Reshape_7_grad/ReshapeК
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:P2 
gradients/Reshape_8_grad/Shape┼
 gradients/Reshape_8_grad/ReshapeReshape&gradients/concat_grad/Slice_7:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:P2"
 gradients/Reshape_8_grad/ReshapeК
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:P2 
gradients/Reshape_9_grad/Shape┼
 gradients/Reshape_9_grad/ReshapeReshape&gradients/concat_grad/Slice_8:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:P2"
 gradients/Reshape_9_grad/ReshapeМ
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:P2!
gradients/Reshape_10_grad/Shape╚
!gradients/Reshape_10_grad/ReshapeReshape&gradients/concat_grad/Slice_9:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:P2#
!gradients/Reshape_10_grad/ReshapeМ
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:P2!
gradients/Reshape_11_grad/Shape╔
!gradients/Reshape_11_grad/ReshapeReshape'gradients/concat_grad/Slice_10:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:P2#
!gradients/Reshape_11_grad/ReshapeМ
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:P2!
gradients/Reshape_12_grad/Shape╔
!gradients/Reshape_12_grad/ReshapeReshape'gradients/concat_grad/Slice_11:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:P2#
!gradients/Reshape_12_grad/Reshape╠
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:2.
,gradients/transpose_1_grad/InvertPermutation▀
$gradients/transpose_1_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:P2&
$gradients/transpose_1_grad/transpose╠
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:2.
,gradients/transpose_2_grad/InvertPermutation▀
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:P2&
$gradients/transpose_2_grad/transpose╠
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:2.
,gradients/transpose_3_grad/InvertPermutation▀
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:P2&
$gradients/transpose_3_grad/transpose╠
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:2.
,gradients/transpose_4_grad/InvertPermutation▀
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:PP2&
$gradients/transpose_4_grad/transpose╠
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:2.
,gradients/transpose_5_grad/InvertPermutation▀
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:PP2&
$gradients/transpose_5_grad/transpose╠
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:2.
,gradients/transpose_6_grad/InvertPermutation▀
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:PP2&
$gradients/transpose_6_grad/transposeп
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_7_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:р2
gradients/split_2_grad/concatд
gradients/split_grad/concatConcatV2(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	Ё2
gradients/split_grad/concatм
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	PЁ2
gradients/split_1_grad/concatН
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   Ё   2
gradients/Reshape_grad/Shape─
gradients/Reshape_grad/ReshapeReshape&gradients/split_2_grad/concat:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	Ё2 
gradients/Reshape_grad/Reshapev
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*#
_output_shapes
:Аf2

Identityz

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*
_output_shapes
:	АP2

Identity_1t

Identity_2Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	Ё2

Identity_2v

Identity_3Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	PЁ2

Identity_3w

Identity_4Identity'gradients/Reshape_grad/Reshape:output:0*
T0*
_output_shapes
:	Ё2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*└
_input_shapesо
л:	АP:АfP:	АP: :: ::fА:АP: :╨Ы:fАP:АP:: ::::::: : : *<
api_implements*(gru_21784482-630b-48c1-9b22-63b152563d78*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_gru_with_fallback_182037*
go_backwards( *

time_major( :% !

_output_shapes
:	АP:)%
#
_output_shapes
:АfP:%!

_output_shapes
:	АP:

_output_shapes
: : 

_output_shapes
::

_output_shapes
: :

_output_shapes
::)%
#
_output_shapes
:fА:)%
#
_output_shapes
:АP:	

_output_shapes
: :"


_output_shapes

:╨Ы:)%
#
_output_shapes
:fАP:)%
#
_output_shapes
:АP: 

_output_shapes
::

_output_shapes
: : 

_output_shapes
:: 
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
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
н=
п
(__inference_gpu_gru_with_fallback_180165

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3Иu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permГ
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
:         P2

ExpandDimsP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimЗ
splitSplitsplit/split_dim:output:0kernel*
T0*2
_output_shapes 
:P:P:P*
	num_split2
splitT
Const_1Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimЧ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*2
_output_shapes 
:PP:PP:PP*
	num_split2	
split_1q
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
         2
Reshape/shapea
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:р2	
ReshapeT
Const_2Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_2h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dimЭ
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*8
_output_shapes&
$:P:P:P:P:P:P*
	num_split2	
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
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0*
_output_shapes

:P2
transpose_1i
	Reshape_1Reshapetranspose_1:y:0Const_3:output:0*
T0*
_output_shapes
:P2
	Reshape_1u
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0*
_output_shapes

:P2
transpose_2i
	Reshape_2Reshapetranspose_2:y:0Const_3:output:0*
T0*
_output_shapes
:P2
	Reshape_2u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:P2
transpose_3i
	Reshape_3Reshapetranspose_3:y:0Const_3:output:0*
T0*
_output_shapes
:P2
	Reshape_3u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm}
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0*
_output_shapes

:PP2
transpose_4j
	Reshape_4Reshapetranspose_4:y:0Const_3:output:0*
T0*
_output_shapes	
:А22
	Reshape_4u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:PP2
transpose_5j
	Reshape_5Reshapetranspose_5:y:0Const_3:output:0*
T0*
_output_shapes	
:А22
	Reshape_5u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0*
_output_shapes

:PP2
transpose_6j
	Reshape_6Reshapetranspose_6:y:0Const_3:output:0*
T0*
_output_shapes	
:А22
	Reshape_6j
	Reshape_7Reshapesplit_2:output:1Const_3:output:0*
T0*
_output_shapes
:P2
	Reshape_7j
	Reshape_8Reshapesplit_2:output:0Const_3:output:0*
T0*
_output_shapes
:P2
	Reshape_8j
	Reshape_9Reshapesplit_2:output:2Const_3:output:0*
T0*
_output_shapes
:P2
	Reshape_9l

Reshape_10Reshapesplit_2:output:4Const_3:output:0*
T0*
_output_shapes
:P2

Reshape_10l

Reshape_11Reshapesplit_2:output:3Const_3:output:0*
T0*
_output_shapes
:P2

Reshape_11l

Reshape_12Reshapesplit_2:output:5Const_3:output:0*
T0*
_output_shapes
:P2

Reshape_12\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis╒
concatConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0*
_output_shapes

:╨Ы2
concati
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    2
CudnnRNN/input_c▀
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat:output:0*
T0*Q
_output_shapes?
=:                  P:         P: :*
rnn_modegru2

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
strided_slice/stack_2Ў
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         P*
shrink_axis_mask2
strided_slicey
transpose_7/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_7/permФ
transpose_7	TransposeCudnnRNN:output:0transpose_7/perm:output:0*
T0*4
_output_shapes"
 :                  P2
transpose_7{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:         P*
squeeze_dims
 2	
Squeezef
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
:         P2

Identityt

Identity_1Identitytranspose_7:y:0*
T0*4
_output_shapes"
 :                  P2

Identity_1h

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:         P2

Identity_2W

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*g
_input_shapesV
T:                  :         P:	Ё:	PЁ:	Ё*<
api_implements*(gru_2ac1db38-e567-4c8c-a714-82beec179340*
api_preferred_deviceGPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs:OK
'
_output_shapes
:         P
 
_user_specified_nameinit_h:GC

_output_shapes
:	Ё
 
_user_specified_namekernel:QM

_output_shapes
:	PЁ
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	Ё

_user_specified_namebias
█
И
$__inference_gru_layer_call_fn_183659

inputs
unknown
	unknown_0
	unknown_1
identityИвStatefulPartitionedCallЇ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:	АP*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_gru_layer_call_and_return_conditional_losses_1807042
StatefulPartitionedCallЖ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*
_output_shapes
:	АP2

Identity"
identityIdentity:output:0*.
_input_shapes
:Аf:::22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:Аf
 
_user_specified_nameinputs
Ё
Р
?__inference_gru_layer_call_and_return_conditional_losses_183261

inputs 
read_readvariableop_resource"
read_1_readvariableop_resource"
read_2_readvariableop_resource

identity_3ИвRead/ReadVariableOpвRead_1/ReadVariableOpвRead_2/ReadVariableOpc
ShapeConst*
_output_shapes
:*
dtype0*!
valueB"А   f      2
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
strided_slice/stack_2т
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
value	B :P2
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
B :ш2
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
value	B :P2
zeros/packed/1Г
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
:	АP2
zerosИ
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	Ё*
dtype02
Read/ReadVariableOpg
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	Ё2

IdentityО
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes
:	PЁ*
dtype02
Read_1/ReadVariableOpm

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	PЁ2

Identity_1О
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes
:	Ё*
dtype02
Read_2/ReadVariableOpm

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes
:	Ё2

Identity_2Е
PartitionedCallPartitionedCallinputszeros:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *;
_output_shapes)
':	АP:АfP:	АP: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *(
f#R!
__inference_standard_gru_1830432
PartitionedCallо

Identity_3IdentityPartitionedCall:output:0^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*
T0*
_output_shapes
:	АP2

Identity_3"!

identity_3Identity_3:output:0*.
_input_shapes
:Аf:::2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:K G
#
_output_shapes
:Аf
 
_user_specified_nameinputs
фE
о
&__forward_gpu_gru_with_fallback_183645

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3
transpose_7_perm
cudnnrnn

cudnnrnn_0
	transpose

expanddims
cudnnrnn_input_c

concat

cudnnrnn_1

cudnnrnn_2
transpose_perm
concat_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
split_2_split_dim
split_split_dim
split_1_split_dimИu
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
:АP2

ExpandDimsP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimЗ
splitSplitsplit/split_dim:output:0kernel*
T0*2
_output_shapes 
:P:P:P*
	num_split2
splitT
Const_1Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimЧ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*2
_output_shapes 
:PP:PP:PP*
	num_split2	
split_1q
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
         2
Reshape/shapea
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:р2	
ReshapeT
Const_2Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_2h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dimЭ
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*8
_output_shapes&
$:P:P:P:P:P:P*
	num_split2	
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
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0*
_output_shapes

:P2
transpose_1i
	Reshape_1Reshapetranspose_1:y:0Const_3:output:0*
T0*
_output_shapes
:P2
	Reshape_1u
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0*
_output_shapes

:P2
transpose_2i
	Reshape_2Reshapetranspose_2:y:0Const_3:output:0*
T0*
_output_shapes
:P2
	Reshape_2u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:P2
transpose_3i
	Reshape_3Reshapetranspose_3:y:0Const_3:output:0*
T0*
_output_shapes
:P2
	Reshape_3u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm}
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0*
_output_shapes

:PP2
transpose_4j
	Reshape_4Reshapetranspose_4:y:0Const_3:output:0*
T0*
_output_shapes	
:А22
	Reshape_4u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:PP2
transpose_5j
	Reshape_5Reshapetranspose_5:y:0Const_3:output:0*
T0*
_output_shapes	
:А22
	Reshape_5u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0*
_output_shapes

:PP2
transpose_6j
	Reshape_6Reshapetranspose_6:y:0Const_3:output:0*
T0*
_output_shapes	
:А22
	Reshape_6j
	Reshape_7Reshapesplit_2:output:1Const_3:output:0*
T0*
_output_shapes
:P2
	Reshape_7j
	Reshape_8Reshapesplit_2:output:0Const_3:output:0*
T0*
_output_shapes
:P2
	Reshape_8j
	Reshape_9Reshapesplit_2:output:2Const_3:output:0*
T0*
_output_shapes
:P2
	Reshape_9l

Reshape_10Reshapesplit_2:output:4Const_3:output:0*
T0*
_output_shapes
:P2

Reshape_10l

Reshape_11Reshapesplit_2:output:3Const_3:output:0*
T0*
_output_shapes
:P2

Reshape_11l

Reshape_12Reshapesplit_2:output:5Const_3:output:0*
T0*
_output_shapes
:P2

Reshape_12\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis╣
concat_0ConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T02
concati
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    2
CudnnRNN/input_c╩
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat_0:output:0*
T0*8
_output_shapes&
$:fАP:АP: :*
rnn_modegru2

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
strided_slice/stack_2ю
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	АP*
shrink_axis_mask2
strided_slicey
transpose_7/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_7/permГ
transpose_7	TransposeCudnnRNN:output:0transpose_7/perm:output:0*
T0*#
_output_shapes
:АfP2
transpose_7s
SqueezeSqueezeCudnnRNN:output_h:0*
T0*
_output_shapes
:	АP*
squeeze_dims
 2	
Squeezef
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
:	АP2

Identityc

Identity_1Identitytranspose_7:y:0*
T0*#
_output_shapes
:АfP2

Identity_1`

Identity_2IdentitySqueeze:output:0*
T0*
_output_shapes
:	АP2

Identity_2W

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_3"
concatconcat_0:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output_c:0"&

cudnnrnn_0CudnnRNN:reserve_space:0"

cudnnrnn_1CudnnRNN:output:0"!

cudnnrnn_2CudnnRNN:output_h:0"-
cudnnrnn_input_cCudnnRNN/input_c:output:0"!

expanddimsExpandDims:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"/
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
transpose_7_permtranspose_7/perm:output:0")
transpose_permtranspose/perm:output:0*N
_input_shapes=
;:Аf:	АP:	Ё:	PЁ:	Ё*<
api_implements*(gru_0c988edb-93fc-4a06-b2c6-2b312ba1e1aa*
api_preferred_deviceGPU*V
backward_function_name<:__inference___backward_gpu_gru_with_fallback_183510_183646*
go_backwards( *

time_major( :K G
#
_output_shapes
:Аf
 
_user_specified_nameinputs:GC

_output_shapes
:	АP
 
_user_specified_nameinit_h:GC

_output_shapes
:	Ё
 
_user_specified_namekernel:QM

_output_shapes
:	PЁ
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	Ё

_user_specified_namebias
Ж<
п
(__inference_gpu_gru_with_fallback_180952

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3Иu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permr
	transpose	Transposeinputstranspose/perm:output:0*
T0*#
_output_shapes
:fА2
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
:АP2

ExpandDimsP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimЗ
splitSplitsplit/split_dim:output:0kernel*
T0*2
_output_shapes 
:P:P:P*
	num_split2
splitT
Const_1Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimЧ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*2
_output_shapes 
:PP:PP:PP*
	num_split2	
split_1q
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
         2
Reshape/shapea
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:р2	
ReshapeT
Const_2Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_2h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dimЭ
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*8
_output_shapes&
$:P:P:P:P:P:P*
	num_split2	
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
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0*
_output_shapes

:P2
transpose_1i
	Reshape_1Reshapetranspose_1:y:0Const_3:output:0*
T0*
_output_shapes
:P2
	Reshape_1u
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0*
_output_shapes

:P2
transpose_2i
	Reshape_2Reshapetranspose_2:y:0Const_3:output:0*
T0*
_output_shapes
:P2
	Reshape_2u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:P2
transpose_3i
	Reshape_3Reshapetranspose_3:y:0Const_3:output:0*
T0*
_output_shapes
:P2
	Reshape_3u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm}
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0*
_output_shapes

:PP2
transpose_4j
	Reshape_4Reshapetranspose_4:y:0Const_3:output:0*
T0*
_output_shapes	
:А22
	Reshape_4u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:PP2
transpose_5j
	Reshape_5Reshapetranspose_5:y:0Const_3:output:0*
T0*
_output_shapes	
:А22
	Reshape_5u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0*
_output_shapes

:PP2
transpose_6j
	Reshape_6Reshapetranspose_6:y:0Const_3:output:0*
T0*
_output_shapes	
:А22
	Reshape_6j
	Reshape_7Reshapesplit_2:output:1Const_3:output:0*
T0*
_output_shapes
:P2
	Reshape_7j
	Reshape_8Reshapesplit_2:output:0Const_3:output:0*
T0*
_output_shapes
:P2
	Reshape_8j
	Reshape_9Reshapesplit_2:output:2Const_3:output:0*
T0*
_output_shapes
:P2
	Reshape_9l

Reshape_10Reshapesplit_2:output:4Const_3:output:0*
T0*
_output_shapes
:P2

Reshape_10l

Reshape_11Reshapesplit_2:output:3Const_3:output:0*
T0*
_output_shapes
:P2

Reshape_11l

Reshape_12Reshapesplit_2:output:5Const_3:output:0*
T0*
_output_shapes
:P2

Reshape_12\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis╒
concatConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0*
_output_shapes

:╨Ы2
concati
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    2
CudnnRNN/input_c╞
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat:output:0*
T0*8
_output_shapes&
$:fАP:АP: :*
rnn_modegru2

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
strided_slice/stack_2ю
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	АP*
shrink_axis_mask2
strided_slicey
transpose_7/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_7/permГ
transpose_7	TransposeCudnnRNN:output:0transpose_7/perm:output:0*
T0*#
_output_shapes
:АfP2
transpose_7s
SqueezeSqueezeCudnnRNN:output_h:0*
T0*
_output_shapes
:	АP*
squeeze_dims
 2	
Squeezef
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
:	АP2

Identityc

Identity_1Identitytranspose_7:y:0*
T0*#
_output_shapes
:АfP2

Identity_1`

Identity_2IdentitySqueeze:output:0*
T0*
_output_shapes
:	АP2

Identity_2W

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*N
_input_shapes=
;:Аf:	АP:	Ё:	PЁ:	Ё*<
api_implements*(gru_3ac5e4bb-d907-42d9-bec1-6263b3d99645*
api_preferred_deviceGPU*
go_backwards( *

time_major( :K G
#
_output_shapes
:Аf
 
_user_specified_nameinputs:GC

_output_shapes
:	АP
 
_user_specified_nameinit_h:GC

_output_shapes
:	Ё
 
_user_specified_namekernel:QM

_output_shapes
:	PЁ
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	Ё

_user_specified_namebias
Т
┤
$__inference_gru_layer_call_fn_181199
input_1
input_2
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
identityИвStatefulPartitionedCallЩ
StatefulPartitionedCallStatefulPartitionedCallinput_1input_2unknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin
	2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:	А
*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_gru_layer_call_and_return_conditional_losses_1811862
StatefulPartitionedCallЖ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*
_output_shapes
:	А
2

Identity"
identityIdentity:output:0*E
_input_shapes4
2:Аf:Аf:::::22
StatefulPartitionedCallStatefulPartitionedCall:L H
#
_output_shapes
:Аf
!
_user_specified_name	input_1:LH
#
_output_shapes
:Аf
!
_user_specified_name	input_2
Т
┤
$__inference_gru_layer_call_fn_181232
input_1
input_2
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
identityИвStatefulPartitionedCallЩ
StatefulPartitionedCallStatefulPartitionedCallinput_1input_2unknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin
	2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:	А
*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_gru_layer_call_and_return_conditional_losses_1812192
StatefulPartitionedCallЖ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*
_output_shapes
:	А
2

Identity"
identityIdentity:output:0*E
_input_shapes4
2:Аf:Аf:::::22
StatefulPartitionedCallStatefulPartitionedCall:L H
#
_output_shapes
:Аf
!
_user_specified_name	input_1:LH
#
_output_shapes
:Аf
!
_user_specified_name	input_2
Ж<
п
(__inference_gpu_gru_with_fallback_181507

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3Иu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permr
	transpose	Transposeinputstranspose/perm:output:0*
T0*#
_output_shapes
:fА2
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
:АP2

ExpandDimsP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimЗ
splitSplitsplit/split_dim:output:0kernel*
T0*2
_output_shapes 
:P:P:P*
	num_split2
splitT
Const_1Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimЧ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*2
_output_shapes 
:PP:PP:PP*
	num_split2	
split_1q
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
         2
Reshape/shapea
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:р2	
ReshapeT
Const_2Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_2h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dimЭ
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*8
_output_shapes&
$:P:P:P:P:P:P*
	num_split2	
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
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0*
_output_shapes

:P2
transpose_1i
	Reshape_1Reshapetranspose_1:y:0Const_3:output:0*
T0*
_output_shapes
:P2
	Reshape_1u
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0*
_output_shapes

:P2
transpose_2i
	Reshape_2Reshapetranspose_2:y:0Const_3:output:0*
T0*
_output_shapes
:P2
	Reshape_2u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:P2
transpose_3i
	Reshape_3Reshapetranspose_3:y:0Const_3:output:0*
T0*
_output_shapes
:P2
	Reshape_3u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm}
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0*
_output_shapes

:PP2
transpose_4j
	Reshape_4Reshapetranspose_4:y:0Const_3:output:0*
T0*
_output_shapes	
:А22
	Reshape_4u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:PP2
transpose_5j
	Reshape_5Reshapetranspose_5:y:0Const_3:output:0*
T0*
_output_shapes	
:А22
	Reshape_5u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0*
_output_shapes

:PP2
transpose_6j
	Reshape_6Reshapetranspose_6:y:0Const_3:output:0*
T0*
_output_shapes	
:А22
	Reshape_6j
	Reshape_7Reshapesplit_2:output:1Const_3:output:0*
T0*
_output_shapes
:P2
	Reshape_7j
	Reshape_8Reshapesplit_2:output:0Const_3:output:0*
T0*
_output_shapes
:P2
	Reshape_8j
	Reshape_9Reshapesplit_2:output:2Const_3:output:0*
T0*
_output_shapes
:P2
	Reshape_9l

Reshape_10Reshapesplit_2:output:4Const_3:output:0*
T0*
_output_shapes
:P2

Reshape_10l

Reshape_11Reshapesplit_2:output:3Const_3:output:0*
T0*
_output_shapes
:P2

Reshape_11l

Reshape_12Reshapesplit_2:output:5Const_3:output:0*
T0*
_output_shapes
:P2

Reshape_12\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis╒
concatConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0*
_output_shapes

:╨Ы2
concati
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    2
CudnnRNN/input_c╞
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat:output:0*
T0*8
_output_shapes&
$:fАP:АP: :*
rnn_modegru2

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
strided_slice/stack_2ю
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	АP*
shrink_axis_mask2
strided_slicey
transpose_7/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_7/permГ
transpose_7	TransposeCudnnRNN:output:0transpose_7/perm:output:0*
T0*#
_output_shapes
:АfP2
transpose_7s
SqueezeSqueezeCudnnRNN:output_h:0*
T0*
_output_shapes
:	АP*
squeeze_dims
 2	
Squeezef
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
:	АP2

Identityc

Identity_1Identitytranspose_7:y:0*
T0*#
_output_shapes
:АfP2

Identity_1`

Identity_2IdentitySqueeze:output:0*
T0*
_output_shapes
:	АP2

Identity_2W

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*N
_input_shapes=
;:Аf:	АP:	Ё:	PЁ:	Ё*<
api_implements*(gru_97a25323-5f73-47b1-8c97-356824aa4592*
api_preferred_deviceGPU*
go_backwards( *

time_major( :K G
#
_output_shapes
:Аf
 
_user_specified_nameinputs:GC

_output_shapes
:	АP
 
_user_specified_nameinit_h:GC

_output_shapes
:	Ё
 
_user_specified_namekernel:QM

_output_shapes
:	PЁ
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	Ё

_user_specified_namebias
О1
т
while_body_181337
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0
while_biasadd_unstack_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_1_unstack_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel
while_biasadd_unstack#
while_matmul_1_recurrent_kernel
while_biasadd_1_unstack├
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"А      29
7while/TensorArrayV2Read/TensorListGetItem/element_shape╦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes
:	А*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemЪ
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0* 
_output_shapes
:
АЁ2
while/MatMulЕ
while/BiasAddBiasAddwhile/MatMul:product:0while_biasadd_unstack_0*
T0* 
_output_shapes
:
АЁ2
while/BiasAdd\
while/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/Constp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dimм
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*5
_output_shapes#
!:	АP:	АP:	АP*
	num_split2
while/splitН
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0* 
_output_shapes
:
АЁ2
while/MatMul_1Н
while/BiasAdd_1BiasAddwhile/MatMul_1:product:0while_biasadd_1_unstack_0*
T0* 
_output_shapes
:
АЁ2
while/BiasAdd_1`
while/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
while/Const_1t
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split_1/split_dim┤
while/split_1Split while/split_1/split_dim:output:0while/BiasAdd_1:output:0*
T0*5
_output_shapes#
!:	АP:	АP:	АP*
	num_split2
while/split_1w
	while/addAddV2while/split:output:0while/split_1:output:0*
T0*
_output_shapes
:	АP2
	while/addb
while/SigmoidSigmoidwhile/add:z:0*
T0*
_output_shapes
:	АP2
while/Sigmoid{
while/add_1AddV2while/split:output:1while/split_1:output:1*
T0*
_output_shapes
:	АP2
while/add_1h
while/Sigmoid_1Sigmoidwhile/add_1:z:0*
T0*
_output_shapes
:	АP2
while/Sigmoid_1t
	while/mulMulwhile/Sigmoid_1:y:0while/split_1:output:2*
T0*
_output_shapes
:	АP2
	while/mulr
while/add_2AddV2while/split:output:2while/mul:z:0*
T0*
_output_shapes
:	АP2
while/add_2[

while/TanhTanhwhile/add_2:z:0*
T0*
_output_shapes
:	АP2

while/Tanhs
while/mul_1Mulwhile/Sigmoid:y:0while_placeholder_2*
T0*
_output_shapes
:	АP2
while/mul_1_
while/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
while/sub/xp
	while/subSubwhile/sub/x:output:0while/Sigmoid:y:0*
T0*
_output_shapes
:	АP2
	while/subj
while/mul_2Mulwhile/sub:z:0while/Tanh:y:0*
T0*
_output_shapes
:	АP2
while/mul_2o
while/add_3AddV2while/mul_1:z:0while/mul_2:z:0*
T0*
_output_shapes
:	АP2
while/add_3╙
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/add_3:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem`
while/add_4/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_4/yo
while/add_4AddV2while_placeholderwhile/add_4/y:output:0*
T0*
_output_shapes
: 2
while/add_4`
while/add_5/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_5/yv
while/add_5AddV2while_while_loop_counterwhile/add_5/y:output:0*
T0*
_output_shapes
: 2
while/add_5^
while/IdentityIdentitywhile/add_5:z:0*
T0*
_output_shapes
: 2
while/Identityq
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: 2
while/Identity_1b
while/Identity_2Identitywhile/add_4:z:0*
T0*
_output_shapes
: 2
while/Identity_2Н
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: 2
while/Identity_3k
while/Identity_4Identitywhile/add_3:z:0*
T0*
_output_shapes
:	АP2
while/Identity_4"4
while_biasadd_1_unstackwhile_biasadd_1_unstack_0"0
while_biasadd_unstackwhile_biasadd_unstack_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*N
_input_shapes=
;: : : : :	АP: : :	Ё:Ё:	PЁ:Ё: 
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
:	АP:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	Ё:!

_output_shapes	
:Ё:%	!

_output_shapes
:	PЁ:!


_output_shapes	
:Ё
О1
т
while_body_178426
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0
while_biasadd_unstack_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_1_unstack_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel
while_biasadd_unstack#
while_matmul_1_recurrent_kernel
while_biasadd_1_unstack├
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"А      29
7while/TensorArrayV2Read/TensorListGetItem/element_shape╦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes
:	А*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemЪ
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0* 
_output_shapes
:
АЁ2
while/MatMulЕ
while/BiasAddBiasAddwhile/MatMul:product:0while_biasadd_unstack_0*
T0* 
_output_shapes
:
АЁ2
while/BiasAdd\
while/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/Constp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dimм
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*5
_output_shapes#
!:	АP:	АP:	АP*
	num_split2
while/splitН
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0* 
_output_shapes
:
АЁ2
while/MatMul_1Н
while/BiasAdd_1BiasAddwhile/MatMul_1:product:0while_biasadd_1_unstack_0*
T0* 
_output_shapes
:
АЁ2
while/BiasAdd_1`
while/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
while/Const_1t
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split_1/split_dim┤
while/split_1Split while/split_1/split_dim:output:0while/BiasAdd_1:output:0*
T0*5
_output_shapes#
!:	АP:	АP:	АP*
	num_split2
while/split_1w
	while/addAddV2while/split:output:0while/split_1:output:0*
T0*
_output_shapes
:	АP2
	while/addb
while/SigmoidSigmoidwhile/add:z:0*
T0*
_output_shapes
:	АP2
while/Sigmoid{
while/add_1AddV2while/split:output:1while/split_1:output:1*
T0*
_output_shapes
:	АP2
while/add_1h
while/Sigmoid_1Sigmoidwhile/add_1:z:0*
T0*
_output_shapes
:	АP2
while/Sigmoid_1t
	while/mulMulwhile/Sigmoid_1:y:0while/split_1:output:2*
T0*
_output_shapes
:	АP2
	while/mulr
while/add_2AddV2while/split:output:2while/mul:z:0*
T0*
_output_shapes
:	АP2
while/add_2[

while/TanhTanhwhile/add_2:z:0*
T0*
_output_shapes
:	АP2

while/Tanhs
while/mul_1Mulwhile/Sigmoid:y:0while_placeholder_2*
T0*
_output_shapes
:	АP2
while/mul_1_
while/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
while/sub/xp
	while/subSubwhile/sub/x:output:0while/Sigmoid:y:0*
T0*
_output_shapes
:	АP2
	while/subj
while/mul_2Mulwhile/sub:z:0while/Tanh:y:0*
T0*
_output_shapes
:	АP2
while/mul_2o
while/add_3AddV2while/mul_1:z:0while/mul_2:z:0*
T0*
_output_shapes
:	АP2
while/add_3╙
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/add_3:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem`
while/add_4/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_4/yo
while/add_4AddV2while_placeholderwhile/add_4/y:output:0*
T0*
_output_shapes
: 2
while/add_4`
while/add_5/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_5/yv
while/add_5AddV2while_while_loop_counterwhile/add_5/y:output:0*
T0*
_output_shapes
: 2
while/add_5^
while/IdentityIdentitywhile/add_5:z:0*
T0*
_output_shapes
: 2
while/Identityq
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: 2
while/Identity_1b
while/Identity_2Identitywhile/add_4:z:0*
T0*
_output_shapes
: 2
while/Identity_2Н
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: 2
while/Identity_3k
while/Identity_4Identitywhile/add_3:z:0*
T0*
_output_shapes
:	АP2
while/Identity_4"4
while_biasadd_1_unstackwhile_biasadd_1_unstack_0"0
while_biasadd_unstackwhile_biasadd_unstack_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*N
_input_shapes=
;: : : : :	АP: : :	Ё:Ё:	PЁ:Ё: 
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
:	АP:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	Ё:!

_output_shapes	
:Ё:%	!

_output_shapes
:	PЁ:!


_output_shapes	
:Ё
▐н
ц

:__inference___backward_gpu_gru_with_fallback_179768_179904
placeholder
placeholder_1
placeholder_2
placeholder_3/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_7_grad_invertpermutation_transpose_7_perm)
%gradients_squeeze_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn#
gradients_zeros_like_1_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims=
9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c3
/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h)
%gradients_concat_grad_mod_concat_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim
identity

identity_1

identity_2

identity_3

identity_4Иu
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:         P2
gradients/grad_ys_0Д
gradients/grad_ys_1Identityplaceholder_1*
T0*4
_output_shapes"
 :                  P2
gradients/grad_ys_1w
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:         P2
gradients/grad_ys_2f
gradients/grad_ys_3Identityplaceholder_3*
T0*
_output_shapes
: 2
gradients/grad_ys_3г
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:2$
"gradients/strided_slice_grad/Shape╜
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
1gradients/strided_slice_grad/StridedSliceGrad/end╕
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
 :                  P*
shrink_axis_mask2/
-gradients/strided_slice_grad/StridedSliceGrad╠
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:2.
,gradients/transpose_7_grad/InvertPermutationш
$gradients/transpose_7_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :                  P2&
$gradients/transpose_7_grad/transposeС
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:2
gradients/Squeeze_grad/Shape╞
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:         P2 
gradients/Squeeze_grad/ReshapeФ
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_7_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*4
_output_shapes"
 :                  P2
gradients/AddNy
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
: 2
gradients/zeros_likeБ
gradients/zeros_like_1	ZerosLikegradients_zeros_like_1_cudnnrnn*
T0*
_output_shapes
:2
gradients/zeros_like_1Э
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnngradients_zeros_like_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0gradients/zeros_like:y:0gradients_zeros_like_1_cudnnrnn*
T0*U
_output_shapesC
A:                  :         P: :╨Ы*
rnn_modegru2*
(gradients/CudnnRNN_grad/CudnnRNNBackprop─
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:2,
*gradients/transpose_grad/InvertPermutation 
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :                  2$
"gradients/transpose_grad/transposeШ
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:2!
gradients/ExpandDims_grad/Shapeъ
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:         P2#
!gradients/ExpandDims_grad/Reshapez
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_grad/Rankп
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_grad/modД
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:P2
gradients/concat_grad/ShapeИ
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:P2
gradients/concat_grad/Shape_1И
gradients/concat_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:P2
gradients/concat_grad/Shape_2Й
gradients/concat_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:А22
gradients/concat_grad/Shape_3Й
gradients/concat_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:А22
gradients/concat_grad/Shape_4Й
gradients/concat_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:А22
gradients/concat_grad/Shape_5И
gradients/concat_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:P2
gradients/concat_grad/Shape_6И
gradients/concat_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:P2
gradients/concat_grad/Shape_7И
gradients/concat_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:P2
gradients/concat_grad/Shape_8И
gradients/concat_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:P2
gradients/concat_grad/Shape_9К
gradients/concat_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:P2 
gradients/concat_grad/Shape_10К
gradients/concat_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:P2 
gradients/concat_grad/Shape_11╛
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0&gradients/concat_grad/Shape_2:output:0&gradients/concat_grad/Shape_3:output:0&gradients/concat_grad/Shape_4:output:0&gradients/concat_grad/Shape_5:output:0&gradients/concat_grad/Shape_6:output:0&gradients/concat_grad/Shape_7:output:0&gradients/concat_grad/Shape_8:output:0&gradients/concat_grad/Shape_9:output:0'gradients/concat_grad/Shape_10:output:0'gradients/concat_grad/Shape_11:output:0*
N*\
_output_shapesJ
H::::::::::::2$
"gradients/concat_grad/ConcatOffsetД
gradients/concat_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes
:P2
gradients/concat_grad/SliceК
gradients/concat_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes
:P2
gradients/concat_grad/Slice_1К
gradients/concat_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:2&gradients/concat_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes
:P2
gradients/concat_grad/Slice_2Л
gradients/concat_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:3&gradients/concat_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:А22
gradients/concat_grad/Slice_3Л
gradients/concat_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:4&gradients/concat_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:А22
gradients/concat_grad/Slice_4Л
gradients/concat_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:5&gradients/concat_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:А22
gradients/concat_grad/Slice_5К
gradients/concat_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:6&gradients/concat_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes
:P2
gradients/concat_grad/Slice_6К
gradients/concat_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:7&gradients/concat_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes
:P2
gradients/concat_grad/Slice_7К
gradients/concat_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:8&gradients/concat_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:P2
gradients/concat_grad/Slice_8К
gradients/concat_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:9&gradients/concat_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:P2
gradients/concat_grad/Slice_9О
gradients/concat_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:10'gradients/concat_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:P2 
gradients/concat_grad/Slice_10О
gradients/concat_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:11'gradients/concat_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:P2 
gradients/concat_grad/Slice_11С
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"P      2 
gradients/Reshape_1_grad/Shape╟
 gradients/Reshape_1_grad/ReshapeReshape$gradients/concat_grad/Slice:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:P2"
 gradients/Reshape_1_grad/ReshapeС
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"P      2 
gradients/Reshape_2_grad/Shape╔
 gradients/Reshape_2_grad/ReshapeReshape&gradients/concat_grad/Slice_1:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:P2"
 gradients/Reshape_2_grad/ReshapeС
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"P      2 
gradients/Reshape_3_grad/Shape╔
 gradients/Reshape_3_grad/ReshapeReshape&gradients/concat_grad/Slice_2:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:P2"
 gradients/Reshape_3_grad/ReshapeС
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"P   P   2 
gradients/Reshape_4_grad/Shape╔
 gradients/Reshape_4_grad/ReshapeReshape&gradients/concat_grad/Slice_3:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:PP2"
 gradients/Reshape_4_grad/ReshapeС
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"P   P   2 
gradients/Reshape_5_grad/Shape╔
 gradients/Reshape_5_grad/ReshapeReshape&gradients/concat_grad/Slice_4:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:PP2"
 gradients/Reshape_5_grad/ReshapeС
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"P   P   2 
gradients/Reshape_6_grad/Shape╔
 gradients/Reshape_6_grad/ReshapeReshape&gradients/concat_grad/Slice_5:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:PP2"
 gradients/Reshape_6_grad/ReshapeК
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:P2 
gradients/Reshape_7_grad/Shape┼
 gradients/Reshape_7_grad/ReshapeReshape&gradients/concat_grad/Slice_6:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes
:P2"
 gradients/Reshape_7_grad/ReshapeК
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:P2 
gradients/Reshape_8_grad/Shape┼
 gradients/Reshape_8_grad/ReshapeReshape&gradients/concat_grad/Slice_7:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:P2"
 gradients/Reshape_8_grad/ReshapeК
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:P2 
gradients/Reshape_9_grad/Shape┼
 gradients/Reshape_9_grad/ReshapeReshape&gradients/concat_grad/Slice_8:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:P2"
 gradients/Reshape_9_grad/ReshapeМ
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:P2!
gradients/Reshape_10_grad/Shape╚
!gradients/Reshape_10_grad/ReshapeReshape&gradients/concat_grad/Slice_9:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:P2#
!gradients/Reshape_10_grad/ReshapeМ
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:P2!
gradients/Reshape_11_grad/Shape╔
!gradients/Reshape_11_grad/ReshapeReshape'gradients/concat_grad/Slice_10:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:P2#
!gradients/Reshape_11_grad/ReshapeМ
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:P2!
gradients/Reshape_12_grad/Shape╔
!gradients/Reshape_12_grad/ReshapeReshape'gradients/concat_grad/Slice_11:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:P2#
!gradients/Reshape_12_grad/Reshape╠
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:2.
,gradients/transpose_1_grad/InvertPermutation▀
$gradients/transpose_1_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:P2&
$gradients/transpose_1_grad/transpose╠
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:2.
,gradients/transpose_2_grad/InvertPermutation▀
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:P2&
$gradients/transpose_2_grad/transpose╠
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:2.
,gradients/transpose_3_grad/InvertPermutation▀
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:P2&
$gradients/transpose_3_grad/transpose╠
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:2.
,gradients/transpose_4_grad/InvertPermutation▀
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:PP2&
$gradients/transpose_4_grad/transpose╠
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:2.
,gradients/transpose_5_grad/InvertPermutation▀
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:PP2&
$gradients/transpose_5_grad/transpose╠
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:2.
,gradients/transpose_6_grad/InvertPermutation▀
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:PP2&
$gradients/transpose_6_grad/transposeп
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_7_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:р2
gradients/split_2_grad/concatд
gradients/split_grad/concatConcatV2(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	Ё2
gradients/split_grad/concatм
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	PЁ2
gradients/split_1_grad/concatН
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   Ё   2
gradients/Reshape_grad/Shape─
gradients/Reshape_grad/ReshapeReshape&gradients/split_2_grad/concat:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	Ё2 
gradients/Reshape_grad/ReshapeЗ
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*4
_output_shapes"
 :                  2

IdentityВ

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:         P2

Identity_1t

Identity_2Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	Ё2

Identity_2v

Identity_3Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	PЁ2

Identity_3w

Identity_4Identity'gradients/Reshape_grad/Reshape:output:0*
T0*
_output_shapes
:	Ё2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*ж
_input_shapesФ
С:         P:                  P:         P: :                  P::         P: ::                  :         P: :╨Ы::         P: ::::::: : : *<
api_implements*(gru_e5c217df-3f49-4cb3-b56b-2ac01f8bd969*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_gru_with_fallback_179903*
go_backwards( *

time_major( :- )
'
_output_shapes
:         P::6
4
_output_shapes"
 :                  P:-)
'
_output_shapes
:         P:

_output_shapes
: ::6
4
_output_shapes"
 :                  P: 

_output_shapes
::1-
+
_output_shapes
:         P:

_output_shapes
: :

_output_shapes
:::	6
4
_output_shapes"
 :                  :1
-
+
_output_shapes
:         P:

_output_shapes
: :"

_output_shapes

:╨Ы: 

_output_shapes
::-)
'
_output_shapes
:         P:
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
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
Ў
▐
while_cond_178425
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice4
0while_while_cond_178425___redundant_placeholder04
0while_while_cond_178425___redundant_placeholder14
0while_while_cond_178425___redundant_placeholder24
0while_while_cond_178425___redundant_placeholder34
0while_while_cond_178425___redundant_placeholder4
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
while_identitywhile/Identity:output:0*<
_input_shapes+
): : : : :	АP: :::::: 
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
:	АP:

_output_shapes
: :

_output_shapes
::
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
Ў
▐
while_cond_180781
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice4
0while_while_cond_180781___redundant_placeholder04
0while_while_cond_180781___redundant_placeholder14
0while_while_cond_180781___redundant_placeholder24
0while_while_cond_180781___redundant_placeholder34
0while_while_cond_180781___redundant_placeholder4
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
while_identitywhile/Identity:output:0*<
_input_shapes+
): : : : :	АP: :::::: 
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
:	АP:

_output_shapes
: :

_output_shapes
::
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
Ж<
п
(__inference_gpu_gru_with_fallback_180565

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3Иu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permr
	transpose	Transposeinputstranspose/perm:output:0*
T0*#
_output_shapes
:fА2
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
:АP2

ExpandDimsP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimЗ
splitSplitsplit/split_dim:output:0kernel*
T0*2
_output_shapes 
:P:P:P*
	num_split2
splitT
Const_1Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimЧ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*2
_output_shapes 
:PP:PP:PP*
	num_split2	
split_1q
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
         2
Reshape/shapea
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:р2	
ReshapeT
Const_2Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_2h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dimЭ
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*8
_output_shapes&
$:P:P:P:P:P:P*
	num_split2	
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
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0*
_output_shapes

:P2
transpose_1i
	Reshape_1Reshapetranspose_1:y:0Const_3:output:0*
T0*
_output_shapes
:P2
	Reshape_1u
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0*
_output_shapes

:P2
transpose_2i
	Reshape_2Reshapetranspose_2:y:0Const_3:output:0*
T0*
_output_shapes
:P2
	Reshape_2u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:P2
transpose_3i
	Reshape_3Reshapetranspose_3:y:0Const_3:output:0*
T0*
_output_shapes
:P2
	Reshape_3u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm}
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0*
_output_shapes

:PP2
transpose_4j
	Reshape_4Reshapetranspose_4:y:0Const_3:output:0*
T0*
_output_shapes	
:А22
	Reshape_4u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:PP2
transpose_5j
	Reshape_5Reshapetranspose_5:y:0Const_3:output:0*
T0*
_output_shapes	
:А22
	Reshape_5u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0*
_output_shapes

:PP2
transpose_6j
	Reshape_6Reshapetranspose_6:y:0Const_3:output:0*
T0*
_output_shapes	
:А22
	Reshape_6j
	Reshape_7Reshapesplit_2:output:1Const_3:output:0*
T0*
_output_shapes
:P2
	Reshape_7j
	Reshape_8Reshapesplit_2:output:0Const_3:output:0*
T0*
_output_shapes
:P2
	Reshape_8j
	Reshape_9Reshapesplit_2:output:2Const_3:output:0*
T0*
_output_shapes
:P2
	Reshape_9l

Reshape_10Reshapesplit_2:output:4Const_3:output:0*
T0*
_output_shapes
:P2

Reshape_10l

Reshape_11Reshapesplit_2:output:3Const_3:output:0*
T0*
_output_shapes
:P2

Reshape_11l

Reshape_12Reshapesplit_2:output:5Const_3:output:0*
T0*
_output_shapes
:P2

Reshape_12\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis╒
concatConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0*
_output_shapes

:╨Ы2
concati
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    2
CudnnRNN/input_c╞
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat:output:0*
T0*8
_output_shapes&
$:fАP:АP: :*
rnn_modegru2

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
strided_slice/stack_2ю
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	АP*
shrink_axis_mask2
strided_slicey
transpose_7/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_7/permГ
transpose_7	TransposeCudnnRNN:output:0transpose_7/perm:output:0*
T0*#
_output_shapes
:АfP2
transpose_7s
SqueezeSqueezeCudnnRNN:output_h:0*
T0*
_output_shapes
:	АP*
squeeze_dims
 2	
Squeezef
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
:	АP2

Identityc

Identity_1Identitytranspose_7:y:0*
T0*#
_output_shapes
:АfP2

Identity_1`

Identity_2IdentitySqueeze:output:0*
T0*
_output_shapes
:	АP2

Identity_2W

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*N
_input_shapes=
;:Аf:	АP:	Ё:	PЁ:	Ё*<
api_implements*(gru_b781c3ab-c21d-4d02-9879-c227062151d0*
api_preferred_deviceGPU*
go_backwards( *

time_major( :K G
#
_output_shapes
:Аf
 
_user_specified_nameinputs:GC

_output_shapes
:	АP
 
_user_specified_nameinit_h:GC

_output_shapes
:	Ё
 
_user_specified_namekernel:QM

_output_shapes
:	PЁ
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	Ё

_user_specified_namebias
д
Р
?__inference_gru_layer_call_and_return_conditional_losses_179906

inputs 
read_readvariableop_resource"
read_1_readvariableop_resource"
read_2_readvariableop_resource

identity_3ИвRead/ReadVariableOpвRead_1/ReadVariableOpвRead_2/ReadVariableOpD
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
strided_slice/stack_2т
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
value	B :P2
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
B :ш2
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
value	B :P2
zeros/packed/1Г
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
:         P2
zerosИ
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	Ё*
dtype02
Read/ReadVariableOpg
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	Ё2

IdentityО
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes
:	PЁ*
dtype02
Read_1/ReadVariableOpm

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	PЁ2

Identity_1О
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes
:	Ё*
dtype02
Read_2/ReadVariableOpm

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes
:	Ё2

Identity_2ж
PartitionedCallPartitionedCallinputszeros:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *\
_output_shapesJ
H:         P:                  P:         P: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *(
f#R!
__inference_standard_gru_1796882
PartitionedCall╢

Identity_3IdentityPartitionedCall:output:0^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*
T0*'
_output_shapes
:         P2

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
м
Т
?__inference_gru_layer_call_and_return_conditional_losses_182465
inputs_0 
read_readvariableop_resource"
read_1_readvariableop_resource"
read_2_readvariableop_resource

identity_3ИвRead/ReadVariableOpвRead_1/ReadVariableOpвRead_2/ReadVariableOpF
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
strided_slice/stack_2т
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
value	B :P2
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
B :ш2
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
value	B :P2
zeros/packed/1Г
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
:         P2
zerosИ
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	Ё*
dtype02
Read/ReadVariableOpg
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	Ё2

IdentityО
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes
:	PЁ*
dtype02
Read_1/ReadVariableOpm

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	PЁ2

Identity_1О
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes
:	Ё*
dtype02
Read_2/ReadVariableOpm

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes
:	Ё2

Identity_2и
PartitionedCallPartitionedCallinputs_0zeros:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *\
_output_shapesJ
H:         P:                  P:         P: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *(
f#R!
__inference_standard_gru_1822472
PartitionedCall╢

Identity_3IdentityPartitionedCall:output:0^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*
T0*'
_output_shapes
:         P2

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
┼(
╨
!__inference__wrapped_model_178741
input_1
input_2(
$gru_gru_read_readvariableop_resource*
&gru_gru_read_1_readvariableop_resource*
&gru_gru_read_2_readvariableop_resource,
(gru_dense_matmul_readvariableop_resource-
)gru_dense_biasadd_readvariableop_resource
identityИв gru/dense/BiasAdd/ReadVariableOpвgru/dense/MatMul/ReadVariableOpвgru/gru/Read/ReadVariableOpвgru/gru/Read_1/ReadVariableOpвgru/gru/Read_2/ReadVariableOps
gru/gru/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"А   f      2
gru/gru/ShapeД
gru/gru/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gru/gru/strided_slice/stackИ
gru/gru/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
gru/gru/strided_slice/stack_1И
gru/gru/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
gru/gru/strided_slice/stack_2Т
gru/gru/strided_sliceStridedSlicegru/gru/Shape:output:0$gru/gru/strided_slice/stack:output:0&gru/gru/strided_slice/stack_1:output:0&gru/gru/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
gru/gru/strided_slicel
gru/gru/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :P2
gru/gru/zeros/mul/yМ
gru/gru/zeros/mulMulgru/gru/strided_slice:output:0gru/gru/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
gru/gru/zeros/mulo
gru/gru/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
gru/gru/zeros/Less/yЗ
gru/gru/zeros/LessLessgru/gru/zeros/mul:z:0gru/gru/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
gru/gru/zeros/Lessr
gru/gru/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :P2
gru/gru/zeros/packed/1г
gru/gru/zeros/packedPackgru/gru/strided_slice:output:0gru/gru/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
gru/gru/zeros/packedo
gru/gru/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
gru/gru/zeros/ConstН
gru/gru/zerosFillgru/gru/zeros/packed:output:0gru/gru/zeros/Const:output:0*
T0*
_output_shapes
:	АP2
gru/gru/zerosа
gru/gru/Read/ReadVariableOpReadVariableOp$gru_gru_read_readvariableop_resource*
_output_shapes
:	Ё*
dtype02
gru/gru/Read/ReadVariableOp
gru/gru/IdentityIdentity#gru/gru/Read/ReadVariableOp:value:0*
T0*
_output_shapes
:	Ё2
gru/gru/Identityж
gru/gru/Read_1/ReadVariableOpReadVariableOp&gru_gru_read_1_readvariableop_resource*
_output_shapes
:	PЁ*
dtype02
gru/gru/Read_1/ReadVariableOpЕ
gru/gru/Identity_1Identity%gru/gru/Read_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	PЁ2
gru/gru/Identity_1ж
gru/gru/Read_2/ReadVariableOpReadVariableOp&gru_gru_read_2_readvariableop_resource*
_output_shapes
:	Ё*
dtype02
gru/gru/Read_2/ReadVariableOpЕ
gru/gru/Identity_2Identity%gru/gru/Read_2/ReadVariableOp:value:0*
T0*
_output_shapes
:	Ё2
gru/gru/Identity_2╢
gru/gru/PartitionedCallPartitionedCallinput_1gru/gru/zeros:output:0gru/gru/Identity:output:0gru/gru/Identity_1:output:0gru/gru/Identity_2:output:0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *;
_output_shapes)
':	АP:АfP:	АP: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *(
f#R!
__inference_standard_gru_1785172
gru/gru/PartitionedCallл
gru/dense/MatMul/ReadVariableOpReadVariableOp(gru_dense_matmul_readvariableop_resource*
_output_shapes

:P
*
dtype02!
gru/dense/MatMul/ReadVariableOpг
gru/dense/MatMulMatMul gru/gru/PartitionedCall:output:0'gru/dense/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	А
2
gru/dense/MatMulк
 gru/dense/BiasAdd/ReadVariableOpReadVariableOp)gru_dense_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02"
 gru/dense/BiasAdd/ReadVariableOpб
gru/dense/BiasAddBiasAddgru/dense/MatMul:product:0(gru/dense/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	А
2
gru/dense/BiasAddЙ
IdentityIdentitygru/dense/BiasAdd:output:0!^gru/dense/BiasAdd/ReadVariableOp ^gru/dense/MatMul/ReadVariableOp^gru/gru/Read/ReadVariableOp^gru/gru/Read_1/ReadVariableOp^gru/gru/Read_2/ReadVariableOp*
T0*
_output_shapes
:	А
2

Identity"
identityIdentity:output:0*E
_input_shapes4
2:Аf:Аf:::::2D
 gru/dense/BiasAdd/ReadVariableOp gru/dense/BiasAdd/ReadVariableOp2B
gru/dense/MatMul/ReadVariableOpgru/dense/MatMul/ReadVariableOp2:
gru/gru/Read/ReadVariableOpgru/gru/Read/ReadVariableOp2>
gru/gru/Read_1/ReadVariableOpgru/gru/Read_1/ReadVariableOp2>
gru/gru/Read_2/ReadVariableOpgru/gru/Read_2/ReadVariableOp:L H
#
_output_shapes
:Аf
!
_user_specified_name	input_1:LH
#
_output_shapes
:Аf
!
_user_specified_name	input_2
Ў
▐
while_cond_180394
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice4
0while_while_cond_180394___redundant_placeholder04
0while_while_cond_180394___redundant_placeholder14
0while_while_cond_180394___redundant_placeholder24
0while_while_cond_180394___redundant_placeholder34
0while_while_cond_180394___redundant_placeholder4
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
while_identitywhile/Identity:output:0*<
_input_shapes+
): : : : :	АP: :::::: 
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
:	АP:

_output_shapes
: :

_output_shapes
::
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
Ш
╢
$__inference_gru_layer_call_fn_182078
inputs_0
inputs_1
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
identityИвStatefulPartitionedCallЫ
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin
	2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:	А
*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_gru_layer_call_and_return_conditional_losses_1812192
StatefulPartitionedCallЖ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*
_output_shapes
:	А
2

Identity"
identityIdentity:output:0*E
_input_shapes4
2:Аf:Аf:::::22
StatefulPartitionedCallStatefulPartitionedCall:M I
#
_output_shapes
:Аf
"
_user_specified_name
inputs/0:MI
#
_output_shapes
:Аf
"
_user_specified_name
inputs/1
▐н
ц

:__inference___backward_gpu_gru_with_fallback_182714_182850
placeholder
placeholder_1
placeholder_2
placeholder_3/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_7_grad_invertpermutation_transpose_7_perm)
%gradients_squeeze_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn#
gradients_zeros_like_1_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims=
9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c3
/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h)
%gradients_concat_grad_mod_concat_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim
identity

identity_1

identity_2

identity_3

identity_4Иu
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:         P2
gradients/grad_ys_0Д
gradients/grad_ys_1Identityplaceholder_1*
T0*4
_output_shapes"
 :                  P2
gradients/grad_ys_1w
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:         P2
gradients/grad_ys_2f
gradients/grad_ys_3Identityplaceholder_3*
T0*
_output_shapes
: 2
gradients/grad_ys_3г
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:2$
"gradients/strided_slice_grad/Shape╜
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
1gradients/strided_slice_grad/StridedSliceGrad/end╕
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
 :                  P*
shrink_axis_mask2/
-gradients/strided_slice_grad/StridedSliceGrad╠
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:2.
,gradients/transpose_7_grad/InvertPermutationш
$gradients/transpose_7_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :                  P2&
$gradients/transpose_7_grad/transposeС
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:2
gradients/Squeeze_grad/Shape╞
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:         P2 
gradients/Squeeze_grad/ReshapeФ
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_7_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*4
_output_shapes"
 :                  P2
gradients/AddNy
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
: 2
gradients/zeros_likeБ
gradients/zeros_like_1	ZerosLikegradients_zeros_like_1_cudnnrnn*
T0*
_output_shapes
:2
gradients/zeros_like_1Э
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnngradients_zeros_like_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0gradients/zeros_like:y:0gradients_zeros_like_1_cudnnrnn*
T0*U
_output_shapesC
A:                  :         P: :╨Ы*
rnn_modegru2*
(gradients/CudnnRNN_grad/CudnnRNNBackprop─
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:2,
*gradients/transpose_grad/InvertPermutation 
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :                  2$
"gradients/transpose_grad/transposeШ
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:2!
gradients/ExpandDims_grad/Shapeъ
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:         P2#
!gradients/ExpandDims_grad/Reshapez
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_grad/Rankп
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_grad/modД
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:P2
gradients/concat_grad/ShapeИ
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:P2
gradients/concat_grad/Shape_1И
gradients/concat_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:P2
gradients/concat_grad/Shape_2Й
gradients/concat_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:А22
gradients/concat_grad/Shape_3Й
gradients/concat_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:А22
gradients/concat_grad/Shape_4Й
gradients/concat_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:А22
gradients/concat_grad/Shape_5И
gradients/concat_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:P2
gradients/concat_grad/Shape_6И
gradients/concat_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:P2
gradients/concat_grad/Shape_7И
gradients/concat_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:P2
gradients/concat_grad/Shape_8И
gradients/concat_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:P2
gradients/concat_grad/Shape_9К
gradients/concat_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:P2 
gradients/concat_grad/Shape_10К
gradients/concat_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:P2 
gradients/concat_grad/Shape_11╛
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0&gradients/concat_grad/Shape_2:output:0&gradients/concat_grad/Shape_3:output:0&gradients/concat_grad/Shape_4:output:0&gradients/concat_grad/Shape_5:output:0&gradients/concat_grad/Shape_6:output:0&gradients/concat_grad/Shape_7:output:0&gradients/concat_grad/Shape_8:output:0&gradients/concat_grad/Shape_9:output:0'gradients/concat_grad/Shape_10:output:0'gradients/concat_grad/Shape_11:output:0*
N*\
_output_shapesJ
H::::::::::::2$
"gradients/concat_grad/ConcatOffsetД
gradients/concat_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes
:P2
gradients/concat_grad/SliceК
gradients/concat_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes
:P2
gradients/concat_grad/Slice_1К
gradients/concat_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:2&gradients/concat_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes
:P2
gradients/concat_grad/Slice_2Л
gradients/concat_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:3&gradients/concat_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:А22
gradients/concat_grad/Slice_3Л
gradients/concat_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:4&gradients/concat_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:А22
gradients/concat_grad/Slice_4Л
gradients/concat_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:5&gradients/concat_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:А22
gradients/concat_grad/Slice_5К
gradients/concat_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:6&gradients/concat_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes
:P2
gradients/concat_grad/Slice_6К
gradients/concat_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:7&gradients/concat_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes
:P2
gradients/concat_grad/Slice_7К
gradients/concat_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:8&gradients/concat_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:P2
gradients/concat_grad/Slice_8К
gradients/concat_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:9&gradients/concat_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:P2
gradients/concat_grad/Slice_9О
gradients/concat_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:10'gradients/concat_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:P2 
gradients/concat_grad/Slice_10О
gradients/concat_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:11'gradients/concat_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:P2 
gradients/concat_grad/Slice_11С
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"P      2 
gradients/Reshape_1_grad/Shape╟
 gradients/Reshape_1_grad/ReshapeReshape$gradients/concat_grad/Slice:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:P2"
 gradients/Reshape_1_grad/ReshapeС
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"P      2 
gradients/Reshape_2_grad/Shape╔
 gradients/Reshape_2_grad/ReshapeReshape&gradients/concat_grad/Slice_1:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:P2"
 gradients/Reshape_2_grad/ReshapeС
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"P      2 
gradients/Reshape_3_grad/Shape╔
 gradients/Reshape_3_grad/ReshapeReshape&gradients/concat_grad/Slice_2:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:P2"
 gradients/Reshape_3_grad/ReshapeС
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"P   P   2 
gradients/Reshape_4_grad/Shape╔
 gradients/Reshape_4_grad/ReshapeReshape&gradients/concat_grad/Slice_3:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:PP2"
 gradients/Reshape_4_grad/ReshapeС
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"P   P   2 
gradients/Reshape_5_grad/Shape╔
 gradients/Reshape_5_grad/ReshapeReshape&gradients/concat_grad/Slice_4:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:PP2"
 gradients/Reshape_5_grad/ReshapeС
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"P   P   2 
gradients/Reshape_6_grad/Shape╔
 gradients/Reshape_6_grad/ReshapeReshape&gradients/concat_grad/Slice_5:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:PP2"
 gradients/Reshape_6_grad/ReshapeК
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:P2 
gradients/Reshape_7_grad/Shape┼
 gradients/Reshape_7_grad/ReshapeReshape&gradients/concat_grad/Slice_6:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes
:P2"
 gradients/Reshape_7_grad/ReshapeК
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:P2 
gradients/Reshape_8_grad/Shape┼
 gradients/Reshape_8_grad/ReshapeReshape&gradients/concat_grad/Slice_7:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:P2"
 gradients/Reshape_8_grad/ReshapeК
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:P2 
gradients/Reshape_9_grad/Shape┼
 gradients/Reshape_9_grad/ReshapeReshape&gradients/concat_grad/Slice_8:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:P2"
 gradients/Reshape_9_grad/ReshapeМ
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:P2!
gradients/Reshape_10_grad/Shape╚
!gradients/Reshape_10_grad/ReshapeReshape&gradients/concat_grad/Slice_9:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:P2#
!gradients/Reshape_10_grad/ReshapeМ
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:P2!
gradients/Reshape_11_grad/Shape╔
!gradients/Reshape_11_grad/ReshapeReshape'gradients/concat_grad/Slice_10:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:P2#
!gradients/Reshape_11_grad/ReshapeМ
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:P2!
gradients/Reshape_12_grad/Shape╔
!gradients/Reshape_12_grad/ReshapeReshape'gradients/concat_grad/Slice_11:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:P2#
!gradients/Reshape_12_grad/Reshape╠
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:2.
,gradients/transpose_1_grad/InvertPermutation▀
$gradients/transpose_1_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:P2&
$gradients/transpose_1_grad/transpose╠
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:2.
,gradients/transpose_2_grad/InvertPermutation▀
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:P2&
$gradients/transpose_2_grad/transpose╠
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:2.
,gradients/transpose_3_grad/InvertPermutation▀
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:P2&
$gradients/transpose_3_grad/transpose╠
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:2.
,gradients/transpose_4_grad/InvertPermutation▀
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:PP2&
$gradients/transpose_4_grad/transpose╠
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:2.
,gradients/transpose_5_grad/InvertPermutation▀
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:PP2&
$gradients/transpose_5_grad/transpose╠
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:2.
,gradients/transpose_6_grad/InvertPermutation▀
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:PP2&
$gradients/transpose_6_grad/transposeп
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_7_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:р2
gradients/split_2_grad/concatд
gradients/split_grad/concatConcatV2(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	Ё2
gradients/split_grad/concatм
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	PЁ2
gradients/split_1_grad/concatН
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   Ё   2
gradients/Reshape_grad/Shape─
gradients/Reshape_grad/ReshapeReshape&gradients/split_2_grad/concat:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	Ё2 
gradients/Reshape_grad/ReshapeЗ
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*4
_output_shapes"
 :                  2

IdentityВ

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:         P2

Identity_1t

Identity_2Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	Ё2

Identity_2v

Identity_3Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	PЁ2

Identity_3w

Identity_4Identity'gradients/Reshape_grad/Reshape:output:0*
T0*
_output_shapes
:	Ё2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*ж
_input_shapesФ
С:         P:                  P:         P: :                  P::         P: ::                  :         P: :╨Ы::         P: ::::::: : : *<
api_implements*(gru_60e5b8f7-db2b-490b-9f7d-d80a2ddf94dc*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_gru_with_fallback_182849*
go_backwards( *

time_major( :- )
'
_output_shapes
:         P::6
4
_output_shapes"
 :                  P:-)
'
_output_shapes
:         P:

_output_shapes
: ::6
4
_output_shapes"
 :                  P: 

_output_shapes
::1-
+
_output_shapes
:         P:

_output_shapes
: :

_output_shapes
:::	6
4
_output_shapes"
 :                  :1
-
+
_output_shapes
:         P:

_output_shapes
: :"

_output_shapes

:╨Ы: 

_output_shapes
::-)
'
_output_shapes
:         P:
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
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
м
Т
?__inference_gru_layer_call_and_return_conditional_losses_182852
inputs_0 
read_readvariableop_resource"
read_1_readvariableop_resource"
read_2_readvariableop_resource

identity_3ИвRead/ReadVariableOpвRead_1/ReadVariableOpвRead_2/ReadVariableOpF
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
strided_slice/stack_2т
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
value	B :P2
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
B :ш2
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
value	B :P2
zeros/packed/1Г
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
:         P2
zerosИ
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	Ё*
dtype02
Read/ReadVariableOpg
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	Ё2

IdentityО
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes
:	PЁ*
dtype02
Read_1/ReadVariableOpm

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	PЁ2

Identity_1О
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes
:	Ё*
dtype02
Read_2/ReadVariableOpm

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes
:	Ё2

Identity_2и
PartitionedCallPartitionedCallinputs_0zeros:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *\
_output_shapesJ
H:         P:                  P:         P: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *(
f#R!
__inference_standard_gru_1826342
PartitionedCall╢

Identity_3IdentityPartitionedCall:output:0^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*
T0*'
_output_shapes
:         P2

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
Ё
Р
?__inference_gru_layer_call_and_return_conditional_losses_180704

inputs 
read_readvariableop_resource"
read_1_readvariableop_resource"
read_2_readvariableop_resource

identity_3ИвRead/ReadVariableOpвRead_1/ReadVariableOpвRead_2/ReadVariableOpc
ShapeConst*
_output_shapes
:*
dtype0*!
valueB"А   f      2
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
strided_slice/stack_2т
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
value	B :P2
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
B :ш2
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
value	B :P2
zeros/packed/1Г
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
:	АP2
zerosИ
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	Ё*
dtype02
Read/ReadVariableOpg
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	Ё2

IdentityО
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes
:	PЁ*
dtype02
Read_1/ReadVariableOpm

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	PЁ2

Identity_1О
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes
:	Ё*
dtype02
Read_2/ReadVariableOpm

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes
:	Ё2

Identity_2Е
PartitionedCallPartitionedCallinputszeros:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *;
_output_shapes)
':	АP:АfP:	АP: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *(
f#R!
__inference_standard_gru_1804862
PartitionedCallо

Identity_3IdentityPartitionedCall:output:0^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*
T0*
_output_shapes
:	АP2

Identity_3"!

identity_3Identity_3:output:0*.
_input_shapes
:Аf:::2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:K G
#
_output_shapes
:Аf
 
_user_specified_nameinputs
Рм
╬

:__inference___backward_gpu_gru_with_fallback_180953_181089
placeholder
placeholder_1
placeholder_2
placeholder_3A
=gradients_transpose_7_grad_invertpermutation_transpose_7_perm!
gradients_zeros_like_cudnnrnn#
gradients_zeros_like_1_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims=
9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c3
/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat5
1gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_1=
9gradients_transpose_grad_invertpermutation_transpose_perm)
%gradients_concat_grad_mod_concat_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim
identity

identity_1

identity_2

identity_3

identity_4Иm
gradients/grad_ys_0Identityplaceholder*
T0*
_output_shapes
:	АP2
gradients/grad_ys_0s
gradients/grad_ys_1Identityplaceholder_1*
T0*#
_output_shapes
:АfP2
gradients/grad_ys_1o
gradients/grad_ys_2Identityplaceholder_2*
T0*
_output_shapes
:	АP2
gradients/grad_ys_2f
gradients/grad_ys_3Identityplaceholder_3*
T0*
_output_shapes
: 2
gradients/grad_ys_3Э
"gradients/strided_slice_grad/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"f   А   P   2$
"gradients/strided_slice_grad/Shape┐
3gradients/strided_slice_grad/StridedSliceGrad/shapeConst*
_output_shapes
:*
dtype0*!
valueB"f   А   P   25
3gradients/strided_slice_grad/StridedSliceGrad/shape╜
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
1gradients/strided_slice_grad/StridedSliceGrad/end╕
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
:fАP*
shrink_axis_mask2/
-gradients/strided_slice_grad/StridedSliceGrad╠
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:2.
,gradients/transpose_7_grad/InvertPermutation╫
$gradients/transpose_7_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*#
_output_shapes
:fАP2&
$gradients/transpose_7_grad/transposeС
gradients/Squeeze_grad/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"   А   P   2
gradients/Squeeze_grad/Shape╛
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*#
_output_shapes
:АP2 
gradients/Squeeze_grad/ReshapeГ
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_7_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*#
_output_shapes
:fАP2
gradients/AddNy
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
: 2
gradients/zeros_likeБ
gradients/zeros_like_1	ZerosLikegradients_zeros_like_1_cudnnrnn*
T0*
_output_shapes
:2
gradients/zeros_like_1Ш
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat1gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn3gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_1gradients_zeros_like_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0gradients/zeros_like:y:0gradients_zeros_like_1_cudnnrnn*
T0*<
_output_shapes*
(:fА:АP: :╨Ы*
rnn_modegru2*
(gradients/CudnnRNN_grad/CudnnRNNBackprop─
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:2,
*gradients/transpose_grad/InvertPermutationю
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*#
_output_shapes
:Аf2$
"gradients/transpose_grad/transposeУ
gradients/ExpandDims_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"А   P   2!
gradients/ExpandDims_grad/Shapeт
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*
_output_shapes
:	АP2#
!gradients/ExpandDims_grad/Reshapez
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_grad/Rankп
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_grad/modД
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:P2
gradients/concat_grad/ShapeИ
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:P2
gradients/concat_grad/Shape_1И
gradients/concat_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:P2
gradients/concat_grad/Shape_2Й
gradients/concat_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:А22
gradients/concat_grad/Shape_3Й
gradients/concat_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:А22
gradients/concat_grad/Shape_4Й
gradients/concat_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:А22
gradients/concat_grad/Shape_5И
gradients/concat_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:P2
gradients/concat_grad/Shape_6И
gradients/concat_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:P2
gradients/concat_grad/Shape_7И
gradients/concat_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:P2
gradients/concat_grad/Shape_8И
gradients/concat_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:P2
gradients/concat_grad/Shape_9К
gradients/concat_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:P2 
gradients/concat_grad/Shape_10К
gradients/concat_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:P2 
gradients/concat_grad/Shape_11╛
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0&gradients/concat_grad/Shape_2:output:0&gradients/concat_grad/Shape_3:output:0&gradients/concat_grad/Shape_4:output:0&gradients/concat_grad/Shape_5:output:0&gradients/concat_grad/Shape_6:output:0&gradients/concat_grad/Shape_7:output:0&gradients/concat_grad/Shape_8:output:0&gradients/concat_grad/Shape_9:output:0'gradients/concat_grad/Shape_10:output:0'gradients/concat_grad/Shape_11:output:0*
N*\
_output_shapesJ
H::::::::::::2$
"gradients/concat_grad/ConcatOffsetД
gradients/concat_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes
:P2
gradients/concat_grad/SliceК
gradients/concat_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes
:P2
gradients/concat_grad/Slice_1К
gradients/concat_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:2&gradients/concat_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes
:P2
gradients/concat_grad/Slice_2Л
gradients/concat_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:3&gradients/concat_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:А22
gradients/concat_grad/Slice_3Л
gradients/concat_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:4&gradients/concat_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:А22
gradients/concat_grad/Slice_4Л
gradients/concat_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:5&gradients/concat_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:А22
gradients/concat_grad/Slice_5К
gradients/concat_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:6&gradients/concat_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes
:P2
gradients/concat_grad/Slice_6К
gradients/concat_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:7&gradients/concat_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes
:P2
gradients/concat_grad/Slice_7К
gradients/concat_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:8&gradients/concat_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:P2
gradients/concat_grad/Slice_8К
gradients/concat_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:9&gradients/concat_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:P2
gradients/concat_grad/Slice_9О
gradients/concat_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:10'gradients/concat_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:P2 
gradients/concat_grad/Slice_10О
gradients/concat_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:11'gradients/concat_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:P2 
gradients/concat_grad/Slice_11С
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"P      2 
gradients/Reshape_1_grad/Shape╟
 gradients/Reshape_1_grad/ReshapeReshape$gradients/concat_grad/Slice:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:P2"
 gradients/Reshape_1_grad/ReshapeС
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"P      2 
gradients/Reshape_2_grad/Shape╔
 gradients/Reshape_2_grad/ReshapeReshape&gradients/concat_grad/Slice_1:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:P2"
 gradients/Reshape_2_grad/ReshapeС
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"P      2 
gradients/Reshape_3_grad/Shape╔
 gradients/Reshape_3_grad/ReshapeReshape&gradients/concat_grad/Slice_2:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:P2"
 gradients/Reshape_3_grad/ReshapeС
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"P   P   2 
gradients/Reshape_4_grad/Shape╔
 gradients/Reshape_4_grad/ReshapeReshape&gradients/concat_grad/Slice_3:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:PP2"
 gradients/Reshape_4_grad/ReshapeС
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"P   P   2 
gradients/Reshape_5_grad/Shape╔
 gradients/Reshape_5_grad/ReshapeReshape&gradients/concat_grad/Slice_4:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:PP2"
 gradients/Reshape_5_grad/ReshapeС
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"P   P   2 
gradients/Reshape_6_grad/Shape╔
 gradients/Reshape_6_grad/ReshapeReshape&gradients/concat_grad/Slice_5:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:PP2"
 gradients/Reshape_6_grad/ReshapeК
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:P2 
gradients/Reshape_7_grad/Shape┼
 gradients/Reshape_7_grad/ReshapeReshape&gradients/concat_grad/Slice_6:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes
:P2"
 gradients/Reshape_7_grad/ReshapeК
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:P2 
gradients/Reshape_8_grad/Shape┼
 gradients/Reshape_8_grad/ReshapeReshape&gradients/concat_grad/Slice_7:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:P2"
 gradients/Reshape_8_grad/ReshapeК
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:P2 
gradients/Reshape_9_grad/Shape┼
 gradients/Reshape_9_grad/ReshapeReshape&gradients/concat_grad/Slice_8:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:P2"
 gradients/Reshape_9_grad/ReshapeМ
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:P2!
gradients/Reshape_10_grad/Shape╚
!gradients/Reshape_10_grad/ReshapeReshape&gradients/concat_grad/Slice_9:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:P2#
!gradients/Reshape_10_grad/ReshapeМ
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:P2!
gradients/Reshape_11_grad/Shape╔
!gradients/Reshape_11_grad/ReshapeReshape'gradients/concat_grad/Slice_10:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:P2#
!gradients/Reshape_11_grad/ReshapeМ
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:P2!
gradients/Reshape_12_grad/Shape╔
!gradients/Reshape_12_grad/ReshapeReshape'gradients/concat_grad/Slice_11:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:P2#
!gradients/Reshape_12_grad/Reshape╠
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:2.
,gradients/transpose_1_grad/InvertPermutation▀
$gradients/transpose_1_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:P2&
$gradients/transpose_1_grad/transpose╠
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:2.
,gradients/transpose_2_grad/InvertPermutation▀
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:P2&
$gradients/transpose_2_grad/transpose╠
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:2.
,gradients/transpose_3_grad/InvertPermutation▀
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:P2&
$gradients/transpose_3_grad/transpose╠
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:2.
,gradients/transpose_4_grad/InvertPermutation▀
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:PP2&
$gradients/transpose_4_grad/transpose╠
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:2.
,gradients/transpose_5_grad/InvertPermutation▀
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:PP2&
$gradients/transpose_5_grad/transpose╠
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:2.
,gradients/transpose_6_grad/InvertPermutation▀
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:PP2&
$gradients/transpose_6_grad/transposeп
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_7_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:р2
gradients/split_2_grad/concatд
gradients/split_grad/concatConcatV2(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	Ё2
gradients/split_grad/concatм
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	PЁ2
gradients/split_1_grad/concatН
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   Ё   2
gradients/Reshape_grad/Shape─
gradients/Reshape_grad/ReshapeReshape&gradients/split_2_grad/concat:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	Ё2 
gradients/Reshape_grad/Reshapev
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*#
_output_shapes
:Аf2

Identityz

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*
_output_shapes
:	АP2

Identity_1t

Identity_2Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	Ё2

Identity_2v

Identity_3Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	PЁ2

Identity_3w

Identity_4Identity'gradients/Reshape_grad/Reshape:output:0*
T0*
_output_shapes
:	Ё2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*└
_input_shapesо
л:	АP:АfP:	АP: :: ::fА:АP: :╨Ы:fАP:АP:: ::::::: : : *<
api_implements*(gru_3ac5e4bb-d907-42d9-bec1-6263b3d99645*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_gru_with_fallback_181088*
go_backwards( *

time_major( :% !

_output_shapes
:	АP:)%
#
_output_shapes
:АfP:%!

_output_shapes
:	АP:

_output_shapes
: : 

_output_shapes
::

_output_shapes
: :

_output_shapes
::)%
#
_output_shapes
:fА:)%
#
_output_shapes
:АP:	

_output_shapes
: :"


_output_shapes

:╨Ы:)%
#
_output_shapes
:fАP:)%
#
_output_shapes
:АP: 

_output_shapes
::

_output_shapes
: : 

_output_shapes
:: 
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
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
б8
в

__inference__traced_save_183785
file_prefix+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop2
.savev2_gru_gru_cell_kernel_read_readvariableop<
8savev2_gru_gru_cell_recurrent_kernel_read_readvariableop0
,savev2_gru_gru_cell_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop2
.savev2_adam_dense_kernel_m_read_readvariableop0
,savev2_adam_dense_bias_m_read_readvariableop9
5savev2_adam_gru_gru_cell_kernel_m_read_readvariableopC
?savev2_adam_gru_gru_cell_recurrent_kernel_m_read_readvariableop7
3savev2_adam_gru_gru_cell_bias_m_read_readvariableop2
.savev2_adam_dense_kernel_v_read_readvariableop0
,savev2_adam_dense_bias_v_read_readvariableop9
5savev2_adam_gru_gru_cell_kernel_v_read_readvariableopC
?savev2_adam_gru_gru_cell_recurrent_kernel_v_read_readvariableop7
3savev2_adam_gru_gru_cell_bias_v_read_readvariableop
savev2_const

identity_1ИвMergeV2CheckpointsП
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
Const_1Л
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
ShardedFilename/shardж
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilenameи
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*║
value░BнB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names║
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*E
value<B:B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slicesи

SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop.savev2_gru_gru_cell_kernel_read_readvariableop8savev2_gru_gru_cell_recurrent_kernel_read_readvariableop,savev2_gru_gru_cell_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop.savev2_adam_dense_kernel_m_read_readvariableop,savev2_adam_dense_bias_m_read_readvariableop5savev2_adam_gru_gru_cell_kernel_m_read_readvariableop?savev2_adam_gru_gru_cell_recurrent_kernel_m_read_readvariableop3savev2_adam_gru_gru_cell_bias_m_read_readvariableop.savev2_adam_dense_kernel_v_read_readvariableop,savev2_adam_dense_bias_v_read_readvariableop5savev2_adam_gru_gru_cell_kernel_v_read_readvariableop?savev2_adam_gru_gru_cell_recurrent_kernel_v_read_readvariableop3savev2_adam_gru_gru_cell_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
&MergeV2Checkpoints/checkpoint_prefixesб
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

identity_1Identity_1:output:0*╛
_input_shapesм
й: :P
:
: : : : : :	Ё:	PЁ:	Ё: : : : :P
:
:	Ё:	PЁ:	Ё:P
:
:	Ё:	PЁ:	Ё: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:P
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
:	Ё:%	!

_output_shapes
:	PЁ:%
!

_output_shapes
:	Ё:
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

:P
: 

_output_shapes
:
:%!

_output_shapes
:	Ё:%!

_output_shapes
:	PЁ:%!

_output_shapes
:	Ё:$ 

_output_shapes

:P
: 

_output_shapes
:
:%!

_output_shapes
:	Ё:%!

_output_shapes
:	PЁ:%!

_output_shapes
:	Ё:

_output_shapes
: 
╩%
╚
?__inference_gru_layer_call_and_return_conditional_losses_181652
inputs_0
inputs_1$
 gru_read_readvariableop_resource&
"gru_read_1_readvariableop_resource&
"gru_read_2_readvariableop_resource(
$dense_matmul_readvariableop_resource)
%dense_biasadd_readvariableop_resource
identityИвdense/BiasAdd/ReadVariableOpвdense/MatMul/ReadVariableOpвgru/Read/ReadVariableOpвgru/Read_1/ReadVariableOpвgru/Read_2/ReadVariableOpk
	gru/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"А   f      2
	gru/Shape|
gru/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gru/strided_slice/stackА
gru/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
gru/strided_slice/stack_1А
gru/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
gru/strided_slice/stack_2·
gru/strided_sliceStridedSlicegru/Shape:output:0 gru/strided_slice/stack:output:0"gru/strided_slice/stack_1:output:0"gru/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
gru/strided_sliced
gru/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :P2
gru/zeros/mul/y|
gru/zeros/mulMulgru/strided_slice:output:0gru/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
gru/zeros/mulg
gru/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
gru/zeros/Less/yw
gru/zeros/LessLessgru/zeros/mul:z:0gru/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
gru/zeros/Lessj
gru/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :P2
gru/zeros/packed/1У
gru/zeros/packedPackgru/strided_slice:output:0gru/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
gru/zeros/packedg
gru/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
gru/zeros/Const}
	gru/zerosFillgru/zeros/packed:output:0gru/zeros/Const:output:0*
T0*
_output_shapes
:	АP2
	gru/zerosФ
gru/Read/ReadVariableOpReadVariableOp gru_read_readvariableop_resource*
_output_shapes
:	Ё*
dtype02
gru/Read/ReadVariableOps
gru/IdentityIdentitygru/Read/ReadVariableOp:value:0*
T0*
_output_shapes
:	Ё2
gru/IdentityЪ
gru/Read_1/ReadVariableOpReadVariableOp"gru_read_1_readvariableop_resource*
_output_shapes
:	PЁ*
dtype02
gru/Read_1/ReadVariableOpy
gru/Identity_1Identity!gru/Read_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	PЁ2
gru/Identity_1Ъ
gru/Read_2/ReadVariableOpReadVariableOp"gru_read_2_readvariableop_resource*
_output_shapes
:	Ё*
dtype02
gru/Read_2/ReadVariableOpy
gru/Identity_2Identity!gru/Read_2/ReadVariableOp:value:0*
T0*
_output_shapes
:	Ё2
gru/Identity_2Я
gru/PartitionedCallPartitionedCallinputs_0gru/zeros:output:0gru/Identity:output:0gru/Identity_1:output:0gru/Identity_2:output:0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *;
_output_shapes)
':	АP:АfP:	АP: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *(
f#R!
__inference_standard_gru_1814282
gru/PartitionedCallЯ
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes

:P
*
dtype02
dense/MatMul/ReadVariableOpУ
dense/MatMulMatMulgru/PartitionedCall:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	А
2
dense/MatMulЮ
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
dense/BiasAdd/ReadVariableOpС
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	А
2
dense/BiasAddё
IdentityIdentitydense/BiasAdd:output:0^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^gru/Read/ReadVariableOp^gru/Read_1/ReadVariableOp^gru/Read_2/ReadVariableOp*
T0*
_output_shapes
:	А
2

Identity"
identityIdentity:output:0*E
_input_shapes4
2:Аf:Аf:::::2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp22
gru/Read/ReadVariableOpgru/Read/ReadVariableOp26
gru/Read_1/ReadVariableOpgru/Read_1/ReadVariableOp26
gru/Read_2/ReadVariableOpgru/Read_2/ReadVariableOp:M I
#
_output_shapes
:Аf
"
_user_specified_name
inputs/0:MI
#
_output_shapes
:Аf
"
_user_specified_name
inputs/1
▒C
г
__inference_standard_gru_181822

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3Z
unstackUnpackbias*
T0*"
_output_shapes
:Ё:Ё*	
num2	
unstacku
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permr
	transpose	Transposeinputstranspose/perm:output:0*
T0*#
_output_shapes
:fА2
	transposec
ShapeConst*
_output_shapes
:*
dtype0*!
valueB"f   А      2
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
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceЕ
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
valueB"А      27
5TensorArrayUnstack/TensorListFromTensor/element_shape°
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
strided_slice_1/stack_2Ї
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	А*
shrink_axis_mask2
strided_slice_1g
MatMulMatMulstrided_slice_1:output:0kernel*
T0* 
_output_shapes
:
АЁ2
MatMull
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0* 
_output_shapes
:
АЁ2	
BiasAddP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimФ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*5
_output_shapes#
!:	АP:	АP:	АP*
	num_split2
splitc
MatMul_1MatMulinit_hrecurrent_kernel*
T0* 
_output_shapes
:
АЁ2

MatMul_1r
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0* 
_output_shapes
:
АЁ2
	BiasAdd_1T
Const_1Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimЬ
split_1Splitsplit_1/split_dim:output:0BiasAdd_1:output:0*
T0*5
_output_shapes#
!:	АP:	АP:	АP*
	num_split2	
split_1_
addAddV2split:output:0split_1:output:0*
T0*
_output_shapes
:	АP2
addP
SigmoidSigmoidadd:z:0*
T0*
_output_shapes
:	АP2	
Sigmoidc
add_1AddV2split:output:1split_1:output:1*
T0*
_output_shapes
:	АP2
add_1V
	Sigmoid_1Sigmoid	add_1:z:0*
T0*
_output_shapes
:	АP2
	Sigmoid_1\
mulMulSigmoid_1:y:0split_1:output:2*
T0*
_output_shapes
:	АP2
mulZ
add_2AddV2split:output:2mul:z:0*
T0*
_output_shapes
:	АP2
add_2I
TanhTanh	add_2:z:0*
T0*
_output_shapes
:	АP2
TanhT
mul_1MulSigmoid:y:0init_h*
T0*
_output_shapes
:	АP2
mul_1S
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
sub/xX
subSubsub/x:output:0Sigmoid:y:0*
T0*
_output_shapes
:	АP2
subR
mul_2Mulsub:z:0Tanh:y:0*
T0*
_output_shapes
:	АP2
mul_2W
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*
_output_shapes
:	АP2
add_3П
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"А   P   2
TensorArrayV2_1/element_shape╢
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
while/loop_counterР
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelunstack:output:0recurrent_kernelunstack:output:1*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*O
_output_shapes=
;: : : : :	АP: : :	Ё:Ё:	PЁ:Ё* 
_read_only_resource_inputs
 *
bodyR
while_body_181731*
condR
while_cond_181730*N
output_shapes=
;: : : : :	АP: : :	Ё:Ё:	PЁ:Ё*
parallel_iterations 2
while╡
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"А   P   22
0TensorArrayV2Stack/TensorListStack/element_shapeр
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*#
_output_shapes
:fАP*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
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
strided_slice_2/stack_2Т
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	АP*
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЭ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*#
_output_shapes
:АfP2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  А?2	
runtimed
IdentityIdentitystrided_slice_2:output:0*
T0*
_output_shapes
:	АP2

Identityc

Identity_1Identitytranspose_1:y:0*
T0*#
_output_shapes
:АfP2

Identity_1^

Identity_2Identitywhile:output:4*
T0*
_output_shapes
:	АP2

Identity_2W

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*N
_input_shapes=
;:Аf:	АP:	Ё:	PЁ:	Ё*<
api_implements*(gru_21784482-630b-48c1-9b22-63b152563d78*
api_preferred_deviceCPU*
go_backwards( *

time_major( :K G
#
_output_shapes
:Аf
 
_user_specified_nameinputs:GC

_output_shapes
:	АP
 
_user_specified_nameinit_h:GC

_output_shapes
:	Ё
 
_user_specified_namekernel:QM

_output_shapes
:	PЁ
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	Ё

_user_specified_namebias
▐н
ц

:__inference___backward_gpu_gru_with_fallback_182327_182463
placeholder
placeholder_1
placeholder_2
placeholder_3/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_7_grad_invertpermutation_transpose_7_perm)
%gradients_squeeze_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn#
gradients_zeros_like_1_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims=
9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c3
/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h)
%gradients_concat_grad_mod_concat_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim
identity

identity_1

identity_2

identity_3

identity_4Иu
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:         P2
gradients/grad_ys_0Д
gradients/grad_ys_1Identityplaceholder_1*
T0*4
_output_shapes"
 :                  P2
gradients/grad_ys_1w
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:         P2
gradients/grad_ys_2f
gradients/grad_ys_3Identityplaceholder_3*
T0*
_output_shapes
: 2
gradients/grad_ys_3г
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:2$
"gradients/strided_slice_grad/Shape╜
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
1gradients/strided_slice_grad/StridedSliceGrad/end╕
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
 :                  P*
shrink_axis_mask2/
-gradients/strided_slice_grad/StridedSliceGrad╠
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:2.
,gradients/transpose_7_grad/InvertPermutationш
$gradients/transpose_7_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :                  P2&
$gradients/transpose_7_grad/transposeС
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:2
gradients/Squeeze_grad/Shape╞
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:         P2 
gradients/Squeeze_grad/ReshapeФ
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_7_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*4
_output_shapes"
 :                  P2
gradients/AddNy
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
: 2
gradients/zeros_likeБ
gradients/zeros_like_1	ZerosLikegradients_zeros_like_1_cudnnrnn*
T0*
_output_shapes
:2
gradients/zeros_like_1Э
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnngradients_zeros_like_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0gradients/zeros_like:y:0gradients_zeros_like_1_cudnnrnn*
T0*U
_output_shapesC
A:                  :         P: :╨Ы*
rnn_modegru2*
(gradients/CudnnRNN_grad/CudnnRNNBackprop─
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:2,
*gradients/transpose_grad/InvertPermutation 
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :                  2$
"gradients/transpose_grad/transposeШ
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:2!
gradients/ExpandDims_grad/Shapeъ
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:         P2#
!gradients/ExpandDims_grad/Reshapez
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_grad/Rankп
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_grad/modД
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:P2
gradients/concat_grad/ShapeИ
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:P2
gradients/concat_grad/Shape_1И
gradients/concat_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:P2
gradients/concat_grad/Shape_2Й
gradients/concat_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:А22
gradients/concat_grad/Shape_3Й
gradients/concat_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:А22
gradients/concat_grad/Shape_4Й
gradients/concat_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:А22
gradients/concat_grad/Shape_5И
gradients/concat_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:P2
gradients/concat_grad/Shape_6И
gradients/concat_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:P2
gradients/concat_grad/Shape_7И
gradients/concat_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:P2
gradients/concat_grad/Shape_8И
gradients/concat_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:P2
gradients/concat_grad/Shape_9К
gradients/concat_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:P2 
gradients/concat_grad/Shape_10К
gradients/concat_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:P2 
gradients/concat_grad/Shape_11╛
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0&gradients/concat_grad/Shape_2:output:0&gradients/concat_grad/Shape_3:output:0&gradients/concat_grad/Shape_4:output:0&gradients/concat_grad/Shape_5:output:0&gradients/concat_grad/Shape_6:output:0&gradients/concat_grad/Shape_7:output:0&gradients/concat_grad/Shape_8:output:0&gradients/concat_grad/Shape_9:output:0'gradients/concat_grad/Shape_10:output:0'gradients/concat_grad/Shape_11:output:0*
N*\
_output_shapesJ
H::::::::::::2$
"gradients/concat_grad/ConcatOffsetД
gradients/concat_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes
:P2
gradients/concat_grad/SliceК
gradients/concat_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes
:P2
gradients/concat_grad/Slice_1К
gradients/concat_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:2&gradients/concat_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes
:P2
gradients/concat_grad/Slice_2Л
gradients/concat_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:3&gradients/concat_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:А22
gradients/concat_grad/Slice_3Л
gradients/concat_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:4&gradients/concat_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:А22
gradients/concat_grad/Slice_4Л
gradients/concat_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:5&gradients/concat_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:А22
gradients/concat_grad/Slice_5К
gradients/concat_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:6&gradients/concat_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes
:P2
gradients/concat_grad/Slice_6К
gradients/concat_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:7&gradients/concat_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes
:P2
gradients/concat_grad/Slice_7К
gradients/concat_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:8&gradients/concat_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:P2
gradients/concat_grad/Slice_8К
gradients/concat_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:9&gradients/concat_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:P2
gradients/concat_grad/Slice_9О
gradients/concat_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:10'gradients/concat_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:P2 
gradients/concat_grad/Slice_10О
gradients/concat_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:11'gradients/concat_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:P2 
gradients/concat_grad/Slice_11С
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"P      2 
gradients/Reshape_1_grad/Shape╟
 gradients/Reshape_1_grad/ReshapeReshape$gradients/concat_grad/Slice:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:P2"
 gradients/Reshape_1_grad/ReshapeС
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"P      2 
gradients/Reshape_2_grad/Shape╔
 gradients/Reshape_2_grad/ReshapeReshape&gradients/concat_grad/Slice_1:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:P2"
 gradients/Reshape_2_grad/ReshapeС
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"P      2 
gradients/Reshape_3_grad/Shape╔
 gradients/Reshape_3_grad/ReshapeReshape&gradients/concat_grad/Slice_2:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:P2"
 gradients/Reshape_3_grad/ReshapeС
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"P   P   2 
gradients/Reshape_4_grad/Shape╔
 gradients/Reshape_4_grad/ReshapeReshape&gradients/concat_grad/Slice_3:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:PP2"
 gradients/Reshape_4_grad/ReshapeС
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"P   P   2 
gradients/Reshape_5_grad/Shape╔
 gradients/Reshape_5_grad/ReshapeReshape&gradients/concat_grad/Slice_4:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:PP2"
 gradients/Reshape_5_grad/ReshapeС
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"P   P   2 
gradients/Reshape_6_grad/Shape╔
 gradients/Reshape_6_grad/ReshapeReshape&gradients/concat_grad/Slice_5:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:PP2"
 gradients/Reshape_6_grad/ReshapeК
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:P2 
gradients/Reshape_7_grad/Shape┼
 gradients/Reshape_7_grad/ReshapeReshape&gradients/concat_grad/Slice_6:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes
:P2"
 gradients/Reshape_7_grad/ReshapeК
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:P2 
gradients/Reshape_8_grad/Shape┼
 gradients/Reshape_8_grad/ReshapeReshape&gradients/concat_grad/Slice_7:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:P2"
 gradients/Reshape_8_grad/ReshapeК
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:P2 
gradients/Reshape_9_grad/Shape┼
 gradients/Reshape_9_grad/ReshapeReshape&gradients/concat_grad/Slice_8:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:P2"
 gradients/Reshape_9_grad/ReshapeМ
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:P2!
gradients/Reshape_10_grad/Shape╚
!gradients/Reshape_10_grad/ReshapeReshape&gradients/concat_grad/Slice_9:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:P2#
!gradients/Reshape_10_grad/ReshapeМ
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:P2!
gradients/Reshape_11_grad/Shape╔
!gradients/Reshape_11_grad/ReshapeReshape'gradients/concat_grad/Slice_10:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:P2#
!gradients/Reshape_11_grad/ReshapeМ
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:P2!
gradients/Reshape_12_grad/Shape╔
!gradients/Reshape_12_grad/ReshapeReshape'gradients/concat_grad/Slice_11:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:P2#
!gradients/Reshape_12_grad/Reshape╠
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:2.
,gradients/transpose_1_grad/InvertPermutation▀
$gradients/transpose_1_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:P2&
$gradients/transpose_1_grad/transpose╠
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:2.
,gradients/transpose_2_grad/InvertPermutation▀
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:P2&
$gradients/transpose_2_grad/transpose╠
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:2.
,gradients/transpose_3_grad/InvertPermutation▀
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:P2&
$gradients/transpose_3_grad/transpose╠
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:2.
,gradients/transpose_4_grad/InvertPermutation▀
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:PP2&
$gradients/transpose_4_grad/transpose╠
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:2.
,gradients/transpose_5_grad/InvertPermutation▀
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:PP2&
$gradients/transpose_5_grad/transpose╠
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:2.
,gradients/transpose_6_grad/InvertPermutation▀
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:PP2&
$gradients/transpose_6_grad/transposeп
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_7_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:р2
gradients/split_2_grad/concatд
gradients/split_grad/concatConcatV2(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	Ё2
gradients/split_grad/concatм
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	PЁ2
gradients/split_1_grad/concatН
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   Ё   2
gradients/Reshape_grad/Shape─
gradients/Reshape_grad/ReshapeReshape&gradients/split_2_grad/concat:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	Ё2 
gradients/Reshape_grad/ReshapeЗ
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*4
_output_shapes"
 :                  2

IdentityВ

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:         P2

Identity_1t

Identity_2Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	Ё2

Identity_2v

Identity_3Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	PЁ2

Identity_3w

Identity_4Identity'gradients/Reshape_grad/Reshape:output:0*
T0*
_output_shapes
:	Ё2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*ж
_input_shapesФ
С:         P:                  P:         P: :                  P::         P: ::                  :         P: :╨Ы::         P: ::::::: : : *<
api_implements*(gru_7537e81a-4edc-4013-9f4b-628ed05efbcd*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_gru_with_fallback_182462*
go_backwards( *

time_major( :- )
'
_output_shapes
:         P::6
4
_output_shapes"
 :                  P:-)
'
_output_shapes
:         P:

_output_shapes
: ::6
4
_output_shapes"
 :                  P: 

_output_shapes
::1-
+
_output_shapes
:         P:

_output_shapes
: :

_output_shapes
:::	6
4
_output_shapes"
 :                  :1
-
+
_output_shapes
:         P:

_output_shapes
: :"

_output_shapes

:╨Ы: 

_output_shapes
::-)
'
_output_shapes
:         P:
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
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
О1
т
while_body_183339
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0
while_biasadd_unstack_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_1_unstack_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel
while_biasadd_unstack#
while_matmul_1_recurrent_kernel
while_biasadd_1_unstack├
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"А      29
7while/TensorArrayV2Read/TensorListGetItem/element_shape╦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes
:	А*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemЪ
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0* 
_output_shapes
:
АЁ2
while/MatMulЕ
while/BiasAddBiasAddwhile/MatMul:product:0while_biasadd_unstack_0*
T0* 
_output_shapes
:
АЁ2
while/BiasAdd\
while/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/Constp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dimм
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*5
_output_shapes#
!:	АP:	АP:	АP*
	num_split2
while/splitН
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0* 
_output_shapes
:
АЁ2
while/MatMul_1Н
while/BiasAdd_1BiasAddwhile/MatMul_1:product:0while_biasadd_1_unstack_0*
T0* 
_output_shapes
:
АЁ2
while/BiasAdd_1`
while/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
while/Const_1t
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split_1/split_dim┤
while/split_1Split while/split_1/split_dim:output:0while/BiasAdd_1:output:0*
T0*5
_output_shapes#
!:	АP:	АP:	АP*
	num_split2
while/split_1w
	while/addAddV2while/split:output:0while/split_1:output:0*
T0*
_output_shapes
:	АP2
	while/addb
while/SigmoidSigmoidwhile/add:z:0*
T0*
_output_shapes
:	АP2
while/Sigmoid{
while/add_1AddV2while/split:output:1while/split_1:output:1*
T0*
_output_shapes
:	АP2
while/add_1h
while/Sigmoid_1Sigmoidwhile/add_1:z:0*
T0*
_output_shapes
:	АP2
while/Sigmoid_1t
	while/mulMulwhile/Sigmoid_1:y:0while/split_1:output:2*
T0*
_output_shapes
:	АP2
	while/mulr
while/add_2AddV2while/split:output:2while/mul:z:0*
T0*
_output_shapes
:	АP2
while/add_2[

while/TanhTanhwhile/add_2:z:0*
T0*
_output_shapes
:	АP2

while/Tanhs
while/mul_1Mulwhile/Sigmoid:y:0while_placeholder_2*
T0*
_output_shapes
:	АP2
while/mul_1_
while/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
while/sub/xp
	while/subSubwhile/sub/x:output:0while/Sigmoid:y:0*
T0*
_output_shapes
:	АP2
	while/subj
while/mul_2Mulwhile/sub:z:0while/Tanh:y:0*
T0*
_output_shapes
:	АP2
while/mul_2o
while/add_3AddV2while/mul_1:z:0while/mul_2:z:0*
T0*
_output_shapes
:	АP2
while/add_3╙
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/add_3:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem`
while/add_4/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_4/yo
while/add_4AddV2while_placeholderwhile/add_4/y:output:0*
T0*
_output_shapes
: 2
while/add_4`
while/add_5/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_5/yv
while/add_5AddV2while_while_loop_counterwhile/add_5/y:output:0*
T0*
_output_shapes
: 2
while/add_5^
while/IdentityIdentitywhile/add_5:z:0*
T0*
_output_shapes
: 2
while/Identityq
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: 2
while/Identity_1b
while/Identity_2Identitywhile/add_4:z:0*
T0*
_output_shapes
: 2
while/Identity_2Н
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: 2
while/Identity_3k
while/Identity_4Identitywhile/add_3:z:0*
T0*
_output_shapes
:	АP2
while/Identity_4"4
while_biasadd_1_unstackwhile_biasadd_1_unstack_0"0
while_biasadd_unstackwhile_biasadd_unstack_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*N
_input_shapes=
;: : : : :	АP: : :	Ё:Ё:	PЁ:Ё: 
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
:	АP:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	Ё:!

_output_shapes	
:Ё:%	!

_output_shapes
:	PЁ:!


_output_shapes	
:Ё
шE
г
__inference_standard_gru_182247

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3Z
unstackUnpackbias*
T0*"
_output_shapes
:Ё:Ё*	
num2	
unstacku
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permГ
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
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceЕ
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
5TensorArrayUnstack/TensorListFromTensor/element_shape°
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
strided_slice_1/stack_2№
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
:         Ё2
MatMult
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:         Ё2	
BiasAddP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimм
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*M
_output_shapes;
9:         P:         P:         P*
	num_split2
splitk
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:         Ё2

MatMul_1z
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:         Ё2
	BiasAdd_1T
Const_1Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim┤
split_1Splitsplit_1/split_dim:output:0BiasAdd_1:output:0*
T0*M
_output_shapes;
9:         P:         P:         P*
	num_split2	
split_1g
addAddV2split:output:0split_1:output:0*
T0*'
_output_shapes
:         P2
addX
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:         P2	
Sigmoidk
add_1AddV2split:output:1split_1:output:1*
T0*'
_output_shapes
:         P2
add_1^
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:         P2
	Sigmoid_1d
mulMulSigmoid_1:y:0split_1:output:2*
T0*'
_output_shapes
:         P2
mulb
add_2AddV2split:output:2mul:z:0*
T0*'
_output_shapes
:         P2
add_2Q
TanhTanh	add_2:z:0*
T0*'
_output_shapes
:         P2
Tanh\
mul_1MulSigmoid:y:0init_h*
T0*'
_output_shapes
:         P2
mul_1S
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
sub/x`
subSubsub/x:output:0Sigmoid:y:0*
T0*'
_output_shapes
:         P2
subZ
mul_2Mulsub:z:0Tanh:y:0*
T0*'
_output_shapes
:         P2
mul_2_
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*'
_output_shapes
:         P2
add_3П
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    P   2
TensorArrayV2_1/element_shape╢
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
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelunstack:output:0recurrent_kernelunstack:output:1*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*W
_output_shapesE
C: : : : :         P: : :	Ё:Ё:	PЁ:Ё* 
_read_only_resource_inputs
 *
bodyR
while_body_182156*
condR
while_cond_182155*V
output_shapesE
C: : : : :         P: : :	Ё:Ё:	PЁ:Ё*
parallel_iterations 2
while╡
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    P   22
0TensorArrayV2Stack/TensorListStack/element_shapeё
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  P*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
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
strided_slice_2/stack_2Ъ
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         P*
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permо
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  P2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  А?2	
runtimel
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:         P2

Identityt

Identity_1Identitytranspose_1:y:0*
T0*4
_output_shapes"
 :                  P2

Identity_1f

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:         P2

Identity_2W

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*g
_input_shapesV
T:                  :         P:	Ё:	PЁ:	Ё*<
api_implements*(gru_7537e81a-4edc-4013-9f4b-628ed05efbcd*
api_preferred_deviceCPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs:OK
'
_output_shapes
:         P
 
_user_specified_nameinit_h:GC

_output_shapes
:	Ё
 
_user_specified_namekernel:QM

_output_shapes
:	PЁ
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	Ё

_user_specified_namebias
фE
о
&__forward_gpu_gru_with_fallback_182037

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3
transpose_7_perm
cudnnrnn

cudnnrnn_0
	transpose

expanddims
cudnnrnn_input_c

concat

cudnnrnn_1

cudnnrnn_2
transpose_perm
concat_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
split_2_split_dim
split_split_dim
split_1_split_dimИu
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
:АP2

ExpandDimsP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimЗ
splitSplitsplit/split_dim:output:0kernel*
T0*2
_output_shapes 
:P:P:P*
	num_split2
splitT
Const_1Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimЧ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*2
_output_shapes 
:PP:PP:PP*
	num_split2	
split_1q
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
         2
Reshape/shapea
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:р2	
ReshapeT
Const_2Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_2h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dimЭ
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*8
_output_shapes&
$:P:P:P:P:P:P*
	num_split2	
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
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0*
_output_shapes

:P2
transpose_1i
	Reshape_1Reshapetranspose_1:y:0Const_3:output:0*
T0*
_output_shapes
:P2
	Reshape_1u
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0*
_output_shapes

:P2
transpose_2i
	Reshape_2Reshapetranspose_2:y:0Const_3:output:0*
T0*
_output_shapes
:P2
	Reshape_2u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:P2
transpose_3i
	Reshape_3Reshapetranspose_3:y:0Const_3:output:0*
T0*
_output_shapes
:P2
	Reshape_3u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm}
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0*
_output_shapes

:PP2
transpose_4j
	Reshape_4Reshapetranspose_4:y:0Const_3:output:0*
T0*
_output_shapes	
:А22
	Reshape_4u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:PP2
transpose_5j
	Reshape_5Reshapetranspose_5:y:0Const_3:output:0*
T0*
_output_shapes	
:А22
	Reshape_5u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0*
_output_shapes

:PP2
transpose_6j
	Reshape_6Reshapetranspose_6:y:0Const_3:output:0*
T0*
_output_shapes	
:А22
	Reshape_6j
	Reshape_7Reshapesplit_2:output:1Const_3:output:0*
T0*
_output_shapes
:P2
	Reshape_7j
	Reshape_8Reshapesplit_2:output:0Const_3:output:0*
T0*
_output_shapes
:P2
	Reshape_8j
	Reshape_9Reshapesplit_2:output:2Const_3:output:0*
T0*
_output_shapes
:P2
	Reshape_9l

Reshape_10Reshapesplit_2:output:4Const_3:output:0*
T0*
_output_shapes
:P2

Reshape_10l

Reshape_11Reshapesplit_2:output:3Const_3:output:0*
T0*
_output_shapes
:P2

Reshape_11l

Reshape_12Reshapesplit_2:output:5Const_3:output:0*
T0*
_output_shapes
:P2

Reshape_12\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis╣
concat_0ConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T02
concati
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    2
CudnnRNN/input_c╩
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat_0:output:0*
T0*8
_output_shapes&
$:fАP:АP: :*
rnn_modegru2

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
strided_slice/stack_2ю
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	АP*
shrink_axis_mask2
strided_slicey
transpose_7/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_7/permГ
transpose_7	TransposeCudnnRNN:output:0transpose_7/perm:output:0*
T0*#
_output_shapes
:АfP2
transpose_7s
SqueezeSqueezeCudnnRNN:output_h:0*
T0*
_output_shapes
:	АP*
squeeze_dims
 2	
Squeezef
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
:	АP2

Identityc

Identity_1Identitytranspose_7:y:0*
T0*#
_output_shapes
:АfP2

Identity_1`

Identity_2IdentitySqueeze:output:0*
T0*
_output_shapes
:	АP2

Identity_2W

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_3"
concatconcat_0:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output_c:0"&

cudnnrnn_0CudnnRNN:reserve_space:0"

cudnnrnn_1CudnnRNN:output:0"!

cudnnrnn_2CudnnRNN:output_h:0"-
cudnnrnn_input_cCudnnRNN/input_c:output:0"!

expanddimsExpandDims:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"/
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
transpose_7_permtranspose_7/perm:output:0")
transpose_permtranspose/perm:output:0*N
_input_shapes=
;:Аf:	АP:	Ё:	PЁ:	Ё*<
api_implements*(gru_21784482-630b-48c1-9b22-63b152563d78*
api_preferred_deviceGPU*V
backward_function_name<:__inference___backward_gpu_gru_with_fallback_181902_182038*
go_backwards( *

time_major( :K G
#
_output_shapes
:Аf
 
_user_specified_nameinputs:GC

_output_shapes
:	АP
 
_user_specified_nameinit_h:GC

_output_shapes
:	Ё
 
_user_specified_namekernel:QM

_output_shapes
:	PЁ
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	Ё

_user_specified_namebias
Ж<
п
(__inference_gpu_gru_with_fallback_178596

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3Иu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permr
	transpose	Transposeinputstranspose/perm:output:0*
T0*#
_output_shapes
:fА2
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
:АP2

ExpandDimsP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimЗ
splitSplitsplit/split_dim:output:0kernel*
T0*2
_output_shapes 
:P:P:P*
	num_split2
splitT
Const_1Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimЧ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*2
_output_shapes 
:PP:PP:PP*
	num_split2	
split_1q
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
         2
Reshape/shapea
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:р2	
ReshapeT
Const_2Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_2h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dimЭ
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*8
_output_shapes&
$:P:P:P:P:P:P*
	num_split2	
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
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0*
_output_shapes

:P2
transpose_1i
	Reshape_1Reshapetranspose_1:y:0Const_3:output:0*
T0*
_output_shapes
:P2
	Reshape_1u
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0*
_output_shapes

:P2
transpose_2i
	Reshape_2Reshapetranspose_2:y:0Const_3:output:0*
T0*
_output_shapes
:P2
	Reshape_2u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:P2
transpose_3i
	Reshape_3Reshapetranspose_3:y:0Const_3:output:0*
T0*
_output_shapes
:P2
	Reshape_3u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm}
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0*
_output_shapes

:PP2
transpose_4j
	Reshape_4Reshapetranspose_4:y:0Const_3:output:0*
T0*
_output_shapes	
:А22
	Reshape_4u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:PP2
transpose_5j
	Reshape_5Reshapetranspose_5:y:0Const_3:output:0*
T0*
_output_shapes	
:А22
	Reshape_5u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0*
_output_shapes

:PP2
transpose_6j
	Reshape_6Reshapetranspose_6:y:0Const_3:output:0*
T0*
_output_shapes	
:А22
	Reshape_6j
	Reshape_7Reshapesplit_2:output:1Const_3:output:0*
T0*
_output_shapes
:P2
	Reshape_7j
	Reshape_8Reshapesplit_2:output:0Const_3:output:0*
T0*
_output_shapes
:P2
	Reshape_8j
	Reshape_9Reshapesplit_2:output:2Const_3:output:0*
T0*
_output_shapes
:P2
	Reshape_9l

Reshape_10Reshapesplit_2:output:4Const_3:output:0*
T0*
_output_shapes
:P2

Reshape_10l

Reshape_11Reshapesplit_2:output:3Const_3:output:0*
T0*
_output_shapes
:P2

Reshape_11l

Reshape_12Reshapesplit_2:output:5Const_3:output:0*
T0*
_output_shapes
:P2

Reshape_12\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis╒
concatConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0*
_output_shapes

:╨Ы2
concati
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    2
CudnnRNN/input_c╞
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat:output:0*
T0*8
_output_shapes&
$:fАP:АP: :*
rnn_modegru2

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
strided_slice/stack_2ю
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	АP*
shrink_axis_mask2
strided_slicey
transpose_7/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_7/permГ
transpose_7	TransposeCudnnRNN:output:0transpose_7/perm:output:0*
T0*#
_output_shapes
:АfP2
transpose_7s
SqueezeSqueezeCudnnRNN:output_h:0*
T0*
_output_shapes
:	АP*
squeeze_dims
 2	
Squeezef
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
:	АP2

Identityc

Identity_1Identitytranspose_7:y:0*
T0*#
_output_shapes
:АfP2

Identity_1`

Identity_2IdentitySqueeze:output:0*
T0*
_output_shapes
:	АP2

Identity_2W

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*N
_input_shapes=
;:Аf:	АP:	Ё:	PЁ:	Ё*<
api_implements*(gru_04d38b74-02be-4856-ad13-b7761c087ec4*
api_preferred_deviceGPU*
go_backwards( *

time_major( :K G
#
_output_shapes
:Аf
 
_user_specified_nameinputs:GC

_output_shapes
:	АP
 
_user_specified_nameinit_h:GC

_output_shapes
:	Ё
 
_user_specified_namekernel:QM

_output_shapes
:	PЁ
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	Ё

_user_specified_namebias
╥
■
?__inference_gru_layer_call_and_return_conditional_losses_181219

inputs
inputs_1

gru_181206

gru_181208

gru_181210
dense_181213
dense_181215
identityИвdense/StatefulPartitionedCallвgru/StatefulPartitionedCallБ
gru/StatefulPartitionedCallStatefulPartitionedCallinputs
gru_181206
gru_181208
gru_181210*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:	АP*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_gru_layer_call_and_return_conditional_losses_1810912
gru/StatefulPartitionedCallЫ
dense/StatefulPartitionedCallStatefulPartitionedCall$gru/StatefulPartitionedCall:output:0dense_181213dense_181215*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:	А
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_1811312
dense/StatefulPartitionedCall░
IdentityIdentity&dense/StatefulPartitionedCall:output:0^dense/StatefulPartitionedCall^gru/StatefulPartitionedCall*
T0*
_output_shapes
:	А
2

Identity"
identityIdentity:output:0*E
_input_shapes4
2:Аf:Аf:::::2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2:
gru/StatefulPartitionedCallgru/StatefulPartitionedCall:K G
#
_output_shapes
:Аf
 
_user_specified_nameinputs:KG
#
_output_shapes
:Аf
 
_user_specified_nameinputs
О1
т
while_body_181731
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0
while_biasadd_unstack_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_1_unstack_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel
while_biasadd_unstack#
while_matmul_1_recurrent_kernel
while_biasadd_1_unstack├
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"А      29
7while/TensorArrayV2Read/TensorListGetItem/element_shape╦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes
:	А*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemЪ
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0* 
_output_shapes
:
АЁ2
while/MatMulЕ
while/BiasAddBiasAddwhile/MatMul:product:0while_biasadd_unstack_0*
T0* 
_output_shapes
:
АЁ2
while/BiasAdd\
while/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/Constp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dimм
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*5
_output_shapes#
!:	АP:	АP:	АP*
	num_split2
while/splitН
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0* 
_output_shapes
:
АЁ2
while/MatMul_1Н
while/BiasAdd_1BiasAddwhile/MatMul_1:product:0while_biasadd_1_unstack_0*
T0* 
_output_shapes
:
АЁ2
while/BiasAdd_1`
while/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
while/Const_1t
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split_1/split_dim┤
while/split_1Split while/split_1/split_dim:output:0while/BiasAdd_1:output:0*
T0*5
_output_shapes#
!:	АP:	АP:	АP*
	num_split2
while/split_1w
	while/addAddV2while/split:output:0while/split_1:output:0*
T0*
_output_shapes
:	АP2
	while/addb
while/SigmoidSigmoidwhile/add:z:0*
T0*
_output_shapes
:	АP2
while/Sigmoid{
while/add_1AddV2while/split:output:1while/split_1:output:1*
T0*
_output_shapes
:	АP2
while/add_1h
while/Sigmoid_1Sigmoidwhile/add_1:z:0*
T0*
_output_shapes
:	АP2
while/Sigmoid_1t
	while/mulMulwhile/Sigmoid_1:y:0while/split_1:output:2*
T0*
_output_shapes
:	АP2
	while/mulr
while/add_2AddV2while/split:output:2while/mul:z:0*
T0*
_output_shapes
:	АP2
while/add_2[

while/TanhTanhwhile/add_2:z:0*
T0*
_output_shapes
:	АP2

while/Tanhs
while/mul_1Mulwhile/Sigmoid:y:0while_placeholder_2*
T0*
_output_shapes
:	АP2
while/mul_1_
while/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
while/sub/xp
	while/subSubwhile/sub/x:output:0while/Sigmoid:y:0*
T0*
_output_shapes
:	АP2
	while/subj
while/mul_2Mulwhile/sub:z:0while/Tanh:y:0*
T0*
_output_shapes
:	АP2
while/mul_2o
while/add_3AddV2while/mul_1:z:0while/mul_2:z:0*
T0*
_output_shapes
:	АP2
while/add_3╙
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/add_3:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem`
while/add_4/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_4/yo
while/add_4AddV2while_placeholderwhile/add_4/y:output:0*
T0*
_output_shapes
: 2
while/add_4`
while/add_5/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_5/yv
while/add_5AddV2while_while_loop_counterwhile/add_5/y:output:0*
T0*
_output_shapes
: 2
while/add_5^
while/IdentityIdentitywhile/add_5:z:0*
T0*
_output_shapes
: 2
while/Identityq
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: 2
while/Identity_1b
while/Identity_2Identitywhile/add_4:z:0*
T0*
_output_shapes
: 2
while/Identity_2Н
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: 2
while/Identity_3k
while/Identity_4Identitywhile/add_3:z:0*
T0*
_output_shapes
:	АP2
while/Identity_4"4
while_biasadd_1_unstackwhile_biasadd_1_unstack_0"0
while_biasadd_unstackwhile_biasadd_unstack_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*N
_input_shapes=
;: : : : :	АP: : :	Ё:Ё:	PЁ:Ё: 
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
:	АP:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	Ё:!

_output_shapes	
:Ё:%	!

_output_shapes
:	PЁ:!


_output_shapes	
:Ё
▐н
ц

:__inference___backward_gpu_gru_with_fallback_180166_180302
placeholder
placeholder_1
placeholder_2
placeholder_3/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_7_grad_invertpermutation_transpose_7_perm)
%gradients_squeeze_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn#
gradients_zeros_like_1_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims=
9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c3
/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h)
%gradients_concat_grad_mod_concat_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim
identity

identity_1

identity_2

identity_3

identity_4Иu
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:         P2
gradients/grad_ys_0Д
gradients/grad_ys_1Identityplaceholder_1*
T0*4
_output_shapes"
 :                  P2
gradients/grad_ys_1w
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:         P2
gradients/grad_ys_2f
gradients/grad_ys_3Identityplaceholder_3*
T0*
_output_shapes
: 2
gradients/grad_ys_3г
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:2$
"gradients/strided_slice_grad/Shape╜
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
1gradients/strided_slice_grad/StridedSliceGrad/end╕
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
 :                  P*
shrink_axis_mask2/
-gradients/strided_slice_grad/StridedSliceGrad╠
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:2.
,gradients/transpose_7_grad/InvertPermutationш
$gradients/transpose_7_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :                  P2&
$gradients/transpose_7_grad/transposeС
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:2
gradients/Squeeze_grad/Shape╞
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:         P2 
gradients/Squeeze_grad/ReshapeФ
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_7_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*4
_output_shapes"
 :                  P2
gradients/AddNy
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
: 2
gradients/zeros_likeБ
gradients/zeros_like_1	ZerosLikegradients_zeros_like_1_cudnnrnn*
T0*
_output_shapes
:2
gradients/zeros_like_1Э
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnngradients_zeros_like_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0gradients/zeros_like:y:0gradients_zeros_like_1_cudnnrnn*
T0*U
_output_shapesC
A:                  :         P: :╨Ы*
rnn_modegru2*
(gradients/CudnnRNN_grad/CudnnRNNBackprop─
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:2,
*gradients/transpose_grad/InvertPermutation 
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :                  2$
"gradients/transpose_grad/transposeШ
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:2!
gradients/ExpandDims_grad/Shapeъ
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:         P2#
!gradients/ExpandDims_grad/Reshapez
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_grad/Rankп
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_grad/modД
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:P2
gradients/concat_grad/ShapeИ
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:P2
gradients/concat_grad/Shape_1И
gradients/concat_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:P2
gradients/concat_grad/Shape_2Й
gradients/concat_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:А22
gradients/concat_grad/Shape_3Й
gradients/concat_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:А22
gradients/concat_grad/Shape_4Й
gradients/concat_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:А22
gradients/concat_grad/Shape_5И
gradients/concat_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:P2
gradients/concat_grad/Shape_6И
gradients/concat_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:P2
gradients/concat_grad/Shape_7И
gradients/concat_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:P2
gradients/concat_grad/Shape_8И
gradients/concat_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:P2
gradients/concat_grad/Shape_9К
gradients/concat_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:P2 
gradients/concat_grad/Shape_10К
gradients/concat_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:P2 
gradients/concat_grad/Shape_11╛
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0&gradients/concat_grad/Shape_2:output:0&gradients/concat_grad/Shape_3:output:0&gradients/concat_grad/Shape_4:output:0&gradients/concat_grad/Shape_5:output:0&gradients/concat_grad/Shape_6:output:0&gradients/concat_grad/Shape_7:output:0&gradients/concat_grad/Shape_8:output:0&gradients/concat_grad/Shape_9:output:0'gradients/concat_grad/Shape_10:output:0'gradients/concat_grad/Shape_11:output:0*
N*\
_output_shapesJ
H::::::::::::2$
"gradients/concat_grad/ConcatOffsetД
gradients/concat_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes
:P2
gradients/concat_grad/SliceК
gradients/concat_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes
:P2
gradients/concat_grad/Slice_1К
gradients/concat_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:2&gradients/concat_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes
:P2
gradients/concat_grad/Slice_2Л
gradients/concat_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:3&gradients/concat_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:А22
gradients/concat_grad/Slice_3Л
gradients/concat_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:4&gradients/concat_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:А22
gradients/concat_grad/Slice_4Л
gradients/concat_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:5&gradients/concat_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:А22
gradients/concat_grad/Slice_5К
gradients/concat_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:6&gradients/concat_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes
:P2
gradients/concat_grad/Slice_6К
gradients/concat_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:7&gradients/concat_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes
:P2
gradients/concat_grad/Slice_7К
gradients/concat_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:8&gradients/concat_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:P2
gradients/concat_grad/Slice_8К
gradients/concat_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:9&gradients/concat_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:P2
gradients/concat_grad/Slice_9О
gradients/concat_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:10'gradients/concat_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:P2 
gradients/concat_grad/Slice_10О
gradients/concat_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:11'gradients/concat_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:P2 
gradients/concat_grad/Slice_11С
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"P      2 
gradients/Reshape_1_grad/Shape╟
 gradients/Reshape_1_grad/ReshapeReshape$gradients/concat_grad/Slice:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:P2"
 gradients/Reshape_1_grad/ReshapeС
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"P      2 
gradients/Reshape_2_grad/Shape╔
 gradients/Reshape_2_grad/ReshapeReshape&gradients/concat_grad/Slice_1:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:P2"
 gradients/Reshape_2_grad/ReshapeС
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"P      2 
gradients/Reshape_3_grad/Shape╔
 gradients/Reshape_3_grad/ReshapeReshape&gradients/concat_grad/Slice_2:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:P2"
 gradients/Reshape_3_grad/ReshapeС
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"P   P   2 
gradients/Reshape_4_grad/Shape╔
 gradients/Reshape_4_grad/ReshapeReshape&gradients/concat_grad/Slice_3:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:PP2"
 gradients/Reshape_4_grad/ReshapeС
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"P   P   2 
gradients/Reshape_5_grad/Shape╔
 gradients/Reshape_5_grad/ReshapeReshape&gradients/concat_grad/Slice_4:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:PP2"
 gradients/Reshape_5_grad/ReshapeС
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"P   P   2 
gradients/Reshape_6_grad/Shape╔
 gradients/Reshape_6_grad/ReshapeReshape&gradients/concat_grad/Slice_5:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:PP2"
 gradients/Reshape_6_grad/ReshapeК
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:P2 
gradients/Reshape_7_grad/Shape┼
 gradients/Reshape_7_grad/ReshapeReshape&gradients/concat_grad/Slice_6:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes
:P2"
 gradients/Reshape_7_grad/ReshapeК
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:P2 
gradients/Reshape_8_grad/Shape┼
 gradients/Reshape_8_grad/ReshapeReshape&gradients/concat_grad/Slice_7:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:P2"
 gradients/Reshape_8_grad/ReshapeК
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:P2 
gradients/Reshape_9_grad/Shape┼
 gradients/Reshape_9_grad/ReshapeReshape&gradients/concat_grad/Slice_8:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:P2"
 gradients/Reshape_9_grad/ReshapeМ
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:P2!
gradients/Reshape_10_grad/Shape╚
!gradients/Reshape_10_grad/ReshapeReshape&gradients/concat_grad/Slice_9:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:P2#
!gradients/Reshape_10_grad/ReshapeМ
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:P2!
gradients/Reshape_11_grad/Shape╔
!gradients/Reshape_11_grad/ReshapeReshape'gradients/concat_grad/Slice_10:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:P2#
!gradients/Reshape_11_grad/ReshapeМ
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:P2!
gradients/Reshape_12_grad/Shape╔
!gradients/Reshape_12_grad/ReshapeReshape'gradients/concat_grad/Slice_11:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:P2#
!gradients/Reshape_12_grad/Reshape╠
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:2.
,gradients/transpose_1_grad/InvertPermutation▀
$gradients/transpose_1_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:P2&
$gradients/transpose_1_grad/transpose╠
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:2.
,gradients/transpose_2_grad/InvertPermutation▀
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:P2&
$gradients/transpose_2_grad/transpose╠
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:2.
,gradients/transpose_3_grad/InvertPermutation▀
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:P2&
$gradients/transpose_3_grad/transpose╠
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:2.
,gradients/transpose_4_grad/InvertPermutation▀
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:PP2&
$gradients/transpose_4_grad/transpose╠
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:2.
,gradients/transpose_5_grad/InvertPermutation▀
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:PP2&
$gradients/transpose_5_grad/transpose╠
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:2.
,gradients/transpose_6_grad/InvertPermutation▀
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:PP2&
$gradients/transpose_6_grad/transposeп
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_7_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:р2
gradients/split_2_grad/concatд
gradients/split_grad/concatConcatV2(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	Ё2
gradients/split_grad/concatм
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	PЁ2
gradients/split_1_grad/concatН
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   Ё   2
gradients/Reshape_grad/Shape─
gradients/Reshape_grad/ReshapeReshape&gradients/split_2_grad/concat:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	Ё2 
gradients/Reshape_grad/ReshapeЗ
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*4
_output_shapes"
 :                  2

IdentityВ

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:         P2

Identity_1t

Identity_2Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	Ё2

Identity_2v

Identity_3Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	PЁ2

Identity_3w

Identity_4Identity'gradients/Reshape_grad/Reshape:output:0*
T0*
_output_shapes
:	Ё2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*ж
_input_shapesФ
С:         P:                  P:         P: :                  P::         P: ::                  :         P: :╨Ы::         P: ::::::: : : *<
api_implements*(gru_2ac1db38-e567-4c8c-a714-82beec179340*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_gru_with_fallback_180301*
go_backwards( *

time_major( :- )
'
_output_shapes
:         P::6
4
_output_shapes"
 :                  P:-)
'
_output_shapes
:         P:

_output_shapes
: ::6
4
_output_shapes"
 :                  P: 

_output_shapes
::1-
+
_output_shapes
:         P:

_output_shapes
: :

_output_shapes
:::	6
4
_output_shapes"
 :                  :1
-
+
_output_shapes
:         P:

_output_shapes
: :"

_output_shapes

:╨Ы: 

_output_shapes
::-)
'
_output_shapes
:         P:
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
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
У
К
$__inference_gru_layer_call_fn_182863
inputs_0
unknown
	unknown_0
	unknown_1
identityИвStatefulPartitionedCall■
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         P*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_gru_layer_call_and_return_conditional_losses_1799062
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         P2

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
фE
о
&__forward_gpu_gru_with_fallback_181088

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3
transpose_7_perm
cudnnrnn

cudnnrnn_0
	transpose

expanddims
cudnnrnn_input_c

concat

cudnnrnn_1

cudnnrnn_2
transpose_perm
concat_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
split_2_split_dim
split_split_dim
split_1_split_dimИu
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
:АP2

ExpandDimsP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimЗ
splitSplitsplit/split_dim:output:0kernel*
T0*2
_output_shapes 
:P:P:P*
	num_split2
splitT
Const_1Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimЧ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*2
_output_shapes 
:PP:PP:PP*
	num_split2	
split_1q
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
         2
Reshape/shapea
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:р2	
ReshapeT
Const_2Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_2h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dimЭ
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*8
_output_shapes&
$:P:P:P:P:P:P*
	num_split2	
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
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0*
_output_shapes

:P2
transpose_1i
	Reshape_1Reshapetranspose_1:y:0Const_3:output:0*
T0*
_output_shapes
:P2
	Reshape_1u
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0*
_output_shapes

:P2
transpose_2i
	Reshape_2Reshapetranspose_2:y:0Const_3:output:0*
T0*
_output_shapes
:P2
	Reshape_2u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:P2
transpose_3i
	Reshape_3Reshapetranspose_3:y:0Const_3:output:0*
T0*
_output_shapes
:P2
	Reshape_3u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm}
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0*
_output_shapes

:PP2
transpose_4j
	Reshape_4Reshapetranspose_4:y:0Const_3:output:0*
T0*
_output_shapes	
:А22
	Reshape_4u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:PP2
transpose_5j
	Reshape_5Reshapetranspose_5:y:0Const_3:output:0*
T0*
_output_shapes	
:А22
	Reshape_5u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0*
_output_shapes

:PP2
transpose_6j
	Reshape_6Reshapetranspose_6:y:0Const_3:output:0*
T0*
_output_shapes	
:А22
	Reshape_6j
	Reshape_7Reshapesplit_2:output:1Const_3:output:0*
T0*
_output_shapes
:P2
	Reshape_7j
	Reshape_8Reshapesplit_2:output:0Const_3:output:0*
T0*
_output_shapes
:P2
	Reshape_8j
	Reshape_9Reshapesplit_2:output:2Const_3:output:0*
T0*
_output_shapes
:P2
	Reshape_9l

Reshape_10Reshapesplit_2:output:4Const_3:output:0*
T0*
_output_shapes
:P2

Reshape_10l

Reshape_11Reshapesplit_2:output:3Const_3:output:0*
T0*
_output_shapes
:P2

Reshape_11l

Reshape_12Reshapesplit_2:output:5Const_3:output:0*
T0*
_output_shapes
:P2

Reshape_12\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis╣
concat_0ConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T02
concati
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    2
CudnnRNN/input_c╩
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat_0:output:0*
T0*8
_output_shapes&
$:fАP:АP: :*
rnn_modegru2

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
strided_slice/stack_2ю
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	АP*
shrink_axis_mask2
strided_slicey
transpose_7/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_7/permГ
transpose_7	TransposeCudnnRNN:output:0transpose_7/perm:output:0*
T0*#
_output_shapes
:АfP2
transpose_7s
SqueezeSqueezeCudnnRNN:output_h:0*
T0*
_output_shapes
:	АP*
squeeze_dims
 2	
Squeezef
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
:	АP2

Identityc

Identity_1Identitytranspose_7:y:0*
T0*#
_output_shapes
:АfP2

Identity_1`

Identity_2IdentitySqueeze:output:0*
T0*
_output_shapes
:	АP2

Identity_2W

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_3"
concatconcat_0:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output_c:0"&

cudnnrnn_0CudnnRNN:reserve_space:0"

cudnnrnn_1CudnnRNN:output:0"!

cudnnrnn_2CudnnRNN:output_h:0"-
cudnnrnn_input_cCudnnRNN/input_c:output:0"!

expanddimsExpandDims:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"/
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
transpose_7_permtranspose_7/perm:output:0")
transpose_permtranspose/perm:output:0*N
_input_shapes=
;:Аf:	АP:	Ё:	PЁ:	Ё*<
api_implements*(gru_3ac5e4bb-d907-42d9-bec1-6263b3d99645*
api_preferred_deviceGPU*V
backward_function_name<:__inference___backward_gpu_gru_with_fallback_180953_181089*
go_backwards( *

time_major( :K G
#
_output_shapes
:Аf
 
_user_specified_nameinputs:GC

_output_shapes
:	АP
 
_user_specified_nameinit_h:GC

_output_shapes
:	Ё
 
_user_specified_namekernel:QM

_output_shapes
:	PЁ
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	Ё

_user_specified_namebias
ЭG
╝
&__forward_gpu_gru_with_fallback_179903

inputs
init_h_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3
cudnnrnn
transpose_7_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
cudnnrnn_input_c

concat
transpose_perm

init_h
concat_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
split_2_split_dim
split_split_dim
split_1_split_dimИu
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
:         P2

ExpandDimsP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimЗ
splitSplitsplit/split_dim:output:0kernel*
T0*2
_output_shapes 
:P:P:P*
	num_split2
splitT
Const_1Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimЧ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*2
_output_shapes 
:PP:PP:PP*
	num_split2	
split_1q
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
         2
Reshape/shapea
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:р2	
ReshapeT
Const_2Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_2h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dimЭ
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*8
_output_shapes&
$:P:P:P:P:P:P*
	num_split2	
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
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0*
_output_shapes

:P2
transpose_1i
	Reshape_1Reshapetranspose_1:y:0Const_3:output:0*
T0*
_output_shapes
:P2
	Reshape_1u
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0*
_output_shapes

:P2
transpose_2i
	Reshape_2Reshapetranspose_2:y:0Const_3:output:0*
T0*
_output_shapes
:P2
	Reshape_2u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:P2
transpose_3i
	Reshape_3Reshapetranspose_3:y:0Const_3:output:0*
T0*
_output_shapes
:P2
	Reshape_3u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm}
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0*
_output_shapes

:PP2
transpose_4j
	Reshape_4Reshapetranspose_4:y:0Const_3:output:0*
T0*
_output_shapes	
:А22
	Reshape_4u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:PP2
transpose_5j
	Reshape_5Reshapetranspose_5:y:0Const_3:output:0*
T0*
_output_shapes	
:А22
	Reshape_5u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0*
_output_shapes

:PP2
transpose_6j
	Reshape_6Reshapetranspose_6:y:0Const_3:output:0*
T0*
_output_shapes	
:А22
	Reshape_6j
	Reshape_7Reshapesplit_2:output:1Const_3:output:0*
T0*
_output_shapes
:P2
	Reshape_7j
	Reshape_8Reshapesplit_2:output:0Const_3:output:0*
T0*
_output_shapes
:P2
	Reshape_8j
	Reshape_9Reshapesplit_2:output:2Const_3:output:0*
T0*
_output_shapes
:P2
	Reshape_9l

Reshape_10Reshapesplit_2:output:4Const_3:output:0*
T0*
_output_shapes
:P2

Reshape_10l

Reshape_11Reshapesplit_2:output:3Const_3:output:0*
T0*
_output_shapes
:P2

Reshape_11l

Reshape_12Reshapesplit_2:output:5Const_3:output:0*
T0*
_output_shapes
:P2

Reshape_12\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis╣
concat_0ConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T02
concati
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    2
CudnnRNN/input_cу
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat_0:output:0*
T0*Q
_output_shapes?
=:                  P:         P: :*
rnn_modegru2

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
strided_slice/stack_2Ў
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         P*
shrink_axis_mask2
strided_slicey
transpose_7/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_7/permФ
transpose_7	TransposeCudnnRNN:output:0transpose_7/perm:output:0*
T0*4
_output_shapes"
 :                  P2
transpose_7{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:         P*
squeeze_dims
 2	
Squeezef
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
:         P2

Identityt

Identity_1Identitytranspose_7:y:0*
T0*4
_output_shapes"
 :                  P2

Identity_1h

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:         P2

Identity_2W

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_3"
concatconcat_0:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"-
cudnnrnn_input_cCudnnRNN/input_c:output:0"!

expanddimsExpandDims:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"
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
transpose_7_permtranspose_7/perm:output:0")
transpose_permtranspose/perm:output:0*g
_input_shapesV
T:                  :         P:	Ё:	PЁ:	Ё*<
api_implements*(gru_e5c217df-3f49-4cb3-b56b-2ac01f8bd969*
api_preferred_deviceGPU*V
backward_function_name<:__inference___backward_gpu_gru_with_fallback_179768_179904*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs:OK
'
_output_shapes
:         P
 
_user_specified_nameinit_h:GC

_output_shapes
:	Ё
 
_user_specified_namekernel:QM

_output_shapes
:	PЁ
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	Ё

_user_specified_namebias
╫2
т
while_body_182543
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0
while_biasadd_unstack_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_1_unstack_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel
while_biasadd_unstack#
while_matmul_1_recurrent_kernel
while_biasadd_1_unstack├
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       29
7while/TensorArrayV2Read/TensorListGetItem/element_shape╙
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemв
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:         Ё2
while/MatMulН
while/BiasAddBiasAddwhile/MatMul:product:0while_biasadd_unstack_0*
T0*(
_output_shapes
:         Ё2
while/BiasAdd\
while/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/Constp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dim─
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*M
_output_shapes;
9:         P:         P:         P*
	num_split2
while/splitХ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:         Ё2
while/MatMul_1Х
while/BiasAdd_1BiasAddwhile/MatMul_1:product:0while_biasadd_1_unstack_0*
T0*(
_output_shapes
:         Ё2
while/BiasAdd_1`
while/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
while/Const_1t
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split_1/split_dim╠
while/split_1Split while/split_1/split_dim:output:0while/BiasAdd_1:output:0*
T0*M
_output_shapes;
9:         P:         P:         P*
	num_split2
while/split_1
	while/addAddV2while/split:output:0while/split_1:output:0*
T0*'
_output_shapes
:         P2
	while/addj
while/SigmoidSigmoidwhile/add:z:0*
T0*'
_output_shapes
:         P2
while/SigmoidГ
while/add_1AddV2while/split:output:1while/split_1:output:1*
T0*'
_output_shapes
:         P2
while/add_1p
while/Sigmoid_1Sigmoidwhile/add_1:z:0*
T0*'
_output_shapes
:         P2
while/Sigmoid_1|
	while/mulMulwhile/Sigmoid_1:y:0while/split_1:output:2*
T0*'
_output_shapes
:         P2
	while/mulz
while/add_2AddV2while/split:output:2while/mul:z:0*
T0*'
_output_shapes
:         P2
while/add_2c

while/TanhTanhwhile/add_2:z:0*
T0*'
_output_shapes
:         P2

while/Tanh{
while/mul_1Mulwhile/Sigmoid:y:0while_placeholder_2*
T0*'
_output_shapes
:         P2
while/mul_1_
while/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
while/sub/xx
	while/subSubwhile/sub/x:output:0while/Sigmoid:y:0*
T0*'
_output_shapes
:         P2
	while/subr
while/mul_2Mulwhile/sub:z:0while/Tanh:y:0*
T0*'
_output_shapes
:         P2
while/mul_2w
while/add_3AddV2while/mul_1:z:0while/mul_2:z:0*
T0*'
_output_shapes
:         P2
while/add_3╙
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/add_3:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem`
while/add_4/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_4/yo
while/add_4AddV2while_placeholderwhile/add_4/y:output:0*
T0*
_output_shapes
: 2
while/add_4`
while/add_5/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_5/yv
while/add_5AddV2while_while_loop_counterwhile/add_5/y:output:0*
T0*
_output_shapes
: 2
while/add_5^
while/IdentityIdentitywhile/add_5:z:0*
T0*
_output_shapes
: 2
while/Identityq
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: 2
while/Identity_1b
while/Identity_2Identitywhile/add_4:z:0*
T0*
_output_shapes
: 2
while/Identity_2Н
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: 2
while/Identity_3s
while/Identity_4Identitywhile/add_3:z:0*
T0*'
_output_shapes
:         P2
while/Identity_4"4
while_biasadd_1_unstackwhile_biasadd_1_unstack_0"0
while_biasadd_unstackwhile_biasadd_unstack_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*V
_input_shapesE
C: : : : :         P: : :	Ё:Ё:	PЁ:Ё: 
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
:         P:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	Ё:!

_output_shapes	
:Ё:%	!

_output_shapes
:	PЁ:!


_output_shapes	
:Ё
Ё
Р
?__inference_gru_layer_call_and_return_conditional_losses_183648

inputs 
read_readvariableop_resource"
read_1_readvariableop_resource"
read_2_readvariableop_resource

identity_3ИвRead/ReadVariableOpвRead_1/ReadVariableOpвRead_2/ReadVariableOpc
ShapeConst*
_output_shapes
:*
dtype0*!
valueB"А   f      2
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
strided_slice/stack_2т
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
value	B :P2
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
B :ш2
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
value	B :P2
zeros/packed/1Г
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
:	АP2
zerosИ
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	Ё*
dtype02
Read/ReadVariableOpg
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	Ё2

IdentityО
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes
:	PЁ*
dtype02
Read_1/ReadVariableOpm

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	PЁ2

Identity_1О
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes
:	Ё*
dtype02
Read_2/ReadVariableOpm

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes
:	Ё2

Identity_2Е
PartitionedCallPartitionedCallinputszeros:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *;
_output_shapes)
':	АP:АfP:	АP: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *(
f#R!
__inference_standard_gru_1834302
PartitionedCallо

Identity_3IdentityPartitionedCall:output:0^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*
T0*
_output_shapes
:	АP2

Identity_3"!

identity_3Identity_3:output:0*.
_input_shapes
:Аf:::2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:K G
#
_output_shapes
:Аf
 
_user_specified_nameinputs
Ж	
▐
while_cond_182155
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice4
0while_while_cond_182155___redundant_placeholder04
0while_while_cond_182155___redundant_placeholder14
0while_while_cond_182155___redundant_placeholder24
0while_while_cond_182155___redundant_placeholder34
0while_while_cond_182155___redundant_placeholder4
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
while_identitywhile/Identity:output:0*D
_input_shapes3
1: : : : :         P: :::::: 
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
:         P:

_output_shapes
: :

_output_shapes
::
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
Ж	
▐
while_cond_179596
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice4
0while_while_cond_179596___redundant_placeholder04
0while_while_cond_179596___redundant_placeholder14
0while_while_cond_179596___redundant_placeholder24
0while_while_cond_179596___redundant_placeholder34
0while_while_cond_179596___redundant_placeholder4
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
while_identitywhile/Identity:output:0*D
_input_shapes3
1: : : : :         P: :::::: 
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
:         P:

_output_shapes
: :

_output_shapes
::
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
▒C
г
__inference_standard_gru_180486

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3Z
unstackUnpackbias*
T0*"
_output_shapes
:Ё:Ё*	
num2	
unstacku
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permr
	transpose	Transposeinputstranspose/perm:output:0*
T0*#
_output_shapes
:fА2
	transposec
ShapeConst*
_output_shapes
:*
dtype0*!
valueB"f   А      2
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
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceЕ
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
valueB"А      27
5TensorArrayUnstack/TensorListFromTensor/element_shape°
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
strided_slice_1/stack_2Ї
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	А*
shrink_axis_mask2
strided_slice_1g
MatMulMatMulstrided_slice_1:output:0kernel*
T0* 
_output_shapes
:
АЁ2
MatMull
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0* 
_output_shapes
:
АЁ2	
BiasAddP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimФ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*5
_output_shapes#
!:	АP:	АP:	АP*
	num_split2
splitc
MatMul_1MatMulinit_hrecurrent_kernel*
T0* 
_output_shapes
:
АЁ2

MatMul_1r
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0* 
_output_shapes
:
АЁ2
	BiasAdd_1T
Const_1Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimЬ
split_1Splitsplit_1/split_dim:output:0BiasAdd_1:output:0*
T0*5
_output_shapes#
!:	АP:	АP:	АP*
	num_split2	
split_1_
addAddV2split:output:0split_1:output:0*
T0*
_output_shapes
:	АP2
addP
SigmoidSigmoidadd:z:0*
T0*
_output_shapes
:	АP2	
Sigmoidc
add_1AddV2split:output:1split_1:output:1*
T0*
_output_shapes
:	АP2
add_1V
	Sigmoid_1Sigmoid	add_1:z:0*
T0*
_output_shapes
:	АP2
	Sigmoid_1\
mulMulSigmoid_1:y:0split_1:output:2*
T0*
_output_shapes
:	АP2
mulZ
add_2AddV2split:output:2mul:z:0*
T0*
_output_shapes
:	АP2
add_2I
TanhTanh	add_2:z:0*
T0*
_output_shapes
:	АP2
TanhT
mul_1MulSigmoid:y:0init_h*
T0*
_output_shapes
:	АP2
mul_1S
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
sub/xX
subSubsub/x:output:0Sigmoid:y:0*
T0*
_output_shapes
:	АP2
subR
mul_2Mulsub:z:0Tanh:y:0*
T0*
_output_shapes
:	АP2
mul_2W
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*
_output_shapes
:	АP2
add_3П
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"А   P   2
TensorArrayV2_1/element_shape╢
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
while/loop_counterР
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelunstack:output:0recurrent_kernelunstack:output:1*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*O
_output_shapes=
;: : : : :	АP: : :	Ё:Ё:	PЁ:Ё* 
_read_only_resource_inputs
 *
bodyR
while_body_180395*
condR
while_cond_180394*N
output_shapes=
;: : : : :	АP: : :	Ё:Ё:	PЁ:Ё*
parallel_iterations 2
while╡
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"А   P   22
0TensorArrayV2Stack/TensorListStack/element_shapeр
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*#
_output_shapes
:fАP*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
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
strided_slice_2/stack_2Т
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	АP*
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЭ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*#
_output_shapes
:АfP2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  А?2	
runtimed
IdentityIdentitystrided_slice_2:output:0*
T0*
_output_shapes
:	АP2

Identityc

Identity_1Identitytranspose_1:y:0*
T0*#
_output_shapes
:АfP2

Identity_1^

Identity_2Identitywhile:output:4*
T0*
_output_shapes
:	АP2

Identity_2W

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*N
_input_shapes=
;:Аf:	АP:	Ё:	PЁ:	Ё*<
api_implements*(gru_b781c3ab-c21d-4d02-9879-c227062151d0*
api_preferred_deviceCPU*
go_backwards( *

time_major( :K G
#
_output_shapes
:Аf
 
_user_specified_nameinputs:GC

_output_shapes
:	АP
 
_user_specified_nameinit_h:GC

_output_shapes
:	Ё
 
_user_specified_namekernel:QM

_output_shapes
:	PЁ
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	Ё

_user_specified_namebias
фE
о
&__forward_gpu_gru_with_fallback_181643

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3
transpose_7_perm
cudnnrnn

cudnnrnn_0
	transpose

expanddims
cudnnrnn_input_c

concat

cudnnrnn_1

cudnnrnn_2
transpose_perm
concat_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
split_2_split_dim
split_split_dim
split_1_split_dimИu
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
:АP2

ExpandDimsP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimЗ
splitSplitsplit/split_dim:output:0kernel*
T0*2
_output_shapes 
:P:P:P*
	num_split2
splitT
Const_1Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimЧ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*2
_output_shapes 
:PP:PP:PP*
	num_split2	
split_1q
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
         2
Reshape/shapea
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:р2	
ReshapeT
Const_2Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_2h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dimЭ
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*8
_output_shapes&
$:P:P:P:P:P:P*
	num_split2	
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
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0*
_output_shapes

:P2
transpose_1i
	Reshape_1Reshapetranspose_1:y:0Const_3:output:0*
T0*
_output_shapes
:P2
	Reshape_1u
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0*
_output_shapes

:P2
transpose_2i
	Reshape_2Reshapetranspose_2:y:0Const_3:output:0*
T0*
_output_shapes
:P2
	Reshape_2u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:P2
transpose_3i
	Reshape_3Reshapetranspose_3:y:0Const_3:output:0*
T0*
_output_shapes
:P2
	Reshape_3u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm}
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0*
_output_shapes

:PP2
transpose_4j
	Reshape_4Reshapetranspose_4:y:0Const_3:output:0*
T0*
_output_shapes	
:А22
	Reshape_4u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:PP2
transpose_5j
	Reshape_5Reshapetranspose_5:y:0Const_3:output:0*
T0*
_output_shapes	
:А22
	Reshape_5u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0*
_output_shapes

:PP2
transpose_6j
	Reshape_6Reshapetranspose_6:y:0Const_3:output:0*
T0*
_output_shapes	
:А22
	Reshape_6j
	Reshape_7Reshapesplit_2:output:1Const_3:output:0*
T0*
_output_shapes
:P2
	Reshape_7j
	Reshape_8Reshapesplit_2:output:0Const_3:output:0*
T0*
_output_shapes
:P2
	Reshape_8j
	Reshape_9Reshapesplit_2:output:2Const_3:output:0*
T0*
_output_shapes
:P2
	Reshape_9l

Reshape_10Reshapesplit_2:output:4Const_3:output:0*
T0*
_output_shapes
:P2

Reshape_10l

Reshape_11Reshapesplit_2:output:3Const_3:output:0*
T0*
_output_shapes
:P2

Reshape_11l

Reshape_12Reshapesplit_2:output:5Const_3:output:0*
T0*
_output_shapes
:P2

Reshape_12\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis╣
concat_0ConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T02
concati
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    2
CudnnRNN/input_c╩
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat_0:output:0*
T0*8
_output_shapes&
$:fАP:АP: :*
rnn_modegru2

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
strided_slice/stack_2ю
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	АP*
shrink_axis_mask2
strided_slicey
transpose_7/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_7/permГ
transpose_7	TransposeCudnnRNN:output:0transpose_7/perm:output:0*
T0*#
_output_shapes
:АfP2
transpose_7s
SqueezeSqueezeCudnnRNN:output_h:0*
T0*
_output_shapes
:	АP*
squeeze_dims
 2	
Squeezef
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
:	АP2

Identityc

Identity_1Identitytranspose_7:y:0*
T0*#
_output_shapes
:АfP2

Identity_1`

Identity_2IdentitySqueeze:output:0*
T0*
_output_shapes
:	АP2

Identity_2W

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_3"
concatconcat_0:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output_c:0"&

cudnnrnn_0CudnnRNN:reserve_space:0"

cudnnrnn_1CudnnRNN:output:0"!

cudnnrnn_2CudnnRNN:output_h:0"-
cudnnrnn_input_cCudnnRNN/input_c:output:0"!

expanddimsExpandDims:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"/
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
transpose_7_permtranspose_7/perm:output:0")
transpose_permtranspose/perm:output:0*N
_input_shapes=
;:Аf:	АP:	Ё:	PЁ:	Ё*<
api_implements*(gru_97a25323-5f73-47b1-8c97-356824aa4592*
api_preferred_deviceGPU*V
backward_function_name<:__inference___backward_gpu_gru_with_fallback_181508_181644*
go_backwards( *

time_major( :K G
#
_output_shapes
:Аf
 
_user_specified_nameinputs:GC

_output_shapes
:	АP
 
_user_specified_nameinit_h:GC

_output_shapes
:	Ё
 
_user_specified_namekernel:QM

_output_shapes
:	PЁ
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	Ё

_user_specified_namebias
▒C
г
__inference_standard_gru_183043

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3Z
unstackUnpackbias*
T0*"
_output_shapes
:Ё:Ё*	
num2	
unstacku
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permr
	transpose	Transposeinputstranspose/perm:output:0*
T0*#
_output_shapes
:fА2
	transposec
ShapeConst*
_output_shapes
:*
dtype0*!
valueB"f   А      2
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
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceЕ
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
valueB"А      27
5TensorArrayUnstack/TensorListFromTensor/element_shape°
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
strided_slice_1/stack_2Ї
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	А*
shrink_axis_mask2
strided_slice_1g
MatMulMatMulstrided_slice_1:output:0kernel*
T0* 
_output_shapes
:
АЁ2
MatMull
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0* 
_output_shapes
:
АЁ2	
BiasAddP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimФ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*5
_output_shapes#
!:	АP:	АP:	АP*
	num_split2
splitc
MatMul_1MatMulinit_hrecurrent_kernel*
T0* 
_output_shapes
:
АЁ2

MatMul_1r
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0* 
_output_shapes
:
АЁ2
	BiasAdd_1T
Const_1Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimЬ
split_1Splitsplit_1/split_dim:output:0BiasAdd_1:output:0*
T0*5
_output_shapes#
!:	АP:	АP:	АP*
	num_split2	
split_1_
addAddV2split:output:0split_1:output:0*
T0*
_output_shapes
:	АP2
addP
SigmoidSigmoidadd:z:0*
T0*
_output_shapes
:	АP2	
Sigmoidc
add_1AddV2split:output:1split_1:output:1*
T0*
_output_shapes
:	АP2
add_1V
	Sigmoid_1Sigmoid	add_1:z:0*
T0*
_output_shapes
:	АP2
	Sigmoid_1\
mulMulSigmoid_1:y:0split_1:output:2*
T0*
_output_shapes
:	АP2
mulZ
add_2AddV2split:output:2mul:z:0*
T0*
_output_shapes
:	АP2
add_2I
TanhTanh	add_2:z:0*
T0*
_output_shapes
:	АP2
TanhT
mul_1MulSigmoid:y:0init_h*
T0*
_output_shapes
:	АP2
mul_1S
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
sub/xX
subSubsub/x:output:0Sigmoid:y:0*
T0*
_output_shapes
:	АP2
subR
mul_2Mulsub:z:0Tanh:y:0*
T0*
_output_shapes
:	АP2
mul_2W
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*
_output_shapes
:	АP2
add_3П
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"А   P   2
TensorArrayV2_1/element_shape╢
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
while/loop_counterР
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelunstack:output:0recurrent_kernelunstack:output:1*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*O
_output_shapes=
;: : : : :	АP: : :	Ё:Ё:	PЁ:Ё* 
_read_only_resource_inputs
 *
bodyR
while_body_182952*
condR
while_cond_182951*N
output_shapes=
;: : : : :	АP: : :	Ё:Ё:	PЁ:Ё*
parallel_iterations 2
while╡
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"А   P   22
0TensorArrayV2Stack/TensorListStack/element_shapeр
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*#
_output_shapes
:fАP*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
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
strided_slice_2/stack_2Т
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	АP*
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЭ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*#
_output_shapes
:АfP2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  А?2	
runtimed
IdentityIdentitystrided_slice_2:output:0*
T0*
_output_shapes
:	АP2

Identityc

Identity_1Identitytranspose_1:y:0*
T0*#
_output_shapes
:АfP2

Identity_1^

Identity_2Identitywhile:output:4*
T0*
_output_shapes
:	АP2

Identity_2W

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*N
_input_shapes=
;:Аf:	АP:	Ё:	PЁ:	Ё*<
api_implements*(gru_213abd45-4533-4531-917c-8912d5b592e1*
api_preferred_deviceCPU*
go_backwards( *

time_major( :K G
#
_output_shapes
:Аf
 
_user_specified_nameinputs:GC

_output_shapes
:	АP
 
_user_specified_nameinit_h:GC

_output_shapes
:	Ё
 
_user_specified_namekernel:QM

_output_shapes
:	PЁ
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	Ё

_user_specified_namebias
╩%
╚
?__inference_gru_layer_call_and_return_conditional_losses_182046
inputs_0
inputs_1$
 gru_read_readvariableop_resource&
"gru_read_1_readvariableop_resource&
"gru_read_2_readvariableop_resource(
$dense_matmul_readvariableop_resource)
%dense_biasadd_readvariableop_resource
identityИвdense/BiasAdd/ReadVariableOpвdense/MatMul/ReadVariableOpвgru/Read/ReadVariableOpвgru/Read_1/ReadVariableOpвgru/Read_2/ReadVariableOpk
	gru/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"А   f      2
	gru/Shape|
gru/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gru/strided_slice/stackА
gru/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
gru/strided_slice/stack_1А
gru/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
gru/strided_slice/stack_2·
gru/strided_sliceStridedSlicegru/Shape:output:0 gru/strided_slice/stack:output:0"gru/strided_slice/stack_1:output:0"gru/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
gru/strided_sliced
gru/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :P2
gru/zeros/mul/y|
gru/zeros/mulMulgru/strided_slice:output:0gru/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
gru/zeros/mulg
gru/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
gru/zeros/Less/yw
gru/zeros/LessLessgru/zeros/mul:z:0gru/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
gru/zeros/Lessj
gru/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :P2
gru/zeros/packed/1У
gru/zeros/packedPackgru/strided_slice:output:0gru/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
gru/zeros/packedg
gru/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
gru/zeros/Const}
	gru/zerosFillgru/zeros/packed:output:0gru/zeros/Const:output:0*
T0*
_output_shapes
:	АP2
	gru/zerosФ
gru/Read/ReadVariableOpReadVariableOp gru_read_readvariableop_resource*
_output_shapes
:	Ё*
dtype02
gru/Read/ReadVariableOps
gru/IdentityIdentitygru/Read/ReadVariableOp:value:0*
T0*
_output_shapes
:	Ё2
gru/IdentityЪ
gru/Read_1/ReadVariableOpReadVariableOp"gru_read_1_readvariableop_resource*
_output_shapes
:	PЁ*
dtype02
gru/Read_1/ReadVariableOpy
gru/Identity_1Identity!gru/Read_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	PЁ2
gru/Identity_1Ъ
gru/Read_2/ReadVariableOpReadVariableOp"gru_read_2_readvariableop_resource*
_output_shapes
:	Ё*
dtype02
gru/Read_2/ReadVariableOpy
gru/Identity_2Identity!gru/Read_2/ReadVariableOp:value:0*
T0*
_output_shapes
:	Ё2
gru/Identity_2Я
gru/PartitionedCallPartitionedCallinputs_0gru/zeros:output:0gru/Identity:output:0gru/Identity_1:output:0gru/Identity_2:output:0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *;
_output_shapes)
':	АP:АfP:	АP: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *(
f#R!
__inference_standard_gru_1818222
gru/PartitionedCallЯ
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes

:P
*
dtype02
dense/MatMul/ReadVariableOpУ
dense/MatMulMatMulgru/PartitionedCall:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	А
2
dense/MatMulЮ
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
dense/BiasAdd/ReadVariableOpС
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	А
2
dense/BiasAddё
IdentityIdentitydense/BiasAdd:output:0^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^gru/Read/ReadVariableOp^gru/Read_1/ReadVariableOp^gru/Read_2/ReadVariableOp*
T0*
_output_shapes
:	А
2

Identity"
identityIdentity:output:0*E
_input_shapes4
2:Аf:Аf:::::2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp22
gru/Read/ReadVariableOpgru/Read/ReadVariableOp26
gru/Read_1/ReadVariableOpgru/Read_1/ReadVariableOp26
gru/Read_2/ReadVariableOpgru/Read_2/ReadVariableOp:M I
#
_output_shapes
:Аf
"
_user_specified_name
inputs/0:MI
#
_output_shapes
:Аf
"
_user_specified_name
inputs/1
шE
г
__inference_standard_gru_179688

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3Z
unstackUnpackbias*
T0*"
_output_shapes
:Ё:Ё*	
num2	
unstacku
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permГ
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
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceЕ
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
5TensorArrayUnstack/TensorListFromTensor/element_shape°
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
strided_slice_1/stack_2№
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
:         Ё2
MatMult
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:         Ё2	
BiasAddP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimм
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*M
_output_shapes;
9:         P:         P:         P*
	num_split2
splitk
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:         Ё2

MatMul_1z
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:         Ё2
	BiasAdd_1T
Const_1Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim┤
split_1Splitsplit_1/split_dim:output:0BiasAdd_1:output:0*
T0*M
_output_shapes;
9:         P:         P:         P*
	num_split2	
split_1g
addAddV2split:output:0split_1:output:0*
T0*'
_output_shapes
:         P2
addX
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:         P2	
Sigmoidk
add_1AddV2split:output:1split_1:output:1*
T0*'
_output_shapes
:         P2
add_1^
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:         P2
	Sigmoid_1d
mulMulSigmoid_1:y:0split_1:output:2*
T0*'
_output_shapes
:         P2
mulb
add_2AddV2split:output:2mul:z:0*
T0*'
_output_shapes
:         P2
add_2Q
TanhTanh	add_2:z:0*
T0*'
_output_shapes
:         P2
Tanh\
mul_1MulSigmoid:y:0init_h*
T0*'
_output_shapes
:         P2
mul_1S
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
sub/x`
subSubsub/x:output:0Sigmoid:y:0*
T0*'
_output_shapes
:         P2
subZ
mul_2Mulsub:z:0Tanh:y:0*
T0*'
_output_shapes
:         P2
mul_2_
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*'
_output_shapes
:         P2
add_3П
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    P   2
TensorArrayV2_1/element_shape╢
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
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelunstack:output:0recurrent_kernelunstack:output:1*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*W
_output_shapesE
C: : : : :         P: : :	Ё:Ё:	PЁ:Ё* 
_read_only_resource_inputs
 *
bodyR
while_body_179597*
condR
while_cond_179596*V
output_shapesE
C: : : : :         P: : :	Ё:Ё:	PЁ:Ё*
parallel_iterations 2
while╡
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    P   22
0TensorArrayV2Stack/TensorListStack/element_shapeё
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  P*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
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
strided_slice_2/stack_2Ъ
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         P*
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permо
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  P2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  А?2	
runtimel
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:         P2

Identityt

Identity_1Identitytranspose_1:y:0*
T0*4
_output_shapes"
 :                  P2

Identity_1f

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:         P2

Identity_2W

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*g
_input_shapesV
T:                  :         P:	Ё:	PЁ:	Ё*<
api_implements*(gru_e5c217df-3f49-4cb3-b56b-2ac01f8bd969*
api_preferred_deviceCPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs:OK
'
_output_shapes
:         P
 
_user_specified_nameinit_h:GC

_output_shapes
:	Ё
 
_user_specified_namekernel:QM

_output_shapes
:	PЁ
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	Ё

_user_specified_namebias
Ў
▐
while_cond_182951
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice4
0while_while_cond_182951___redundant_placeholder04
0while_while_cond_182951___redundant_placeholder14
0while_while_cond_182951___redundant_placeholder24
0while_while_cond_182951___redundant_placeholder34
0while_while_cond_182951___redundant_placeholder4
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
while_identitywhile/Identity:output:0*<
_input_shapes+
): : : : :	АP: :::::: 
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
:	АP:

_output_shapes
: :

_output_shapes
::
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
╫2
т
while_body_179597
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0
while_biasadd_unstack_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_1_unstack_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel
while_biasadd_unstack#
while_matmul_1_recurrent_kernel
while_biasadd_1_unstack├
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       29
7while/TensorArrayV2Read/TensorListGetItem/element_shape╙
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemв
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:         Ё2
while/MatMulН
while/BiasAddBiasAddwhile/MatMul:product:0while_biasadd_unstack_0*
T0*(
_output_shapes
:         Ё2
while/BiasAdd\
while/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/Constp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dim─
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*M
_output_shapes;
9:         P:         P:         P*
	num_split2
while/splitХ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:         Ё2
while/MatMul_1Х
while/BiasAdd_1BiasAddwhile/MatMul_1:product:0while_biasadd_1_unstack_0*
T0*(
_output_shapes
:         Ё2
while/BiasAdd_1`
while/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
while/Const_1t
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split_1/split_dim╠
while/split_1Split while/split_1/split_dim:output:0while/BiasAdd_1:output:0*
T0*M
_output_shapes;
9:         P:         P:         P*
	num_split2
while/split_1
	while/addAddV2while/split:output:0while/split_1:output:0*
T0*'
_output_shapes
:         P2
	while/addj
while/SigmoidSigmoidwhile/add:z:0*
T0*'
_output_shapes
:         P2
while/SigmoidГ
while/add_1AddV2while/split:output:1while/split_1:output:1*
T0*'
_output_shapes
:         P2
while/add_1p
while/Sigmoid_1Sigmoidwhile/add_1:z:0*
T0*'
_output_shapes
:         P2
while/Sigmoid_1|
	while/mulMulwhile/Sigmoid_1:y:0while/split_1:output:2*
T0*'
_output_shapes
:         P2
	while/mulz
while/add_2AddV2while/split:output:2while/mul:z:0*
T0*'
_output_shapes
:         P2
while/add_2c

while/TanhTanhwhile/add_2:z:0*
T0*'
_output_shapes
:         P2

while/Tanh{
while/mul_1Mulwhile/Sigmoid:y:0while_placeholder_2*
T0*'
_output_shapes
:         P2
while/mul_1_
while/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
while/sub/xx
	while/subSubwhile/sub/x:output:0while/Sigmoid:y:0*
T0*'
_output_shapes
:         P2
	while/subr
while/mul_2Mulwhile/sub:z:0while/Tanh:y:0*
T0*'
_output_shapes
:         P2
while/mul_2w
while/add_3AddV2while/mul_1:z:0while/mul_2:z:0*
T0*'
_output_shapes
:         P2
while/add_3╙
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/add_3:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem`
while/add_4/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_4/yo
while/add_4AddV2while_placeholderwhile/add_4/y:output:0*
T0*
_output_shapes
: 2
while/add_4`
while/add_5/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_5/yv
while/add_5AddV2while_while_loop_counterwhile/add_5/y:output:0*
T0*
_output_shapes
: 2
while/add_5^
while/IdentityIdentitywhile/add_5:z:0*
T0*
_output_shapes
: 2
while/Identityq
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: 2
while/Identity_1b
while/Identity_2Identitywhile/add_4:z:0*
T0*
_output_shapes
: 2
while/Identity_2Н
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: 2
while/Identity_3s
while/Identity_4Identitywhile/add_3:z:0*
T0*'
_output_shapes
:         P2
while/Identity_4"4
while_biasadd_1_unstackwhile_biasadd_1_unstack_0"0
while_biasadd_unstackwhile_biasadd_unstack_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*V
_input_shapesE
C: : : : :         P: : :	Ё:Ё:	PЁ:Ё: 
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
:         P:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	Ё:!

_output_shapes	
:Ё:%	!

_output_shapes
:	PЁ:!


_output_shapes	
:Ё
Ж<
п
(__inference_gpu_gru_with_fallback_181901

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3Иu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permr
	transpose	Transposeinputstranspose/perm:output:0*
T0*#
_output_shapes
:fА2
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
:АP2

ExpandDimsP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimЗ
splitSplitsplit/split_dim:output:0kernel*
T0*2
_output_shapes 
:P:P:P*
	num_split2
splitT
Const_1Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimЧ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*2
_output_shapes 
:PP:PP:PP*
	num_split2	
split_1q
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
         2
Reshape/shapea
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:р2	
ReshapeT
Const_2Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_2h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dimЭ
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*8
_output_shapes&
$:P:P:P:P:P:P*
	num_split2	
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
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0*
_output_shapes

:P2
transpose_1i
	Reshape_1Reshapetranspose_1:y:0Const_3:output:0*
T0*
_output_shapes
:P2
	Reshape_1u
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0*
_output_shapes

:P2
transpose_2i
	Reshape_2Reshapetranspose_2:y:0Const_3:output:0*
T0*
_output_shapes
:P2
	Reshape_2u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:P2
transpose_3i
	Reshape_3Reshapetranspose_3:y:0Const_3:output:0*
T0*
_output_shapes
:P2
	Reshape_3u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm}
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0*
_output_shapes

:PP2
transpose_4j
	Reshape_4Reshapetranspose_4:y:0Const_3:output:0*
T0*
_output_shapes	
:А22
	Reshape_4u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:PP2
transpose_5j
	Reshape_5Reshapetranspose_5:y:0Const_3:output:0*
T0*
_output_shapes	
:А22
	Reshape_5u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0*
_output_shapes

:PP2
transpose_6j
	Reshape_6Reshapetranspose_6:y:0Const_3:output:0*
T0*
_output_shapes	
:А22
	Reshape_6j
	Reshape_7Reshapesplit_2:output:1Const_3:output:0*
T0*
_output_shapes
:P2
	Reshape_7j
	Reshape_8Reshapesplit_2:output:0Const_3:output:0*
T0*
_output_shapes
:P2
	Reshape_8j
	Reshape_9Reshapesplit_2:output:2Const_3:output:0*
T0*
_output_shapes
:P2
	Reshape_9l

Reshape_10Reshapesplit_2:output:4Const_3:output:0*
T0*
_output_shapes
:P2

Reshape_10l

Reshape_11Reshapesplit_2:output:3Const_3:output:0*
T0*
_output_shapes
:P2

Reshape_11l

Reshape_12Reshapesplit_2:output:5Const_3:output:0*
T0*
_output_shapes
:P2

Reshape_12\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis╒
concatConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0*
_output_shapes

:╨Ы2
concati
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    2
CudnnRNN/input_c╞
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat:output:0*
T0*8
_output_shapes&
$:fАP:АP: :*
rnn_modegru2

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
strided_slice/stack_2ю
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	АP*
shrink_axis_mask2
strided_slicey
transpose_7/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_7/permГ
transpose_7	TransposeCudnnRNN:output:0transpose_7/perm:output:0*
T0*#
_output_shapes
:АfP2
transpose_7s
SqueezeSqueezeCudnnRNN:output_h:0*
T0*
_output_shapes
:	АP*
squeeze_dims
 2	
Squeezef
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
:	АP2

Identityc

Identity_1Identitytranspose_7:y:0*
T0*#
_output_shapes
:АfP2

Identity_1`

Identity_2IdentitySqueeze:output:0*
T0*
_output_shapes
:	АP2

Identity_2W

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*N
_input_shapes=
;:Аf:	АP:	Ё:	PЁ:	Ё*<
api_implements*(gru_21784482-630b-48c1-9b22-63b152563d78*
api_preferred_deviceGPU*
go_backwards( *

time_major( :K G
#
_output_shapes
:Аf
 
_user_specified_nameinputs:GC

_output_shapes
:	АP
 
_user_specified_nameinit_h:GC

_output_shapes
:	Ё
 
_user_specified_namekernel:QM

_output_shapes
:	PЁ
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	Ё

_user_specified_namebias
ц
┌
A__inference_dense_layer_call_and_return_conditional_losses_183680

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:P
*
dtype02
MatMul/ReadVariableOpk
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	А
2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	А
2	
BiasAddН
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*
_output_shapes
:	А
2

Identity"
identityIdentity:output:0*&
_input_shapes
:	АP::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:G C

_output_shapes
:	АP
 
_user_specified_nameinputs
н=
п
(__inference_gpu_gru_with_fallback_182326

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3Иu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permГ
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
:         P2

ExpandDimsP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimЗ
splitSplitsplit/split_dim:output:0kernel*
T0*2
_output_shapes 
:P:P:P*
	num_split2
splitT
Const_1Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimЧ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*2
_output_shapes 
:PP:PP:PP*
	num_split2	
split_1q
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
         2
Reshape/shapea
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:р2	
ReshapeT
Const_2Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_2h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dimЭ
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*8
_output_shapes&
$:P:P:P:P:P:P*
	num_split2	
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
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0*
_output_shapes

:P2
transpose_1i
	Reshape_1Reshapetranspose_1:y:0Const_3:output:0*
T0*
_output_shapes
:P2
	Reshape_1u
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0*
_output_shapes

:P2
transpose_2i
	Reshape_2Reshapetranspose_2:y:0Const_3:output:0*
T0*
_output_shapes
:P2
	Reshape_2u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:P2
transpose_3i
	Reshape_3Reshapetranspose_3:y:0Const_3:output:0*
T0*
_output_shapes
:P2
	Reshape_3u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm}
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0*
_output_shapes

:PP2
transpose_4j
	Reshape_4Reshapetranspose_4:y:0Const_3:output:0*
T0*
_output_shapes	
:А22
	Reshape_4u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:PP2
transpose_5j
	Reshape_5Reshapetranspose_5:y:0Const_3:output:0*
T0*
_output_shapes	
:А22
	Reshape_5u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0*
_output_shapes

:PP2
transpose_6j
	Reshape_6Reshapetranspose_6:y:0Const_3:output:0*
T0*
_output_shapes	
:А22
	Reshape_6j
	Reshape_7Reshapesplit_2:output:1Const_3:output:0*
T0*
_output_shapes
:P2
	Reshape_7j
	Reshape_8Reshapesplit_2:output:0Const_3:output:0*
T0*
_output_shapes
:P2
	Reshape_8j
	Reshape_9Reshapesplit_2:output:2Const_3:output:0*
T0*
_output_shapes
:P2
	Reshape_9l

Reshape_10Reshapesplit_2:output:4Const_3:output:0*
T0*
_output_shapes
:P2

Reshape_10l

Reshape_11Reshapesplit_2:output:3Const_3:output:0*
T0*
_output_shapes
:P2

Reshape_11l

Reshape_12Reshapesplit_2:output:5Const_3:output:0*
T0*
_output_shapes
:P2

Reshape_12\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis╒
concatConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0*
_output_shapes

:╨Ы2
concati
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    2
CudnnRNN/input_c▀
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat:output:0*
T0*Q
_output_shapes?
=:                  P:         P: :*
rnn_modegru2

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
strided_slice/stack_2Ў
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         P*
shrink_axis_mask2
strided_slicey
transpose_7/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_7/permФ
transpose_7	TransposeCudnnRNN:output:0transpose_7/perm:output:0*
T0*4
_output_shapes"
 :                  P2
transpose_7{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:         P*
squeeze_dims
 2	
Squeezef
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
:         P2

Identityt

Identity_1Identitytranspose_7:y:0*
T0*4
_output_shapes"
 :                  P2

Identity_1h

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:         P2

Identity_2W

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*g
_input_shapesV
T:                  :         P:	Ё:	PЁ:	Ё*<
api_implements*(gru_7537e81a-4edc-4013-9f4b-628ed05efbcd*
api_preferred_deviceGPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs:OK
'
_output_shapes
:         P
 
_user_specified_nameinit_h:GC

_output_shapes
:	Ё
 
_user_specified_namekernel:QM

_output_shapes
:	PЁ
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	Ё

_user_specified_namebias
Рм
╬

:__inference___backward_gpu_gru_with_fallback_183510_183646
placeholder
placeholder_1
placeholder_2
placeholder_3A
=gradients_transpose_7_grad_invertpermutation_transpose_7_perm!
gradients_zeros_like_cudnnrnn#
gradients_zeros_like_1_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims=
9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c3
/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat5
1gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_1=
9gradients_transpose_grad_invertpermutation_transpose_perm)
%gradients_concat_grad_mod_concat_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim
identity

identity_1

identity_2

identity_3

identity_4Иm
gradients/grad_ys_0Identityplaceholder*
T0*
_output_shapes
:	АP2
gradients/grad_ys_0s
gradients/grad_ys_1Identityplaceholder_1*
T0*#
_output_shapes
:АfP2
gradients/grad_ys_1o
gradients/grad_ys_2Identityplaceholder_2*
T0*
_output_shapes
:	АP2
gradients/grad_ys_2f
gradients/grad_ys_3Identityplaceholder_3*
T0*
_output_shapes
: 2
gradients/grad_ys_3Э
"gradients/strided_slice_grad/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"f   А   P   2$
"gradients/strided_slice_grad/Shape┐
3gradients/strided_slice_grad/StridedSliceGrad/shapeConst*
_output_shapes
:*
dtype0*!
valueB"f   А   P   25
3gradients/strided_slice_grad/StridedSliceGrad/shape╜
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
1gradients/strided_slice_grad/StridedSliceGrad/end╕
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
:fАP*
shrink_axis_mask2/
-gradients/strided_slice_grad/StridedSliceGrad╠
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:2.
,gradients/transpose_7_grad/InvertPermutation╫
$gradients/transpose_7_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*#
_output_shapes
:fАP2&
$gradients/transpose_7_grad/transposeС
gradients/Squeeze_grad/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"   А   P   2
gradients/Squeeze_grad/Shape╛
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*#
_output_shapes
:АP2 
gradients/Squeeze_grad/ReshapeГ
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_7_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*#
_output_shapes
:fАP2
gradients/AddNy
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
: 2
gradients/zeros_likeБ
gradients/zeros_like_1	ZerosLikegradients_zeros_like_1_cudnnrnn*
T0*
_output_shapes
:2
gradients/zeros_like_1Ш
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat1gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn3gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_1gradients_zeros_like_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0gradients/zeros_like:y:0gradients_zeros_like_1_cudnnrnn*
T0*<
_output_shapes*
(:fА:АP: :╨Ы*
rnn_modegru2*
(gradients/CudnnRNN_grad/CudnnRNNBackprop─
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:2,
*gradients/transpose_grad/InvertPermutationю
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*#
_output_shapes
:Аf2$
"gradients/transpose_grad/transposeУ
gradients/ExpandDims_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"А   P   2!
gradients/ExpandDims_grad/Shapeт
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*
_output_shapes
:	АP2#
!gradients/ExpandDims_grad/Reshapez
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_grad/Rankп
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_grad/modД
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:P2
gradients/concat_grad/ShapeИ
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:P2
gradients/concat_grad/Shape_1И
gradients/concat_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:P2
gradients/concat_grad/Shape_2Й
gradients/concat_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:А22
gradients/concat_grad/Shape_3Й
gradients/concat_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:А22
gradients/concat_grad/Shape_4Й
gradients/concat_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:А22
gradients/concat_grad/Shape_5И
gradients/concat_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:P2
gradients/concat_grad/Shape_6И
gradients/concat_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:P2
gradients/concat_grad/Shape_7И
gradients/concat_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:P2
gradients/concat_grad/Shape_8И
gradients/concat_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:P2
gradients/concat_grad/Shape_9К
gradients/concat_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:P2 
gradients/concat_grad/Shape_10К
gradients/concat_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:P2 
gradients/concat_grad/Shape_11╛
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0&gradients/concat_grad/Shape_2:output:0&gradients/concat_grad/Shape_3:output:0&gradients/concat_grad/Shape_4:output:0&gradients/concat_grad/Shape_5:output:0&gradients/concat_grad/Shape_6:output:0&gradients/concat_grad/Shape_7:output:0&gradients/concat_grad/Shape_8:output:0&gradients/concat_grad/Shape_9:output:0'gradients/concat_grad/Shape_10:output:0'gradients/concat_grad/Shape_11:output:0*
N*\
_output_shapesJ
H::::::::::::2$
"gradients/concat_grad/ConcatOffsetД
gradients/concat_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes
:P2
gradients/concat_grad/SliceК
gradients/concat_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes
:P2
gradients/concat_grad/Slice_1К
gradients/concat_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:2&gradients/concat_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes
:P2
gradients/concat_grad/Slice_2Л
gradients/concat_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:3&gradients/concat_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:А22
gradients/concat_grad/Slice_3Л
gradients/concat_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:4&gradients/concat_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:А22
gradients/concat_grad/Slice_4Л
gradients/concat_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:5&gradients/concat_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:А22
gradients/concat_grad/Slice_5К
gradients/concat_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:6&gradients/concat_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes
:P2
gradients/concat_grad/Slice_6К
gradients/concat_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:7&gradients/concat_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes
:P2
gradients/concat_grad/Slice_7К
gradients/concat_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:8&gradients/concat_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:P2
gradients/concat_grad/Slice_8К
gradients/concat_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:9&gradients/concat_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:P2
gradients/concat_grad/Slice_9О
gradients/concat_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:10'gradients/concat_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:P2 
gradients/concat_grad/Slice_10О
gradients/concat_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:11'gradients/concat_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:P2 
gradients/concat_grad/Slice_11С
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"P      2 
gradients/Reshape_1_grad/Shape╟
 gradients/Reshape_1_grad/ReshapeReshape$gradients/concat_grad/Slice:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:P2"
 gradients/Reshape_1_grad/ReshapeС
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"P      2 
gradients/Reshape_2_grad/Shape╔
 gradients/Reshape_2_grad/ReshapeReshape&gradients/concat_grad/Slice_1:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:P2"
 gradients/Reshape_2_grad/ReshapeС
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"P      2 
gradients/Reshape_3_grad/Shape╔
 gradients/Reshape_3_grad/ReshapeReshape&gradients/concat_grad/Slice_2:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:P2"
 gradients/Reshape_3_grad/ReshapeС
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"P   P   2 
gradients/Reshape_4_grad/Shape╔
 gradients/Reshape_4_grad/ReshapeReshape&gradients/concat_grad/Slice_3:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:PP2"
 gradients/Reshape_4_grad/ReshapeС
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"P   P   2 
gradients/Reshape_5_grad/Shape╔
 gradients/Reshape_5_grad/ReshapeReshape&gradients/concat_grad/Slice_4:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:PP2"
 gradients/Reshape_5_grad/ReshapeС
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"P   P   2 
gradients/Reshape_6_grad/Shape╔
 gradients/Reshape_6_grad/ReshapeReshape&gradients/concat_grad/Slice_5:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:PP2"
 gradients/Reshape_6_grad/ReshapeК
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:P2 
gradients/Reshape_7_grad/Shape┼
 gradients/Reshape_7_grad/ReshapeReshape&gradients/concat_grad/Slice_6:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes
:P2"
 gradients/Reshape_7_grad/ReshapeК
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:P2 
gradients/Reshape_8_grad/Shape┼
 gradients/Reshape_8_grad/ReshapeReshape&gradients/concat_grad/Slice_7:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:P2"
 gradients/Reshape_8_grad/ReshapeК
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:P2 
gradients/Reshape_9_grad/Shape┼
 gradients/Reshape_9_grad/ReshapeReshape&gradients/concat_grad/Slice_8:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:P2"
 gradients/Reshape_9_grad/ReshapeМ
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:P2!
gradients/Reshape_10_grad/Shape╚
!gradients/Reshape_10_grad/ReshapeReshape&gradients/concat_grad/Slice_9:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:P2#
!gradients/Reshape_10_grad/ReshapeМ
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:P2!
gradients/Reshape_11_grad/Shape╔
!gradients/Reshape_11_grad/ReshapeReshape'gradients/concat_grad/Slice_10:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:P2#
!gradients/Reshape_11_grad/ReshapeМ
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:P2!
gradients/Reshape_12_grad/Shape╔
!gradients/Reshape_12_grad/ReshapeReshape'gradients/concat_grad/Slice_11:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:P2#
!gradients/Reshape_12_grad/Reshape╠
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:2.
,gradients/transpose_1_grad/InvertPermutation▀
$gradients/transpose_1_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:P2&
$gradients/transpose_1_grad/transpose╠
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:2.
,gradients/transpose_2_grad/InvertPermutation▀
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:P2&
$gradients/transpose_2_grad/transpose╠
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:2.
,gradients/transpose_3_grad/InvertPermutation▀
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:P2&
$gradients/transpose_3_grad/transpose╠
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:2.
,gradients/transpose_4_grad/InvertPermutation▀
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:PP2&
$gradients/transpose_4_grad/transpose╠
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:2.
,gradients/transpose_5_grad/InvertPermutation▀
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:PP2&
$gradients/transpose_5_grad/transpose╠
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:2.
,gradients/transpose_6_grad/InvertPermutation▀
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:PP2&
$gradients/transpose_6_grad/transposeп
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_7_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:р2
gradients/split_2_grad/concatд
gradients/split_grad/concatConcatV2(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	Ё2
gradients/split_grad/concatм
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	PЁ2
gradients/split_1_grad/concatН
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   Ё   2
gradients/Reshape_grad/Shape─
gradients/Reshape_grad/ReshapeReshape&gradients/split_2_grad/concat:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	Ё2 
gradients/Reshape_grad/Reshapev
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*#
_output_shapes
:Аf2

Identityz

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*
_output_shapes
:	АP2

Identity_1t

Identity_2Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	Ё2

Identity_2v

Identity_3Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	PЁ2

Identity_3w

Identity_4Identity'gradients/Reshape_grad/Reshape:output:0*
T0*
_output_shapes
:	Ё2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*└
_input_shapesо
л:	АP:АfP:	АP: :: ::fА:АP: :╨Ы:fАP:АP:: ::::::: : : *<
api_implements*(gru_0c988edb-93fc-4a06-b2c6-2b312ba1e1aa*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_gru_with_fallback_183645*
go_backwards( *

time_major( :% !

_output_shapes
:	АP:)%
#
_output_shapes
:АfP:%!

_output_shapes
:	АP:

_output_shapes
: : 

_output_shapes
::

_output_shapes
: :

_output_shapes
::)%
#
_output_shapes
:fА:)%
#
_output_shapes
:АP:	

_output_shapes
: :"


_output_shapes

:╨Ы:)%
#
_output_shapes
:fАP:)%
#
_output_shapes
:АP: 

_output_shapes
::

_output_shapes
: : 

_output_shapes
:: 
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
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
▒C
г
__inference_standard_gru_180873

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3Z
unstackUnpackbias*
T0*"
_output_shapes
:Ё:Ё*	
num2	
unstacku
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permr
	transpose	Transposeinputstranspose/perm:output:0*
T0*#
_output_shapes
:fА2
	transposec
ShapeConst*
_output_shapes
:*
dtype0*!
valueB"f   А      2
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
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceЕ
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
valueB"А      27
5TensorArrayUnstack/TensorListFromTensor/element_shape°
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
strided_slice_1/stack_2Ї
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	А*
shrink_axis_mask2
strided_slice_1g
MatMulMatMulstrided_slice_1:output:0kernel*
T0* 
_output_shapes
:
АЁ2
MatMull
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0* 
_output_shapes
:
АЁ2	
BiasAddP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimФ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*5
_output_shapes#
!:	АP:	АP:	АP*
	num_split2
splitc
MatMul_1MatMulinit_hrecurrent_kernel*
T0* 
_output_shapes
:
АЁ2

MatMul_1r
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0* 
_output_shapes
:
АЁ2
	BiasAdd_1T
Const_1Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimЬ
split_1Splitsplit_1/split_dim:output:0BiasAdd_1:output:0*
T0*5
_output_shapes#
!:	АP:	АP:	АP*
	num_split2	
split_1_
addAddV2split:output:0split_1:output:0*
T0*
_output_shapes
:	АP2
addP
SigmoidSigmoidadd:z:0*
T0*
_output_shapes
:	АP2	
Sigmoidc
add_1AddV2split:output:1split_1:output:1*
T0*
_output_shapes
:	АP2
add_1V
	Sigmoid_1Sigmoid	add_1:z:0*
T0*
_output_shapes
:	АP2
	Sigmoid_1\
mulMulSigmoid_1:y:0split_1:output:2*
T0*
_output_shapes
:	АP2
mulZ
add_2AddV2split:output:2mul:z:0*
T0*
_output_shapes
:	АP2
add_2I
TanhTanh	add_2:z:0*
T0*
_output_shapes
:	АP2
TanhT
mul_1MulSigmoid:y:0init_h*
T0*
_output_shapes
:	АP2
mul_1S
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
sub/xX
subSubsub/x:output:0Sigmoid:y:0*
T0*
_output_shapes
:	АP2
subR
mul_2Mulsub:z:0Tanh:y:0*
T0*
_output_shapes
:	АP2
mul_2W
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*
_output_shapes
:	АP2
add_3П
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"А   P   2
TensorArrayV2_1/element_shape╢
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
while/loop_counterР
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelunstack:output:0recurrent_kernelunstack:output:1*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*O
_output_shapes=
;: : : : :	АP: : :	Ё:Ё:	PЁ:Ё* 
_read_only_resource_inputs
 *
bodyR
while_body_180782*
condR
while_cond_180781*N
output_shapes=
;: : : : :	АP: : :	Ё:Ё:	PЁ:Ё*
parallel_iterations 2
while╡
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"А   P   22
0TensorArrayV2Stack/TensorListStack/element_shapeр
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*#
_output_shapes
:fАP*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
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
strided_slice_2/stack_2Т
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	АP*
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЭ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*#
_output_shapes
:АfP2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  А?2	
runtimed
IdentityIdentitystrided_slice_2:output:0*
T0*
_output_shapes
:	АP2

Identityc

Identity_1Identitytranspose_1:y:0*
T0*#
_output_shapes
:АfP2

Identity_1^

Identity_2Identitywhile:output:4*
T0*
_output_shapes
:	АP2

Identity_2W

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*N
_input_shapes=
;:Аf:	АP:	Ё:	PЁ:	Ё*<
api_implements*(gru_3ac5e4bb-d907-42d9-bec1-6263b3d99645*
api_preferred_deviceCPU*
go_backwards( *

time_major( :K G
#
_output_shapes
:Аf
 
_user_specified_nameinputs:GC

_output_shapes
:	АP
 
_user_specified_nameinit_h:GC

_output_shapes
:	Ё
 
_user_specified_namekernel:QM

_output_shapes
:	PЁ
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	Ё

_user_specified_namebias
шE
г
__inference_standard_gru_180086

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3Z
unstackUnpackbias*
T0*"
_output_shapes
:Ё:Ё*	
num2	
unstacku
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permГ
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
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceЕ
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
5TensorArrayUnstack/TensorListFromTensor/element_shape°
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
strided_slice_1/stack_2№
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
:         Ё2
MatMult
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:         Ё2	
BiasAddP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimм
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*M
_output_shapes;
9:         P:         P:         P*
	num_split2
splitk
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:         Ё2

MatMul_1z
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:         Ё2
	BiasAdd_1T
Const_1Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim┤
split_1Splitsplit_1/split_dim:output:0BiasAdd_1:output:0*
T0*M
_output_shapes;
9:         P:         P:         P*
	num_split2	
split_1g
addAddV2split:output:0split_1:output:0*
T0*'
_output_shapes
:         P2
addX
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:         P2	
Sigmoidk
add_1AddV2split:output:1split_1:output:1*
T0*'
_output_shapes
:         P2
add_1^
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:         P2
	Sigmoid_1d
mulMulSigmoid_1:y:0split_1:output:2*
T0*'
_output_shapes
:         P2
mulb
add_2AddV2split:output:2mul:z:0*
T0*'
_output_shapes
:         P2
add_2Q
TanhTanh	add_2:z:0*
T0*'
_output_shapes
:         P2
Tanh\
mul_1MulSigmoid:y:0init_h*
T0*'
_output_shapes
:         P2
mul_1S
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
sub/x`
subSubsub/x:output:0Sigmoid:y:0*
T0*'
_output_shapes
:         P2
subZ
mul_2Mulsub:z:0Tanh:y:0*
T0*'
_output_shapes
:         P2
mul_2_
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*'
_output_shapes
:         P2
add_3П
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    P   2
TensorArrayV2_1/element_shape╢
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
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelunstack:output:0recurrent_kernelunstack:output:1*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*W
_output_shapesE
C: : : : :         P: : :	Ё:Ё:	PЁ:Ё* 
_read_only_resource_inputs
 *
bodyR
while_body_179995*
condR
while_cond_179994*V
output_shapesE
C: : : : :         P: : :	Ё:Ё:	PЁ:Ё*
parallel_iterations 2
while╡
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    P   22
0TensorArrayV2Stack/TensorListStack/element_shapeё
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  P*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
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
strided_slice_2/stack_2Ъ
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         P*
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permо
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  P2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  А?2	
runtimel
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:         P2

Identityt

Identity_1Identitytranspose_1:y:0*
T0*4
_output_shapes"
 :                  P2

Identity_1f

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:         P2

Identity_2W

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*g
_input_shapesV
T:                  :         P:	Ё:	PЁ:	Ё*<
api_implements*(gru_2ac1db38-e567-4c8c-a714-82beec179340*
api_preferred_deviceCPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs:OK
'
_output_shapes
:         P
 
_user_specified_nameinit_h:GC

_output_shapes
:	Ё
 
_user_specified_namekernel:QM

_output_shapes
:	PЁ
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	Ё

_user_specified_namebias
╫2
т
while_body_179995
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0
while_biasadd_unstack_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_1_unstack_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel
while_biasadd_unstack#
while_matmul_1_recurrent_kernel
while_biasadd_1_unstack├
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       29
7while/TensorArrayV2Read/TensorListGetItem/element_shape╙
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemв
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:         Ё2
while/MatMulН
while/BiasAddBiasAddwhile/MatMul:product:0while_biasadd_unstack_0*
T0*(
_output_shapes
:         Ё2
while/BiasAdd\
while/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/Constp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dim─
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*M
_output_shapes;
9:         P:         P:         P*
	num_split2
while/splitХ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:         Ё2
while/MatMul_1Х
while/BiasAdd_1BiasAddwhile/MatMul_1:product:0while_biasadd_1_unstack_0*
T0*(
_output_shapes
:         Ё2
while/BiasAdd_1`
while/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
while/Const_1t
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split_1/split_dim╠
while/split_1Split while/split_1/split_dim:output:0while/BiasAdd_1:output:0*
T0*M
_output_shapes;
9:         P:         P:         P*
	num_split2
while/split_1
	while/addAddV2while/split:output:0while/split_1:output:0*
T0*'
_output_shapes
:         P2
	while/addj
while/SigmoidSigmoidwhile/add:z:0*
T0*'
_output_shapes
:         P2
while/SigmoidГ
while/add_1AddV2while/split:output:1while/split_1:output:1*
T0*'
_output_shapes
:         P2
while/add_1p
while/Sigmoid_1Sigmoidwhile/add_1:z:0*
T0*'
_output_shapes
:         P2
while/Sigmoid_1|
	while/mulMulwhile/Sigmoid_1:y:0while/split_1:output:2*
T0*'
_output_shapes
:         P2
	while/mulz
while/add_2AddV2while/split:output:2while/mul:z:0*
T0*'
_output_shapes
:         P2
while/add_2c

while/TanhTanhwhile/add_2:z:0*
T0*'
_output_shapes
:         P2

while/Tanh{
while/mul_1Mulwhile/Sigmoid:y:0while_placeholder_2*
T0*'
_output_shapes
:         P2
while/mul_1_
while/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
while/sub/xx
	while/subSubwhile/sub/x:output:0while/Sigmoid:y:0*
T0*'
_output_shapes
:         P2
	while/subr
while/mul_2Mulwhile/sub:z:0while/Tanh:y:0*
T0*'
_output_shapes
:         P2
while/mul_2w
while/add_3AddV2while/mul_1:z:0while/mul_2:z:0*
T0*'
_output_shapes
:         P2
while/add_3╙
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/add_3:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem`
while/add_4/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_4/yo
while/add_4AddV2while_placeholderwhile/add_4/y:output:0*
T0*
_output_shapes
: 2
while/add_4`
while/add_5/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_5/yv
while/add_5AddV2while_while_loop_counterwhile/add_5/y:output:0*
T0*
_output_shapes
: 2
while/add_5^
while/IdentityIdentitywhile/add_5:z:0*
T0*
_output_shapes
: 2
while/Identityq
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: 2
while/Identity_1b
while/Identity_2Identitywhile/add_4:z:0*
T0*
_output_shapes
: 2
while/Identity_2Н
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: 2
while/Identity_3s
while/Identity_4Identitywhile/add_3:z:0*
T0*'
_output_shapes
:         P2
while/Identity_4"4
while_biasadd_1_unstackwhile_biasadd_1_unstack_0"0
while_biasadd_unstackwhile_biasadd_unstack_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*V
_input_shapesE
C: : : : :         P: : :	Ё:Ё:	PЁ:Ё: 
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
:         P:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	Ё:!

_output_shapes	
:Ё:%	!

_output_shapes
:	PЁ:!


_output_shapes	
:Ё
ЭG
╝
&__forward_gpu_gru_with_fallback_182849

inputs
init_h_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3
cudnnrnn
transpose_7_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
cudnnrnn_input_c

concat
transpose_perm

init_h
concat_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
split_2_split_dim
split_split_dim
split_1_split_dimИu
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
:         P2

ExpandDimsP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimЗ
splitSplitsplit/split_dim:output:0kernel*
T0*2
_output_shapes 
:P:P:P*
	num_split2
splitT
Const_1Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimЧ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*2
_output_shapes 
:PP:PP:PP*
	num_split2	
split_1q
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
         2
Reshape/shapea
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:р2	
ReshapeT
Const_2Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_2h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dimЭ
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*8
_output_shapes&
$:P:P:P:P:P:P*
	num_split2	
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
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0*
_output_shapes

:P2
transpose_1i
	Reshape_1Reshapetranspose_1:y:0Const_3:output:0*
T0*
_output_shapes
:P2
	Reshape_1u
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0*
_output_shapes

:P2
transpose_2i
	Reshape_2Reshapetranspose_2:y:0Const_3:output:0*
T0*
_output_shapes
:P2
	Reshape_2u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:P2
transpose_3i
	Reshape_3Reshapetranspose_3:y:0Const_3:output:0*
T0*
_output_shapes
:P2
	Reshape_3u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm}
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0*
_output_shapes

:PP2
transpose_4j
	Reshape_4Reshapetranspose_4:y:0Const_3:output:0*
T0*
_output_shapes	
:А22
	Reshape_4u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:PP2
transpose_5j
	Reshape_5Reshapetranspose_5:y:0Const_3:output:0*
T0*
_output_shapes	
:А22
	Reshape_5u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0*
_output_shapes

:PP2
transpose_6j
	Reshape_6Reshapetranspose_6:y:0Const_3:output:0*
T0*
_output_shapes	
:А22
	Reshape_6j
	Reshape_7Reshapesplit_2:output:1Const_3:output:0*
T0*
_output_shapes
:P2
	Reshape_7j
	Reshape_8Reshapesplit_2:output:0Const_3:output:0*
T0*
_output_shapes
:P2
	Reshape_8j
	Reshape_9Reshapesplit_2:output:2Const_3:output:0*
T0*
_output_shapes
:P2
	Reshape_9l

Reshape_10Reshapesplit_2:output:4Const_3:output:0*
T0*
_output_shapes
:P2

Reshape_10l

Reshape_11Reshapesplit_2:output:3Const_3:output:0*
T0*
_output_shapes
:P2

Reshape_11l

Reshape_12Reshapesplit_2:output:5Const_3:output:0*
T0*
_output_shapes
:P2

Reshape_12\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis╣
concat_0ConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T02
concati
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    2
CudnnRNN/input_cу
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat_0:output:0*
T0*Q
_output_shapes?
=:                  P:         P: :*
rnn_modegru2

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
strided_slice/stack_2Ў
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         P*
shrink_axis_mask2
strided_slicey
transpose_7/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_7/permФ
transpose_7	TransposeCudnnRNN:output:0transpose_7/perm:output:0*
T0*4
_output_shapes"
 :                  P2
transpose_7{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:         P*
squeeze_dims
 2	
Squeezef
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
:         P2

Identityt

Identity_1Identitytranspose_7:y:0*
T0*4
_output_shapes"
 :                  P2

Identity_1h

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:         P2

Identity_2W

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_3"
concatconcat_0:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"-
cudnnrnn_input_cCudnnRNN/input_c:output:0"!

expanddimsExpandDims:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"
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
transpose_7_permtranspose_7/perm:output:0")
transpose_permtranspose/perm:output:0*g
_input_shapesV
T:                  :         P:	Ё:	PЁ:	Ё*<
api_implements*(gru_60e5b8f7-db2b-490b-9f7d-d80a2ddf94dc*
api_preferred_deviceGPU*V
backward_function_name<:__inference___backward_gpu_gru_with_fallback_182714_182850*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs:OK
'
_output_shapes
:         P
 
_user_specified_nameinit_h:GC

_output_shapes
:	Ё
 
_user_specified_namekernel:QM

_output_shapes
:	PЁ
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	Ё

_user_specified_namebias
╒
■
?__inference_gru_layer_call_and_return_conditional_losses_181148
input_1
input_2

gru_181114

gru_181116

gru_181118
dense_181142
dense_181144
identityИвdense/StatefulPartitionedCallвgru/StatefulPartitionedCallВ
gru/StatefulPartitionedCallStatefulPartitionedCallinput_1
gru_181114
gru_181116
gru_181118*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:	АP*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_gru_layer_call_and_return_conditional_losses_1807042
gru/StatefulPartitionedCallЫ
dense/StatefulPartitionedCallStatefulPartitionedCall$gru/StatefulPartitionedCall:output:0dense_181142dense_181144*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:	А
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_1811312
dense/StatefulPartitionedCall░
IdentityIdentity&dense/StatefulPartitionedCall:output:0^dense/StatefulPartitionedCall^gru/StatefulPartitionedCall*
T0*
_output_shapes
:	А
2

Identity"
identityIdentity:output:0*E
_input_shapes4
2:Аf:Аf:::::2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2:
gru/StatefulPartitionedCallgru/StatefulPartitionedCall:L H
#
_output_shapes
:Аf
!
_user_specified_name	input_1:LH
#
_output_shapes
:Аf
!
_user_specified_name	input_2
Ш
╢
$__inference_gru_layer_call_fn_182062
inputs_0
inputs_1
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
identityИвStatefulPartitionedCallЫ
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin
	2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:	А
*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_gru_layer_call_and_return_conditional_losses_1811862
StatefulPartitionedCallЖ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*
_output_shapes
:	А
2

Identity"
identityIdentity:output:0*E
_input_shapes4
2:Аf:Аf:::::22
StatefulPartitionedCallStatefulPartitionedCall:M I
#
_output_shapes
:Аf
"
_user_specified_name
inputs/0:MI
#
_output_shapes
:Аf
"
_user_specified_name
inputs/1
Ж	
▐
while_cond_182542
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice4
0while_while_cond_182542___redundant_placeholder04
0while_while_cond_182542___redundant_placeholder14
0while_while_cond_182542___redundant_placeholder24
0while_while_cond_182542___redundant_placeholder34
0while_while_cond_182542___redundant_placeholder4
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
while_identitywhile/Identity:output:0*D
_input_shapes3
1: : : : :         P: :::::: 
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
:         P:

_output_shapes
: :

_output_shapes
::
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
▒C
г
__inference_standard_gru_183430

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3Z
unstackUnpackbias*
T0*"
_output_shapes
:Ё:Ё*	
num2	
unstacku
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permr
	transpose	Transposeinputstranspose/perm:output:0*
T0*#
_output_shapes
:fА2
	transposec
ShapeConst*
_output_shapes
:*
dtype0*!
valueB"f   А      2
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
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceЕ
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
valueB"А      27
5TensorArrayUnstack/TensorListFromTensor/element_shape°
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
strided_slice_1/stack_2Ї
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	А*
shrink_axis_mask2
strided_slice_1g
MatMulMatMulstrided_slice_1:output:0kernel*
T0* 
_output_shapes
:
АЁ2
MatMull
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0* 
_output_shapes
:
АЁ2	
BiasAddP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimФ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*5
_output_shapes#
!:	АP:	АP:	АP*
	num_split2
splitc
MatMul_1MatMulinit_hrecurrent_kernel*
T0* 
_output_shapes
:
АЁ2

MatMul_1r
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0* 
_output_shapes
:
АЁ2
	BiasAdd_1T
Const_1Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimЬ
split_1Splitsplit_1/split_dim:output:0BiasAdd_1:output:0*
T0*5
_output_shapes#
!:	АP:	АP:	АP*
	num_split2	
split_1_
addAddV2split:output:0split_1:output:0*
T0*
_output_shapes
:	АP2
addP
SigmoidSigmoidadd:z:0*
T0*
_output_shapes
:	АP2	
Sigmoidc
add_1AddV2split:output:1split_1:output:1*
T0*
_output_shapes
:	АP2
add_1V
	Sigmoid_1Sigmoid	add_1:z:0*
T0*
_output_shapes
:	АP2
	Sigmoid_1\
mulMulSigmoid_1:y:0split_1:output:2*
T0*
_output_shapes
:	АP2
mulZ
add_2AddV2split:output:2mul:z:0*
T0*
_output_shapes
:	АP2
add_2I
TanhTanh	add_2:z:0*
T0*
_output_shapes
:	АP2
TanhT
mul_1MulSigmoid:y:0init_h*
T0*
_output_shapes
:	АP2
mul_1S
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
sub/xX
subSubsub/x:output:0Sigmoid:y:0*
T0*
_output_shapes
:	АP2
subR
mul_2Mulsub:z:0Tanh:y:0*
T0*
_output_shapes
:	АP2
mul_2W
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*
_output_shapes
:	АP2
add_3П
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"А   P   2
TensorArrayV2_1/element_shape╢
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
while/loop_counterР
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelunstack:output:0recurrent_kernelunstack:output:1*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*O
_output_shapes=
;: : : : :	АP: : :	Ё:Ё:	PЁ:Ё* 
_read_only_resource_inputs
 *
bodyR
while_body_183339*
condR
while_cond_183338*N
output_shapes=
;: : : : :	АP: : :	Ё:Ё:	PЁ:Ё*
parallel_iterations 2
while╡
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"А   P   22
0TensorArrayV2Stack/TensorListStack/element_shapeр
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*#
_output_shapes
:fАP*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
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
strided_slice_2/stack_2Т
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	АP*
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЭ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*#
_output_shapes
:АfP2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  А?2	
runtimed
IdentityIdentitystrided_slice_2:output:0*
T0*
_output_shapes
:	АP2

Identityc

Identity_1Identitytranspose_1:y:0*
T0*#
_output_shapes
:АfP2

Identity_1^

Identity_2Identitywhile:output:4*
T0*
_output_shapes
:	АP2

Identity_2W

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*N
_input_shapes=
;:Аf:	АP:	Ё:	PЁ:	Ё*<
api_implements*(gru_0c988edb-93fc-4a06-b2c6-2b312ba1e1aa*
api_preferred_deviceCPU*
go_backwards( *

time_major( :K G
#
_output_shapes
:Аf
 
_user_specified_nameinputs:GC

_output_shapes
:	АP
 
_user_specified_nameinit_h:GC

_output_shapes
:	Ё
 
_user_specified_namekernel:QM

_output_shapes
:	PЁ
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	Ё

_user_specified_namebias
фE
о
&__forward_gpu_gru_with_fallback_180701

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3
transpose_7_perm
cudnnrnn

cudnnrnn_0
	transpose

expanddims
cudnnrnn_input_c

concat

cudnnrnn_1

cudnnrnn_2
transpose_perm
concat_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
split_2_split_dim
split_split_dim
split_1_split_dimИu
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
:АP2

ExpandDimsP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimЗ
splitSplitsplit/split_dim:output:0kernel*
T0*2
_output_shapes 
:P:P:P*
	num_split2
splitT
Const_1Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimЧ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*2
_output_shapes 
:PP:PP:PP*
	num_split2	
split_1q
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
         2
Reshape/shapea
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:р2	
ReshapeT
Const_2Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_2h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dimЭ
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*8
_output_shapes&
$:P:P:P:P:P:P*
	num_split2	
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
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0*
_output_shapes

:P2
transpose_1i
	Reshape_1Reshapetranspose_1:y:0Const_3:output:0*
T0*
_output_shapes
:P2
	Reshape_1u
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0*
_output_shapes

:P2
transpose_2i
	Reshape_2Reshapetranspose_2:y:0Const_3:output:0*
T0*
_output_shapes
:P2
	Reshape_2u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:P2
transpose_3i
	Reshape_3Reshapetranspose_3:y:0Const_3:output:0*
T0*
_output_shapes
:P2
	Reshape_3u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm}
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0*
_output_shapes

:PP2
transpose_4j
	Reshape_4Reshapetranspose_4:y:0Const_3:output:0*
T0*
_output_shapes	
:А22
	Reshape_4u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:PP2
transpose_5j
	Reshape_5Reshapetranspose_5:y:0Const_3:output:0*
T0*
_output_shapes	
:А22
	Reshape_5u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0*
_output_shapes

:PP2
transpose_6j
	Reshape_6Reshapetranspose_6:y:0Const_3:output:0*
T0*
_output_shapes	
:А22
	Reshape_6j
	Reshape_7Reshapesplit_2:output:1Const_3:output:0*
T0*
_output_shapes
:P2
	Reshape_7j
	Reshape_8Reshapesplit_2:output:0Const_3:output:0*
T0*
_output_shapes
:P2
	Reshape_8j
	Reshape_9Reshapesplit_2:output:2Const_3:output:0*
T0*
_output_shapes
:P2
	Reshape_9l

Reshape_10Reshapesplit_2:output:4Const_3:output:0*
T0*
_output_shapes
:P2

Reshape_10l

Reshape_11Reshapesplit_2:output:3Const_3:output:0*
T0*
_output_shapes
:P2

Reshape_11l

Reshape_12Reshapesplit_2:output:5Const_3:output:0*
T0*
_output_shapes
:P2

Reshape_12\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis╣
concat_0ConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T02
concati
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    2
CudnnRNN/input_c╩
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat_0:output:0*
T0*8
_output_shapes&
$:fАP:АP: :*
rnn_modegru2

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
strided_slice/stack_2ю
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	АP*
shrink_axis_mask2
strided_slicey
transpose_7/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_7/permГ
transpose_7	TransposeCudnnRNN:output:0transpose_7/perm:output:0*
T0*#
_output_shapes
:АfP2
transpose_7s
SqueezeSqueezeCudnnRNN:output_h:0*
T0*
_output_shapes
:	АP*
squeeze_dims
 2	
Squeezef
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
:	АP2

Identityc

Identity_1Identitytranspose_7:y:0*
T0*#
_output_shapes
:АfP2

Identity_1`

Identity_2IdentitySqueeze:output:0*
T0*
_output_shapes
:	АP2

Identity_2W

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_3"
concatconcat_0:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output_c:0"&

cudnnrnn_0CudnnRNN:reserve_space:0"

cudnnrnn_1CudnnRNN:output:0"!

cudnnrnn_2CudnnRNN:output_h:0"-
cudnnrnn_input_cCudnnRNN/input_c:output:0"!

expanddimsExpandDims:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"/
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
transpose_7_permtranspose_7/perm:output:0")
transpose_permtranspose/perm:output:0*N
_input_shapes=
;:Аf:	АP:	Ё:	PЁ:	Ё*<
api_implements*(gru_b781c3ab-c21d-4d02-9879-c227062151d0*
api_preferred_deviceGPU*V
backward_function_name<:__inference___backward_gpu_gru_with_fallback_180566_180702*
go_backwards( *

time_major( :K G
#
_output_shapes
:Аf
 
_user_specified_nameinputs:GC

_output_shapes
:	АP
 
_user_specified_nameinit_h:GC

_output_shapes
:	Ё
 
_user_specified_namekernel:QM

_output_shapes
:	PЁ
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	Ё

_user_specified_namebias
д
Р
?__inference_gru_layer_call_and_return_conditional_losses_180304

inputs 
read_readvariableop_resource"
read_1_readvariableop_resource"
read_2_readvariableop_resource

identity_3ИвRead/ReadVariableOpвRead_1/ReadVariableOpвRead_2/ReadVariableOpD
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
strided_slice/stack_2т
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
value	B :P2
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
B :ш2
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
value	B :P2
zeros/packed/1Г
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
:         P2
zerosИ
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	Ё*
dtype02
Read/ReadVariableOpg
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	Ё2

IdentityО
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes
:	PЁ*
dtype02
Read_1/ReadVariableOpm

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	PЁ2

Identity_1О
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes
:	Ё*
dtype02
Read_2/ReadVariableOpm

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes
:	Ё2

Identity_2ж
PartitionedCallPartitionedCallinputszeros:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *\
_output_shapesJ
H:         P:                  P:         P: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *(
f#R!
__inference_standard_gru_1800862
PartitionedCall╢

Identity_3IdentityPartitionedCall:output:0^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*
T0*'
_output_shapes
:         P2

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
Ё
Р
?__inference_gru_layer_call_and_return_conditional_losses_181091

inputs 
read_readvariableop_resource"
read_1_readvariableop_resource"
read_2_readvariableop_resource

identity_3ИвRead/ReadVariableOpвRead_1/ReadVariableOpвRead_2/ReadVariableOpc
ShapeConst*
_output_shapes
:*
dtype0*!
valueB"А   f      2
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
strided_slice/stack_2т
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
value	B :P2
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
B :ш2
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
value	B :P2
zeros/packed/1Г
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
:	АP2
zerosИ
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	Ё*
dtype02
Read/ReadVariableOpg
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	Ё2

IdentityО
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes
:	PЁ*
dtype02
Read_1/ReadVariableOpm

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	PЁ2

Identity_1О
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes
:	Ё*
dtype02
Read_2/ReadVariableOpm

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes
:	Ё2

Identity_2Е
PartitionedCallPartitionedCallinputszeros:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *;
_output_shapes)
':	АP:АfP:	АP: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *(
f#R!
__inference_standard_gru_1808732
PartitionedCallо

Identity_3IdentityPartitionedCall:output:0^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*
T0*
_output_shapes
:	АP2

Identity_3"!

identity_3Identity_3:output:0*.
_input_shapes
:Аf:::2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:K G
#
_output_shapes
:Аf
 
_user_specified_nameinputs
╫2
т
while_body_182156
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0
while_biasadd_unstack_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_1_unstack_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel
while_biasadd_unstack#
while_matmul_1_recurrent_kernel
while_biasadd_1_unstack├
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       29
7while/TensorArrayV2Read/TensorListGetItem/element_shape╙
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemв
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:         Ё2
while/MatMulН
while/BiasAddBiasAddwhile/MatMul:product:0while_biasadd_unstack_0*
T0*(
_output_shapes
:         Ё2
while/BiasAdd\
while/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/Constp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dim─
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*M
_output_shapes;
9:         P:         P:         P*
	num_split2
while/splitХ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:         Ё2
while/MatMul_1Х
while/BiasAdd_1BiasAddwhile/MatMul_1:product:0while_biasadd_1_unstack_0*
T0*(
_output_shapes
:         Ё2
while/BiasAdd_1`
while/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
while/Const_1t
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split_1/split_dim╠
while/split_1Split while/split_1/split_dim:output:0while/BiasAdd_1:output:0*
T0*M
_output_shapes;
9:         P:         P:         P*
	num_split2
while/split_1
	while/addAddV2while/split:output:0while/split_1:output:0*
T0*'
_output_shapes
:         P2
	while/addj
while/SigmoidSigmoidwhile/add:z:0*
T0*'
_output_shapes
:         P2
while/SigmoidГ
while/add_1AddV2while/split:output:1while/split_1:output:1*
T0*'
_output_shapes
:         P2
while/add_1p
while/Sigmoid_1Sigmoidwhile/add_1:z:0*
T0*'
_output_shapes
:         P2
while/Sigmoid_1|
	while/mulMulwhile/Sigmoid_1:y:0while/split_1:output:2*
T0*'
_output_shapes
:         P2
	while/mulz
while/add_2AddV2while/split:output:2while/mul:z:0*
T0*'
_output_shapes
:         P2
while/add_2c

while/TanhTanhwhile/add_2:z:0*
T0*'
_output_shapes
:         P2

while/Tanh{
while/mul_1Mulwhile/Sigmoid:y:0while_placeholder_2*
T0*'
_output_shapes
:         P2
while/mul_1_
while/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
while/sub/xx
	while/subSubwhile/sub/x:output:0while/Sigmoid:y:0*
T0*'
_output_shapes
:         P2
	while/subr
while/mul_2Mulwhile/sub:z:0while/Tanh:y:0*
T0*'
_output_shapes
:         P2
while/mul_2w
while/add_3AddV2while/mul_1:z:0while/mul_2:z:0*
T0*'
_output_shapes
:         P2
while/add_3╙
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/add_3:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem`
while/add_4/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_4/yo
while/add_4AddV2while_placeholderwhile/add_4/y:output:0*
T0*
_output_shapes
: 2
while/add_4`
while/add_5/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_5/yv
while/add_5AddV2while_while_loop_counterwhile/add_5/y:output:0*
T0*
_output_shapes
: 2
while/add_5^
while/IdentityIdentitywhile/add_5:z:0*
T0*
_output_shapes
: 2
while/Identityq
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: 2
while/Identity_1b
while/Identity_2Identitywhile/add_4:z:0*
T0*
_output_shapes
: 2
while/Identity_2Н
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: 2
while/Identity_3s
while/Identity_4Identitywhile/add_3:z:0*
T0*'
_output_shapes
:         P2
while/Identity_4"4
while_biasadd_1_unstackwhile_biasadd_1_unstack_0"0
while_biasadd_unstackwhile_biasadd_unstack_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*V
_input_shapesE
C: : : : :         P: : :	Ё:Ё:	PЁ:Ё: 
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
:         P:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	Ё:!

_output_shapes	
:Ё:%	!

_output_shapes
:	PЁ:!


_output_shapes	
:Ё
ЭG
╝
&__forward_gpu_gru_with_fallback_180301

inputs
init_h_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3
cudnnrnn
transpose_7_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
cudnnrnn_input_c

concat
transpose_perm

init_h
concat_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
split_2_split_dim
split_split_dim
split_1_split_dimИu
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
:         P2

ExpandDimsP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimЗ
splitSplitsplit/split_dim:output:0kernel*
T0*2
_output_shapes 
:P:P:P*
	num_split2
splitT
Const_1Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimЧ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*2
_output_shapes 
:PP:PP:PP*
	num_split2	
split_1q
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
         2
Reshape/shapea
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:р2	
ReshapeT
Const_2Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_2h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dimЭ
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*8
_output_shapes&
$:P:P:P:P:P:P*
	num_split2	
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
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0*
_output_shapes

:P2
transpose_1i
	Reshape_1Reshapetranspose_1:y:0Const_3:output:0*
T0*
_output_shapes
:P2
	Reshape_1u
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0*
_output_shapes

:P2
transpose_2i
	Reshape_2Reshapetranspose_2:y:0Const_3:output:0*
T0*
_output_shapes
:P2
	Reshape_2u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:P2
transpose_3i
	Reshape_3Reshapetranspose_3:y:0Const_3:output:0*
T0*
_output_shapes
:P2
	Reshape_3u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm}
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0*
_output_shapes

:PP2
transpose_4j
	Reshape_4Reshapetranspose_4:y:0Const_3:output:0*
T0*
_output_shapes	
:А22
	Reshape_4u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:PP2
transpose_5j
	Reshape_5Reshapetranspose_5:y:0Const_3:output:0*
T0*
_output_shapes	
:А22
	Reshape_5u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0*
_output_shapes

:PP2
transpose_6j
	Reshape_6Reshapetranspose_6:y:0Const_3:output:0*
T0*
_output_shapes	
:А22
	Reshape_6j
	Reshape_7Reshapesplit_2:output:1Const_3:output:0*
T0*
_output_shapes
:P2
	Reshape_7j
	Reshape_8Reshapesplit_2:output:0Const_3:output:0*
T0*
_output_shapes
:P2
	Reshape_8j
	Reshape_9Reshapesplit_2:output:2Const_3:output:0*
T0*
_output_shapes
:P2
	Reshape_9l

Reshape_10Reshapesplit_2:output:4Const_3:output:0*
T0*
_output_shapes
:P2

Reshape_10l

Reshape_11Reshapesplit_2:output:3Const_3:output:0*
T0*
_output_shapes
:P2

Reshape_11l

Reshape_12Reshapesplit_2:output:5Const_3:output:0*
T0*
_output_shapes
:P2

Reshape_12\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis╣
concat_0ConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T02
concati
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    2
CudnnRNN/input_cу
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat_0:output:0*
T0*Q
_output_shapes?
=:                  P:         P: :*
rnn_modegru2

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
strided_slice/stack_2Ў
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         P*
shrink_axis_mask2
strided_slicey
transpose_7/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_7/permФ
transpose_7	TransposeCudnnRNN:output:0transpose_7/perm:output:0*
T0*4
_output_shapes"
 :                  P2
transpose_7{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:         P*
squeeze_dims
 2	
Squeezef
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
:         P2

Identityt

Identity_1Identitytranspose_7:y:0*
T0*4
_output_shapes"
 :                  P2

Identity_1h

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:         P2

Identity_2W

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_3"
concatconcat_0:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"-
cudnnrnn_input_cCudnnRNN/input_c:output:0"!

expanddimsExpandDims:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"
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
transpose_7_permtranspose_7/perm:output:0")
transpose_permtranspose/perm:output:0*g
_input_shapesV
T:                  :         P:	Ё:	PЁ:	Ё*<
api_implements*(gru_2ac1db38-e567-4c8c-a714-82beec179340*
api_preferred_deviceGPU*V
backward_function_name<:__inference___backward_gpu_gru_with_fallback_180166_180302*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs:OK
'
_output_shapes
:         P
 
_user_specified_nameinit_h:GC

_output_shapes
:	Ё
 
_user_specified_namekernel:QM

_output_shapes
:	PЁ
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	Ё

_user_specified_namebias
█
И
$__inference_gru_layer_call_fn_183670

inputs
unknown
	unknown_0
	unknown_1
identityИвStatefulPartitionedCallЇ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:	АP*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_gru_layer_call_and_return_conditional_losses_1810912
StatefulPartitionedCallЖ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*
_output_shapes
:	АP2

Identity"
identityIdentity:output:0*.
_input_shapes
:Аf:::22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:Аf
 
_user_specified_nameinputs
▒C
г
__inference_standard_gru_181428

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3Z
unstackUnpackbias*
T0*"
_output_shapes
:Ё:Ё*	
num2	
unstacku
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permr
	transpose	Transposeinputstranspose/perm:output:0*
T0*#
_output_shapes
:fА2
	transposec
ShapeConst*
_output_shapes
:*
dtype0*!
valueB"f   А      2
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
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceЕ
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
valueB"А      27
5TensorArrayUnstack/TensorListFromTensor/element_shape°
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
strided_slice_1/stack_2Ї
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	А*
shrink_axis_mask2
strided_slice_1g
MatMulMatMulstrided_slice_1:output:0kernel*
T0* 
_output_shapes
:
АЁ2
MatMull
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0* 
_output_shapes
:
АЁ2	
BiasAddP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimФ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*5
_output_shapes#
!:	АP:	АP:	АP*
	num_split2
splitc
MatMul_1MatMulinit_hrecurrent_kernel*
T0* 
_output_shapes
:
АЁ2

MatMul_1r
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0* 
_output_shapes
:
АЁ2
	BiasAdd_1T
Const_1Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimЬ
split_1Splitsplit_1/split_dim:output:0BiasAdd_1:output:0*
T0*5
_output_shapes#
!:	АP:	АP:	АP*
	num_split2	
split_1_
addAddV2split:output:0split_1:output:0*
T0*
_output_shapes
:	АP2
addP
SigmoidSigmoidadd:z:0*
T0*
_output_shapes
:	АP2	
Sigmoidc
add_1AddV2split:output:1split_1:output:1*
T0*
_output_shapes
:	АP2
add_1V
	Sigmoid_1Sigmoid	add_1:z:0*
T0*
_output_shapes
:	АP2
	Sigmoid_1\
mulMulSigmoid_1:y:0split_1:output:2*
T0*
_output_shapes
:	АP2
mulZ
add_2AddV2split:output:2mul:z:0*
T0*
_output_shapes
:	АP2
add_2I
TanhTanh	add_2:z:0*
T0*
_output_shapes
:	АP2
TanhT
mul_1MulSigmoid:y:0init_h*
T0*
_output_shapes
:	АP2
mul_1S
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2
sub/xX
subSubsub/x:output:0Sigmoid:y:0*
T0*
_output_shapes
:	АP2
subR
mul_2Mulsub:z:0Tanh:y:0*
T0*
_output_shapes
:	АP2
mul_2W
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*
_output_shapes
:	АP2
add_3П
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"А   P   2
TensorArrayV2_1/element_shape╢
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
while/loop_counterР
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelunstack:output:0recurrent_kernelunstack:output:1*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*O
_output_shapes=
;: : : : :	АP: : :	Ё:Ё:	PЁ:Ё* 
_read_only_resource_inputs
 *
bodyR
while_body_181337*
condR
while_cond_181336*N
output_shapes=
;: : : : :	АP: : :	Ё:Ё:	PЁ:Ё*
parallel_iterations 2
while╡
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"А   P   22
0TensorArrayV2Stack/TensorListStack/element_shapeр
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*#
_output_shapes
:fАP*
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
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
strided_slice_2/stack_2Т
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	АP*
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЭ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*#
_output_shapes
:АfP2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  А?2	
runtimed
IdentityIdentitystrided_slice_2:output:0*
T0*
_output_shapes
:	АP2

Identityc

Identity_1Identitytranspose_1:y:0*
T0*#
_output_shapes
:АfP2

Identity_1^

Identity_2Identitywhile:output:4*
T0*
_output_shapes
:	АP2

Identity_2W

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*N
_input_shapes=
;:Аf:	АP:	Ё:	PЁ:	Ё*<
api_implements*(gru_97a25323-5f73-47b1-8c97-356824aa4592*
api_preferred_deviceCPU*
go_backwards( *

time_major( :K G
#
_output_shapes
:Аf
 
_user_specified_nameinputs:GC

_output_shapes
:	АP
 
_user_specified_nameinit_h:GC

_output_shapes
:	Ё
 
_user_specified_namekernel:QM

_output_shapes
:	PЁ
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	Ё

_user_specified_namebias
╥
■
?__inference_gru_layer_call_and_return_conditional_losses_181186

inputs
inputs_1

gru_181173

gru_181175

gru_181177
dense_181180
dense_181182
identityИвdense/StatefulPartitionedCallвgru/StatefulPartitionedCallБ
gru/StatefulPartitionedCallStatefulPartitionedCallinputs
gru_181173
gru_181175
gru_181177*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:	АP*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_gru_layer_call_and_return_conditional_losses_1807042
gru/StatefulPartitionedCallЫ
dense/StatefulPartitionedCallStatefulPartitionedCall$gru/StatefulPartitionedCall:output:0dense_181180dense_181182*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:	А
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_1811312
dense/StatefulPartitionedCall░
IdentityIdentity&dense/StatefulPartitionedCall:output:0^dense/StatefulPartitionedCall^gru/StatefulPartitionedCall*
T0*
_output_shapes
:	А
2

Identity"
identityIdentity:output:0*E
_input_shapes4
2:Аf:Аf:::::2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2:
gru/StatefulPartitionedCallgru/StatefulPartitionedCall:K G
#
_output_shapes
:Аf
 
_user_specified_nameinputs:KG
#
_output_shapes
:Аf
 
_user_specified_nameinputs
Ж<
п
(__inference_gpu_gru_with_fallback_183509

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3Иu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permr
	transpose	Transposeinputstranspose/perm:output:0*
T0*#
_output_shapes
:fА2
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
:АP2

ExpandDimsP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimЗ
splitSplitsplit/split_dim:output:0kernel*
T0*2
_output_shapes 
:P:P:P*
	num_split2
splitT
Const_1Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimЧ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*2
_output_shapes 
:PP:PP:PP*
	num_split2	
split_1q
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
         2
Reshape/shapea
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:р2	
ReshapeT
Const_2Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_2h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dimЭ
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*8
_output_shapes&
$:P:P:P:P:P:P*
	num_split2	
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
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0*
_output_shapes

:P2
transpose_1i
	Reshape_1Reshapetranspose_1:y:0Const_3:output:0*
T0*
_output_shapes
:P2
	Reshape_1u
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0*
_output_shapes

:P2
transpose_2i
	Reshape_2Reshapetranspose_2:y:0Const_3:output:0*
T0*
_output_shapes
:P2
	Reshape_2u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:P2
transpose_3i
	Reshape_3Reshapetranspose_3:y:0Const_3:output:0*
T0*
_output_shapes
:P2
	Reshape_3u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm}
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0*
_output_shapes

:PP2
transpose_4j
	Reshape_4Reshapetranspose_4:y:0Const_3:output:0*
T0*
_output_shapes	
:А22
	Reshape_4u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:PP2
transpose_5j
	Reshape_5Reshapetranspose_5:y:0Const_3:output:0*
T0*
_output_shapes	
:А22
	Reshape_5u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0*
_output_shapes

:PP2
transpose_6j
	Reshape_6Reshapetranspose_6:y:0Const_3:output:0*
T0*
_output_shapes	
:А22
	Reshape_6j
	Reshape_7Reshapesplit_2:output:1Const_3:output:0*
T0*
_output_shapes
:P2
	Reshape_7j
	Reshape_8Reshapesplit_2:output:0Const_3:output:0*
T0*
_output_shapes
:P2
	Reshape_8j
	Reshape_9Reshapesplit_2:output:2Const_3:output:0*
T0*
_output_shapes
:P2
	Reshape_9l

Reshape_10Reshapesplit_2:output:4Const_3:output:0*
T0*
_output_shapes
:P2

Reshape_10l

Reshape_11Reshapesplit_2:output:3Const_3:output:0*
T0*
_output_shapes
:P2

Reshape_11l

Reshape_12Reshapesplit_2:output:5Const_3:output:0*
T0*
_output_shapes
:P2

Reshape_12\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis╒
concatConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0*
_output_shapes

:╨Ы2
concati
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    2
CudnnRNN/input_c╞
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat:output:0*
T0*8
_output_shapes&
$:fАP:АP: :*
rnn_modegru2

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
strided_slice/stack_2ю
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	АP*
shrink_axis_mask2
strided_slicey
transpose_7/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_7/permГ
transpose_7	TransposeCudnnRNN:output:0transpose_7/perm:output:0*
T0*#
_output_shapes
:АfP2
transpose_7s
SqueezeSqueezeCudnnRNN:output_h:0*
T0*
_output_shapes
:	АP*
squeeze_dims
 2	
Squeezef
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
:	АP2

Identityc

Identity_1Identitytranspose_7:y:0*
T0*#
_output_shapes
:АfP2

Identity_1`

Identity_2IdentitySqueeze:output:0*
T0*
_output_shapes
:	АP2

Identity_2W

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*N
_input_shapes=
;:Аf:	АP:	Ё:	PЁ:	Ё*<
api_implements*(gru_0c988edb-93fc-4a06-b2c6-2b312ba1e1aa*
api_preferred_deviceGPU*
go_backwards( *

time_major( :K G
#
_output_shapes
:Аf
 
_user_specified_nameinputs:GC

_output_shapes
:	АP
 
_user_specified_nameinit_h:GC

_output_shapes
:	Ё
 
_user_specified_namekernel:QM

_output_shapes
:	PЁ
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	Ё

_user_specified_namebias"▒L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*╒
serving_default┴
7
input_1,
serving_default_input_1:0Аf
7
input_2,
serving_default_input_2:0Аf1
dense(
StatefulPartitionedCall:0	А
tensorflow/serving/predict:╢б
т,
layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
	optimizer
	variables
trainable_variables
regularization_losses
		keras_api


signatures
M__call__
N_default_save_signature
*O&call_and_return_all_conditional_losses"п*
_tf_keras_networkУ*{"class_name": "Functional", "name": "gru", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "gru", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [128, 102, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_1"}, "name": "input_1", "inbound_nodes": []}, {"class_name": "GRU", "config": {"name": "gru", "trainable": true, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 80, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2, "reset_after": true}, "name": "gru", "inbound_nodes": [[["input_1", 0, 0, {}]]]}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [128, 102, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_2"}, "name": "input_2", "inbound_nodes": []}, {"class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 10, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense", "inbound_nodes": [[["gru", 0, 0, {}]]]}], "input_layers": {"class_name": "__tuple__", "items": [["input_1", 0, 0], ["input_2", 0, 0]]}, "output_layers": [["dense", 0, 0]]}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 102, 1]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}, {"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 102, 1]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "__tuple__", "items": [{"class_name": "TensorShape", "items": [128, 102, 1]}, {"class_name": "TensorShape", "items": [128, 102, 1]}]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "gru", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [128, 102, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_1"}, "name": "input_1", "inbound_nodes": []}, {"class_name": "GRU", "config": {"name": "gru", "trainable": true, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 80, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2, "reset_after": true}, "name": "gru", "inbound_nodes": [[["input_1", 0, 0, {}]]]}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [128, 102, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_2"}, "name": "input_2", "inbound_nodes": []}, {"class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 10, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense", "inbound_nodes": [[["gru", 0, 0, {}]]]}], "input_layers": {"class_name": "__tuple__", "items": [["input_1", 0, 0], ["input_2", 0, 0]]}, "output_layers": [["dense", 0, 0]]}}, "training_config": {"loss": {"class_name": "SparseCategoricalCrossentropy", "config": {"reduction": "auto", "name": "sparse_categorical_crossentropy", "from_logits": true}}, "metrics": [[{"class_name": "SparseCategoricalAccuracy", "config": {"name": "sparse_categorical_accuracy", "dtype": "float32"}}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 1.0000000656873453e-05, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
ё"ю
_tf_keras_input_layer╬{"class_name": "InputLayer", "name": "input_1", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [128, 102, 1]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [128, 102, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_1"}}
п
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
P__call__
*Q&call_and_return_all_conditional_losses"Ж

_tf_keras_rnn_layerш	{"class_name": "GRU", "name": "gru", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "gru", "trainable": true, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 80, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2, "reset_after": true}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 1]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [128, 102, 1]}}
ё"ю
_tf_keras_input_layer╬{"class_name": "InputLayer", "name": "input_2", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [128, 102, 1]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [128, 102, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_2"}}
э

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
R__call__
*S&call_and_return_all_conditional_losses"╚
_tf_keras_layerо{"class_name": "Dense", "name": "dense", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 10, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 80}}}, "build_input_shape": {"class_name": "TensorShape", "items": [128, 80]}}
н
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
C
0
1
2
3
4"
trackable_list_wrapper
 "
trackable_list_wrapper
╩
	variables
layer_regularization_losses
trainable_variables
 metrics

!layers
"layer_metrics
regularization_losses
#non_trainable_variables
M__call__
N_default_save_signature
*O&call_and_return_all_conditional_losses
&O"call_and_return_conditional_losses"
_generic_user_object
,
Tserving_default"
signature_map
Ь

kernel
recurrent_kernel
bias
$	variables
%trainable_variables
&regularization_losses
'	keras_api
U__call__
*V&call_and_return_all_conditional_losses"с
_tf_keras_layer╟{"class_name": "GRUCell", "name": "gru_cell", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "gru_cell", "trainable": true, "dtype": "float32", "units": 80, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2, "reset_after": true}}
 "
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
╣
	variables
(layer_regularization_losses
trainable_variables
)metrics

*layers

+states
,layer_metrics
regularization_losses
-non_trainable_variables
P__call__
*Q&call_and_return_all_conditional_losses
&Q"call_and_return_conditional_losses"
_generic_user_object
:P
2dense/kernel
:
2
dense/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
н
	variables
.layer_regularization_losses
trainable_variables
/metrics

0layers
1layer_metrics
regularization_losses
2non_trainable_variables
R__call__
*S&call_and_return_all_conditional_losses
&S"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
&:$	Ё2gru/gru_cell/kernel
0:.	PЁ2gru/gru_cell/recurrent_kernel
$:"	Ё2gru/gru_cell/bias
 "
trackable_list_wrapper
.
30
41"
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
н
$	variables
5layer_regularization_losses
%trainable_variables
6metrics

7layers
8layer_metrics
&regularization_losses
9non_trainable_variables
U__call__
*V&call_and_return_all_conditional_losses
&V"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
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
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
╗
	:total
	;count
<	variables
=	keras_api"Д
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}
П
	>total
	?count
@
_fn_kwargs
A	variables
B	keras_api"╚
_tf_keras_metricн{"class_name": "SparseCategoricalAccuracy", "name": "sparse_categorical_accuracy", "dtype": "float32", "config": {"name": "sparse_categorical_accuracy", "dtype": "float32"}}
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
#:!P
2Adam/dense/kernel/m
:
2Adam/dense/bias/m
+:)	Ё2Adam/gru/gru_cell/kernel/m
5:3	PЁ2$Adam/gru/gru_cell/recurrent_kernel/m
):'	Ё2Adam/gru/gru_cell/bias/m
#:!P
2Adam/dense/kernel/v
:
2Adam/dense/bias/v
+:)	Ё2Adam/gru/gru_cell/kernel/v
5:3	PЁ2$Adam/gru/gru_cell/recurrent_kernel/v
):'	Ё2Adam/gru/gru_cell/bias/v
▐2█
$__inference_gru_layer_call_fn_182062
$__inference_gru_layer_call_fn_181232
$__inference_gru_layer_call_fn_181199
$__inference_gru_layer_call_fn_182078└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
 2№
!__inference__wrapped_model_178741╓
Л▓З
FullArgSpec
argsЪ 
varargsjargs
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *FвC
Aв>
К
input_1Аf
К
input_2Аf
╩2╟
?__inference_gru_layer_call_and_return_conditional_losses_181148
?__inference_gru_layer_call_and_return_conditional_losses_181652
?__inference_gru_layer_call_and_return_conditional_losses_182046
?__inference_gru_layer_call_and_return_conditional_losses_181165└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
є2Ё
$__inference_gru_layer_call_fn_183670
$__inference_gru_layer_call_fn_182874
$__inference_gru_layer_call_fn_182863
$__inference_gru_layer_call_fn_183659╒
╠▓╚
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
▀2▄
?__inference_gru_layer_call_and_return_conditional_losses_183648
?__inference_gru_layer_call_and_return_conditional_losses_182852
?__inference_gru_layer_call_and_return_conditional_losses_182465
?__inference_gru_layer_call_and_return_conditional_losses_183261╒
╠▓╚
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
╨2═
&__inference_dense_layer_call_fn_183689в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ы2ш
A__inference_dense_layer_call_and_return_conditional_losses_183680в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╥B╧
$__inference_signature_wrapper_181258input_1input_2"Ф
Н▓Й
FullArgSpec
argsЪ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
─2┴╛
╡▓▒
FullArgSpec3
args+Ъ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
─2┴╛
╡▓▒
FullArgSpec3
args+Ъ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 ж
!__inference__wrapped_model_178741АPвM
FвC
Aв>
К
input_1Аf
К
input_2Аf
к "%к"
 
denseК
dense	А
С
A__inference_dense_layer_call_and_return_conditional_losses_183680L'в$
в
К
inputs	АP
к "в
К
0	А

Ъ i
&__inference_dense_layer_call_fn_183689?'в$
в
К
inputs	АP
к "К	А
─
?__inference_gru_layer_call_and_return_conditional_losses_181148АXвU
NвK
Aв>
К
input_1Аf
К
input_2Аf
p

 
к "в
К
0	А

Ъ ─
?__inference_gru_layer_call_and_return_conditional_losses_181165АXвU
NвK
Aв>
К
input_1Аf
К
input_2Аf
p 

 
к "в
К
0	А

Ъ ╞
?__inference_gru_layer_call_and_return_conditional_losses_181652ВZвW
PвM
Cв@
К
inputs/0Аf
К
inputs/1Аf
p

 
к "в
К
0	А

Ъ ╞
?__inference_gru_layer_call_and_return_conditional_losses_182046ВZвW
PвM
Cв@
К
inputs/0Аf
К
inputs/1Аf
p 

 
к "в
К
0	А

Ъ └
?__inference_gru_layer_call_and_return_conditional_losses_182465}OвL
EвB
4Ъ1
/К,
inputs/0                  

 
p

 
к "%в"
К
0         P
Ъ └
?__inference_gru_layer_call_and_return_conditional_losses_182852}OвL
EвB
4Ъ1
/К,
inputs/0                  

 
p 

 
к "%в"
К
0         P
Ъ а
?__inference_gru_layer_call_and_return_conditional_losses_183261]7в4
-в*
К
inputsАf

 
p

 
к "в
К
0	АP
Ъ а
?__inference_gru_layer_call_and_return_conditional_losses_183648]7в4
-в*
К
inputsАf

 
p 

 
к "в
К
0	АP
Ъ Ы
$__inference_gru_layer_call_fn_181199sXвU
NвK
Aв>
К
input_1Аf
К
input_2Аf
p

 
к "К	А
Ы
$__inference_gru_layer_call_fn_181232sXвU
NвK
Aв>
К
input_1Аf
К
input_2Аf
p 

 
к "К	А
Э
$__inference_gru_layer_call_fn_182062uZвW
PвM
Cв@
К
inputs/0Аf
К
inputs/1Аf
p

 
к "К	А
Э
$__inference_gru_layer_call_fn_182078uZвW
PвM
Cв@
К
inputs/0Аf
К
inputs/1Аf
p 

 
к "К	А
Ш
$__inference_gru_layer_call_fn_182863pOвL
EвB
4Ъ1
/К,
inputs/0                  

 
p

 
к "К         PШ
$__inference_gru_layer_call_fn_182874pOвL
EвB
4Ъ1
/К,
inputs/0                  

 
p 

 
к "К         Px
$__inference_gru_layer_call_fn_183659P7в4
-в*
К
inputsАf

 
p

 
к "К	АPx
$__inference_gru_layer_call_fn_183670P7в4
-в*
К
inputsАf

 
p 

 
к "К	АP║
$__inference_signature_wrapper_181258Сaв^
в 
WкT
(
input_1К
input_1Аf
(
input_2К
input_2Аf"%к"
 
denseК
dense	А
