ǫ
��
B
AddV2
x"T
y"T
z"T"
Ttype:
2	��
B
AssignVariableOp
resource
value"dtype"
dtypetype�
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
,
Exp
x"T
y"T"
Ttype:

2
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
delete_old_dirsbool(�
=
Mul
x"T
y"T
z"T"
Ttype:
2	�
0
Neg
x"T
y"T"
Ttype:
2
	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype�
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
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
9
Softmax
logits"T
softmax"T"
Ttype:
2
3
Square
x"T
y"T"
Ttype:
2
	
�
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
executor_typestring �
@
StaticRegexFullMatch	
input

output
"
patternstring
�
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
�
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
-
Tanh
x"T
y"T"
Ttype:

2
�
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type
output_handle"
element_dtypetype"

shape_typetype:
2	
�
TensorListReserve
element_shape"
shape_type
num_elements

handle"
element_dtypetype"

shape_typetype:
2	
�
TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint���������
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �
�
While

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint
�"serve*2.4.12v2.4.0-49-g85c8b2a817f8��
t
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: 
*
shared_namedense/kernel
m
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes

: 
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
�
rnn/ctgru/dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	(�*'
shared_namernn/ctgru/dense/kernel
�
*rnn/ctgru/dense/kernel/Read/ReadVariableOpReadVariableOprnn/ctgru/dense/kernel*
_output_shapes
:	(�*
dtype0
�
rnn/ctgru/dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*%
shared_namernn/ctgru/dense/bias
z
(rnn/ctgru/dense/bias/Read/ReadVariableOpReadVariableOprnn/ctgru/dense/bias*
_output_shapes	
:�*
dtype0
�
rnn/ctgru/dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:( *)
shared_namernn/ctgru/dense_1/kernel
�
,rnn/ctgru/dense_1/kernel/Read/ReadVariableOpReadVariableOprnn/ctgru/dense_1/kernel*
_output_shapes

:( *
dtype0
�
rnn/ctgru/dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_namernn/ctgru/dense_1/bias
}
*rnn/ctgru/dense_1/bias/Read/ReadVariableOpReadVariableOprnn/ctgru/dense_1/bias*
_output_shapes
: *
dtype0
�
rnn/ctgru/dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	(�*)
shared_namernn/ctgru/dense_2/kernel
�
,rnn/ctgru/dense_2/kernel/Read/ReadVariableOpReadVariableOprnn/ctgru/dense_2/kernel*
_output_shapes
:	(�*
dtype0
�
rnn/ctgru/dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*'
shared_namernn/ctgru/dense_2/bias
~
*rnn/ctgru/dense_2/bias/Read/ReadVariableOpReadVariableOprnn/ctgru/dense_2/bias*
_output_shapes	
:�*
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
�
Adam/dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: 
*$
shared_nameAdam/dense/kernel/m
{
'Adam/dense/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/m*
_output_shapes

: 
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
�
Adam/rnn/ctgru/dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	(�*.
shared_nameAdam/rnn/ctgru/dense/kernel/m
�
1Adam/rnn/ctgru/dense/kernel/m/Read/ReadVariableOpReadVariableOpAdam/rnn/ctgru/dense/kernel/m*
_output_shapes
:	(�*
dtype0
�
Adam/rnn/ctgru/dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*,
shared_nameAdam/rnn/ctgru/dense/bias/m
�
/Adam/rnn/ctgru/dense/bias/m/Read/ReadVariableOpReadVariableOpAdam/rnn/ctgru/dense/bias/m*
_output_shapes	
:�*
dtype0
�
Adam/rnn/ctgru/dense_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:( *0
shared_name!Adam/rnn/ctgru/dense_1/kernel/m
�
3Adam/rnn/ctgru/dense_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/rnn/ctgru/dense_1/kernel/m*
_output_shapes

:( *
dtype0
�
Adam/rnn/ctgru/dense_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *.
shared_nameAdam/rnn/ctgru/dense_1/bias/m
�
1Adam/rnn/ctgru/dense_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/rnn/ctgru/dense_1/bias/m*
_output_shapes
: *
dtype0
�
Adam/rnn/ctgru/dense_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	(�*0
shared_name!Adam/rnn/ctgru/dense_2/kernel/m
�
3Adam/rnn/ctgru/dense_2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/rnn/ctgru/dense_2/kernel/m*
_output_shapes
:	(�*
dtype0
�
Adam/rnn/ctgru/dense_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*.
shared_nameAdam/rnn/ctgru/dense_2/bias/m
�
1Adam/rnn/ctgru/dense_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/rnn/ctgru/dense_2/bias/m*
_output_shapes	
:�*
dtype0
�
Adam/dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: 
*$
shared_nameAdam/dense/kernel/v
{
'Adam/dense/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/v*
_output_shapes

: 
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
�
Adam/rnn/ctgru/dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	(�*.
shared_nameAdam/rnn/ctgru/dense/kernel/v
�
1Adam/rnn/ctgru/dense/kernel/v/Read/ReadVariableOpReadVariableOpAdam/rnn/ctgru/dense/kernel/v*
_output_shapes
:	(�*
dtype0
�
Adam/rnn/ctgru/dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*,
shared_nameAdam/rnn/ctgru/dense/bias/v
�
/Adam/rnn/ctgru/dense/bias/v/Read/ReadVariableOpReadVariableOpAdam/rnn/ctgru/dense/bias/v*
_output_shapes	
:�*
dtype0
�
Adam/rnn/ctgru/dense_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:( *0
shared_name!Adam/rnn/ctgru/dense_1/kernel/v
�
3Adam/rnn/ctgru/dense_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/rnn/ctgru/dense_1/kernel/v*
_output_shapes

:( *
dtype0
�
Adam/rnn/ctgru/dense_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *.
shared_nameAdam/rnn/ctgru/dense_1/bias/v
�
1Adam/rnn/ctgru/dense_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/rnn/ctgru/dense_1/bias/v*
_output_shapes
: *
dtype0
�
Adam/rnn/ctgru/dense_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	(�*0
shared_name!Adam/rnn/ctgru/dense_2/kernel/v
�
3Adam/rnn/ctgru/dense_2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/rnn/ctgru/dense_2/kernel/v*
_output_shapes
:	(�*
dtype0
�
Adam/rnn/ctgru/dense_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*.
shared_nameAdam/rnn/ctgru/dense_2/bias/v
�
1Adam/rnn/ctgru/dense_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/rnn/ctgru/dense_2/bias/v*
_output_shapes	
:�*
dtype0

NoOpNoOp
�4
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�4
value�3B�3 B�3
�
layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
	optimizer
regularization_losses
trainable_variables
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
regularization_losses
trainable_variables
	variables
	keras_api
 
h

kernel
bias
regularization_losses
trainable_variables
	variables
	keras_api
�
iter

beta_1

beta_2
	decay
learning_ratemdmemfmgmhmi mj!mkvlvmvnvovpvq vr!vs
 
8
0
1
2
3
 4
!5
6
7
8
0
1
2
3
 4
!5
6
7
�
regularization_losses
"layer_metrics
#layer_regularization_losses
trainable_variables
$metrics
	variables

%layers
&non_trainable_variables
 
�
'retrieval_layer
(detect_layer
)update_layer
*regularization_losses
+trainable_variables
,	variables
-	keras_api
 
 
*
0
1
2
3
 4
!5
*
0
1
2
3
 4
!5
�

.states
regularization_losses
/layer_metrics
0layer_regularization_losses
trainable_variables
1metrics
	variables

2layers
3non_trainable_variables
XV
VARIABLE_VALUEdense/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUE
dense/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
�
regularization_losses
4layer_metrics
5layer_regularization_losses
trainable_variables
6metrics
	variables

7layers
8non_trainable_variables
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
\Z
VARIABLE_VALUErnn/ctgru/dense/kernel0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUErnn/ctgru/dense/bias0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUE
^\
VARIABLE_VALUErnn/ctgru/dense_1/kernel0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUE
\Z
VARIABLE_VALUErnn/ctgru/dense_1/bias0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUE
^\
VARIABLE_VALUErnn/ctgru/dense_2/kernel0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUE
\Z
VARIABLE_VALUErnn/ctgru/dense_2/bias0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUE
 
 

90
:1

0
1
2
3
 
h

kernel
bias
;regularization_losses
<trainable_variables
=	variables
>	keras_api
h

kernel
bias
?regularization_losses
@trainable_variables
A	variables
B	keras_api
h

 kernel
!bias
Cregularization_losses
Dtrainable_variables
E	variables
F	keras_api
 
*
0
1
2
3
 4
!5
*
0
1
2
3
 4
!5
�
*regularization_losses
Glayer_metrics
Hlayer_regularization_losses
+trainable_variables
Imetrics
,	variables

Jlayers
Knon_trainable_variables
 
 
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
4
	Ltotal
	Mcount
N	variables
O	keras_api
D
	Ptotal
	Qcount
R
_fn_kwargs
S	variables
T	keras_api
 

0
1

0
1
�
;regularization_losses
Ulayer_metrics
Vlayer_regularization_losses
<trainable_variables
Wmetrics
=	variables

Xlayers
Ynon_trainable_variables
 

0
1

0
1
�
?regularization_losses
Zlayer_metrics
[layer_regularization_losses
@trainable_variables
\metrics
A	variables

]layers
^non_trainable_variables
 

 0
!1

 0
!1
�
Cregularization_losses
_layer_metrics
`layer_regularization_losses
Dtrainable_variables
ametrics
E	variables

blayers
cnon_trainable_variables
 
 
 

'0
(1
)2
 
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

L0
M1

N	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

P0
Q1

S	variables
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
{y
VARIABLE_VALUEAdam/dense/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/dense/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/rnn/ctgru/dense/kernel/mLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/rnn/ctgru/dense/bias/mLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
�
VARIABLE_VALUEAdam/rnn/ctgru/dense_1/kernel/mLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/rnn/ctgru/dense_1/bias/mLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
�
VARIABLE_VALUEAdam/rnn/ctgru/dense_2/kernel/mLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/rnn/ctgru/dense_2/bias/mLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/dense/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/rnn/ctgru/dense/kernel/vLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/rnn/ctgru/dense/bias/vLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
�
VARIABLE_VALUEAdam/rnn/ctgru/dense_1/kernel/vLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/rnn/ctgru/dense_1/bias/vLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
�
VARIABLE_VALUEAdam/rnn/ctgru/dense_2/kernel/vLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/rnn/ctgru/dense_2/bias/vLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
r
serving_default_input_1Placeholder*#
_output_shapes
:�b*
dtype0*
shape:�b
r
serving_default_input_2Placeholder*#
_output_shapes
:�b*
dtype0*
shape:�b
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1serving_default_input_2rnn/ctgru/dense/kernelrnn/ctgru/dense/biasrnn/ctgru/dense_1/kernelrnn/ctgru/dense_1/biasrnn/ctgru/dense_2/kernelrnn/ctgru/dense_2/biasdense/kernel
dense/bias*
Tin
2
*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:	�
**
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8� *-
f(R&
$__inference_signature_wrapper_160907
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp*rnn/ctgru/dense/kernel/Read/ReadVariableOp(rnn/ctgru/dense/bias/Read/ReadVariableOp,rnn/ctgru/dense_1/kernel/Read/ReadVariableOp*rnn/ctgru/dense_1/bias/Read/ReadVariableOp,rnn/ctgru/dense_2/kernel/Read/ReadVariableOp*rnn/ctgru/dense_2/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp'Adam/dense/kernel/m/Read/ReadVariableOp%Adam/dense/bias/m/Read/ReadVariableOp1Adam/rnn/ctgru/dense/kernel/m/Read/ReadVariableOp/Adam/rnn/ctgru/dense/bias/m/Read/ReadVariableOp3Adam/rnn/ctgru/dense_1/kernel/m/Read/ReadVariableOp1Adam/rnn/ctgru/dense_1/bias/m/Read/ReadVariableOp3Adam/rnn/ctgru/dense_2/kernel/m/Read/ReadVariableOp1Adam/rnn/ctgru/dense_2/bias/m/Read/ReadVariableOp'Adam/dense/kernel/v/Read/ReadVariableOp%Adam/dense/bias/v/Read/ReadVariableOp1Adam/rnn/ctgru/dense/kernel/v/Read/ReadVariableOp/Adam/rnn/ctgru/dense/bias/v/Read/ReadVariableOp3Adam/rnn/ctgru/dense_1/kernel/v/Read/ReadVariableOp1Adam/rnn/ctgru/dense_1/bias/v/Read/ReadVariableOp3Adam/rnn/ctgru/dense_2/kernel/v/Read/ReadVariableOp1Adam/rnn/ctgru/dense_2/bias/v/Read/ReadVariableOpConst*.
Tin'
%2#	*
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
GPU 2J 8� *(
f#R!
__inference__traced_save_162752
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense/kernel
dense/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_raternn/ctgru/dense/kernelrnn/ctgru/dense/biasrnn/ctgru/dense_1/kernelrnn/ctgru/dense_1/biasrnn/ctgru/dense_2/kernelrnn/ctgru/dense_2/biastotalcounttotal_1count_1Adam/dense/kernel/mAdam/dense/bias/mAdam/rnn/ctgru/dense/kernel/mAdam/rnn/ctgru/dense/bias/mAdam/rnn/ctgru/dense_1/kernel/mAdam/rnn/ctgru/dense_1/bias/mAdam/rnn/ctgru/dense_2/kernel/mAdam/rnn/ctgru/dense_2/bias/mAdam/dense/kernel/vAdam/dense/bias/vAdam/rnn/ctgru/dense/kernel/vAdam/rnn/ctgru/dense/bias/vAdam/rnn/ctgru/dense_1/kernel/vAdam/rnn/ctgru/dense_1/bias/vAdam/rnn/ctgru/dense_2/kernel/vAdam/rnn/ctgru/dense_2/bias/v*-
Tin&
$2"*
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
GPU 2J 8� *+
f&R$
"__inference__traced_restore_162861ԯ
�#
�
while_body_160100
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_ctgru_160122_0
while_ctgru_160124_0
while_ctgru_160126_0
while_ctgru_160128_0
while_ctgru_160130_0
while_ctgru_160132_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_ctgru_160122
while_ctgru_160124
while_ctgru_160126
while_ctgru_160128
while_ctgru_160130
while_ctgru_160132��#while/ctgru/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem�
#while/ctgru/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_ctgru_160122_0while_ctgru_160124_0while_ctgru_160126_0while_ctgru_160128_0while_ctgru_160130_0while_ctgru_160132_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *;
_output_shapes)
':��������� :����������*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_ctgru_layer_call_and_return_conditional_losses_1596682%
#while/ctgru/StatefulPartitionedCall�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder,while/ctgru/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1�
while/IdentityIdentitywhile/add_1:z:0$^while/ctgru/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity�
while/Identity_1Identitywhile_while_maximum_iterations$^while/ctgru/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1�
while/Identity_2Identitywhile/add:z:0$^while/ctgru/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0$^while/ctgru/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identity,while/ctgru/StatefulPartitionedCall:output:1$^while/ctgru/StatefulPartitionedCall*
T0*(
_output_shapes
:����������2
while/Identity_4"*
while_ctgru_160122while_ctgru_160122_0"*
while_ctgru_160124while_ctgru_160124_0"*
while_ctgru_160126while_ctgru_160126_0"*
while_ctgru_160128while_ctgru_160128_0"*
while_ctgru_160130while_ctgru_160130_0"*
while_ctgru_160132while_ctgru_160132_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*K
_input_shapes:
8: : : : :����������: : ::::::2J
#while/ctgru/StatefulPartitionedCall#while/ctgru/StatefulPartitionedCall: 
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
: :.*
(
_output_shapes
:����������:

_output_shapes
: :

_output_shapes
: 
�
�
$__inference_rnn_layer_call_fn_162509

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:	� *(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_rnn_layer_call_and_return_conditional_losses_1606862
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*
_output_shapes
:	� 2

Identity"
identityIdentity:output:0*:
_input_shapes)
':�b::::::22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:�b
 
_user_specified_nameinputs
މ
�
while_body_162339
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_06
2while_ctgru_dense_matmul_readvariableop_resource_07
3while_ctgru_dense_biasadd_readvariableop_resource_08
4while_ctgru_dense_1_matmul_readvariableop_resource_09
5while_ctgru_dense_1_biasadd_readvariableop_resource_08
4while_ctgru_dense_2_matmul_readvariableop_resource_09
5while_ctgru_dense_2_biasadd_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor4
0while_ctgru_dense_matmul_readvariableop_resource5
1while_ctgru_dense_biasadd_readvariableop_resource6
2while_ctgru_dense_1_matmul_readvariableop_resource7
3while_ctgru_dense_1_biasadd_readvariableop_resource6
2while_ctgru_dense_2_matmul_readvariableop_resource7
3while_ctgru_dense_2_biasadd_readvariableop_resource��(while/ctgru/dense/BiasAdd/ReadVariableOp�'while/ctgru/dense/MatMul/ReadVariableOp�*while/ctgru/dense_1/BiasAdd/ReadVariableOp�)while/ctgru/dense_1/MatMul/ReadVariableOp�*while/ctgru/dense_2/BiasAdd/ReadVariableOp�)while/ctgru/dense_2/MatMul/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"�      29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes
:	�*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemw
while/ctgru/ShapeConst*
_output_shapes
:*
dtype0*
valueB"�      2
while/ctgru/Shape�
while/ctgru/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2!
while/ctgru/strided_slice/stack�
!while/ctgru/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2#
!while/ctgru/strided_slice/stack_1�
!while/ctgru/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!while/ctgru/strided_slice/stack_2�
while/ctgru/strided_sliceStridedSlicewhile/ctgru/Shape:output:0(while/ctgru/strided_slice/stack:output:0*while/ctgru/strided_slice/stack_1:output:0*while/ctgru/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
while/ctgru/strided_slice|
while/ctgru/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B : 2
while/ctgru/Reshape/shape/1|
while/ctgru/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
while/ctgru/Reshape/shape/2�
while/ctgru/Reshape/shapePack"while/ctgru/strided_slice:output:0$while/ctgru/Reshape/shape/1:output:0$while/ctgru/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
while/ctgru/Reshape/shape�
while/ctgru/ReshapeReshapewhile_placeholder_2"while/ctgru/Reshape/shape:output:0*
T0*#
_output_shapes
:� 2
while/ctgru/Reshape�
!while/ctgru/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/ctgru/Sum/reduction_indices�
while/ctgru/SumSumwhile/ctgru/Reshape:output:0*while/ctgru/Sum/reduction_indices:output:0*
T0*
_output_shapes
:	� 2
while/ctgru/Sum}
while/ctgru/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
���������2
while/ctgru/concat/axis�
while/ctgru/concatConcatV20while/TensorArrayV2Read/TensorListGetItem:item:0while/ctgru/Sum:output:0 while/ctgru/concat/axis:output:0*
N*
T0*
_output_shapes
:	�(2
while/ctgru/concat�
'while/ctgru/dense/MatMul/ReadVariableOpReadVariableOp2while_ctgru_dense_matmul_readvariableop_resource_0*
_output_shapes
:	(�*
dtype02)
'while/ctgru/dense/MatMul/ReadVariableOp�
while/ctgru/dense/MatMulMatMulwhile/ctgru/concat:output:0/while/ctgru/dense/MatMul/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��2
while/ctgru/dense/MatMul�
(while/ctgru/dense/BiasAdd/ReadVariableOpReadVariableOp3while_ctgru_dense_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype02*
(while/ctgru/dense/BiasAdd/ReadVariableOp�
while/ctgru/dense/BiasAddBiasAdd"while/ctgru/dense/MatMul:product:00while/ctgru/dense/BiasAdd/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��2
while/ctgru/dense/BiasAdd�
while/ctgru/Reshape_1/shape/1Const*
_output_shapes
: *
dtype0*
value	B : 2
while/ctgru/Reshape_1/shape/1�
while/ctgru/Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
while/ctgru/Reshape_1/shape/2�
while/ctgru/Reshape_1/shapePack"while/ctgru/strided_slice:output:0&while/ctgru/Reshape_1/shape/1:output:0&while/ctgru/Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:2
while/ctgru/Reshape_1/shape�
while/ctgru/Reshape_1Reshape"while/ctgru/dense/BiasAdd:output:0$while/ctgru/Reshape_1/shape:output:0*
T0*#
_output_shapes
:� 2
while/ctgru/Reshape_1�
while/ctgru/sub/yConst*
_output_shapes
:*
dtype0*5
value,B*"     �]�?�]@U]@�]�@�4�@U�@�� A2
while/ctgru/sub/y�
while/ctgru/subSubwhile/ctgru/Reshape_1:output:0while/ctgru/sub/y:output:0*
T0*#
_output_shapes
:� 2
while/ctgru/subu
while/ctgru/SquareSquarewhile/ctgru/sub:z:0*
T0*#
_output_shapes
:� 2
while/ctgru/Squareo
while/ctgru/NegNegwhile/ctgru/Square:y:0*
T0*#
_output_shapes
:� 2
while/ctgru/Negx
while/ctgru/SoftmaxSoftmaxwhile/ctgru/Neg:y:0*
T0*#
_output_shapes
:� 2
while/ctgru/Softmax�
while/ctgru/mulMulwhile/ctgru/Softmax:softmax:0while/ctgru/Reshape:output:0*
T0*#
_output_shapes
:� 2
while/ctgru/mul�
#while/ctgru/Sum_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/ctgru/Sum_1/reduction_indices�
while/ctgru/Sum_1Sumwhile/ctgru/mul:z:0,while/ctgru/Sum_1/reduction_indices:output:0*
T0*
_output_shapes
:	� 2
while/ctgru/Sum_1x
while/ctgru/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :2
while/ctgru/concat_1/axis�
while/ctgru/concat_1ConcatV20while/TensorArrayV2Read/TensorListGetItem:item:0while/ctgru/Sum_1:output:0"while/ctgru/concat_1/axis:output:0*
N*
T0*
_output_shapes
:	�(2
while/ctgru/concat_1�
)while/ctgru/dense_1/MatMul/ReadVariableOpReadVariableOp4while_ctgru_dense_1_matmul_readvariableop_resource_0*
_output_shapes

:( *
dtype02+
)while/ctgru/dense_1/MatMul/ReadVariableOp�
while/ctgru/dense_1/MatMulMatMulwhile/ctgru/concat_1:output:01while/ctgru/dense_1/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	� 2
while/ctgru/dense_1/MatMul�
*while/ctgru/dense_1/BiasAdd/ReadVariableOpReadVariableOp5while_ctgru_dense_1_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype02,
*while/ctgru/dense_1/BiasAdd/ReadVariableOp�
while/ctgru/dense_1/BiasAddBiasAdd$while/ctgru/dense_1/MatMul:product:02while/ctgru/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	� 2
while/ctgru/dense_1/BiasAdd�
while/ctgru/dense_1/TanhTanh$while/ctgru/dense_1/BiasAdd:output:0*
T0*
_output_shapes
:	� 2
while/ctgru/dense_1/Tanh�
while/ctgru/Reshape_2/shape/1Const*
_output_shapes
: *
dtype0*
value	B : 2
while/ctgru/Reshape_2/shape/1�
while/ctgru/Reshape_2/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
while/ctgru/Reshape_2/shape/2�
while/ctgru/Reshape_2/shapePack"while/ctgru/strided_slice:output:0&while/ctgru/Reshape_2/shape/1:output:0&while/ctgru/Reshape_2/shape/2:output:0*
N*
T0*
_output_shapes
:2
while/ctgru/Reshape_2/shape�
while/ctgru/Reshape_2Reshapewhile/ctgru/dense_1/Tanh:y:0$while/ctgru/Reshape_2/shape:output:0*
T0*#
_output_shapes
:� 2
while/ctgru/Reshape_2�
)while/ctgru/dense_2/MatMul/ReadVariableOpReadVariableOp4while_ctgru_dense_2_matmul_readvariableop_resource_0*
_output_shapes
:	(�*
dtype02+
)while/ctgru/dense_2/MatMul/ReadVariableOp�
while/ctgru/dense_2/MatMulMatMulwhile/ctgru/concat:output:01while/ctgru/dense_2/MatMul/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��2
while/ctgru/dense_2/MatMul�
*while/ctgru/dense_2/BiasAdd/ReadVariableOpReadVariableOp5while_ctgru_dense_2_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype02,
*while/ctgru/dense_2/BiasAdd/ReadVariableOp�
while/ctgru/dense_2/BiasAddBiasAdd$while/ctgru/dense_2/MatMul:product:02while/ctgru/dense_2/BiasAdd/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��2
while/ctgru/dense_2/BiasAdd�
while/ctgru/Reshape_3/shape/1Const*
_output_shapes
: *
dtype0*
value	B : 2
while/ctgru/Reshape_3/shape/1�
while/ctgru/Reshape_3/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
while/ctgru/Reshape_3/shape/2�
while/ctgru/Reshape_3/shapePack"while/ctgru/strided_slice:output:0&while/ctgru/Reshape_3/shape/1:output:0&while/ctgru/Reshape_3/shape/2:output:0*
N*
T0*
_output_shapes
:2
while/ctgru/Reshape_3/shape�
while/ctgru/Reshape_3Reshape$while/ctgru/dense_2/BiasAdd:output:0$while/ctgru/Reshape_3/shape:output:0*
T0*#
_output_shapes
:� 2
while/ctgru/Reshape_3�
while/ctgru/sub_1/yConst*
_output_shapes
:*
dtype0*5
value,B*"     �]�?�]@U]@�]�@�4�@U�@�� A2
while/ctgru/sub_1/y�
while/ctgru/sub_1Subwhile/ctgru/Reshape_3:output:0while/ctgru/sub_1/y:output:0*
T0*#
_output_shapes
:� 2
while/ctgru/sub_1{
while/ctgru/Square_1Squarewhile/ctgru/sub_1:z:0*
T0*#
_output_shapes
:� 2
while/ctgru/Square_1u
while/ctgru/Neg_1Negwhile/ctgru/Square_1:y:0*
T0*#
_output_shapes
:� 2
while/ctgru/Neg_1~
while/ctgru/Softmax_1Softmaxwhile/ctgru/Neg_1:y:0*
T0*#
_output_shapes
:� 2
while/ctgru/Softmax_1o
while/ctgru/sub_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
while/ctgru/sub_2/x�
while/ctgru/sub_2Subwhile/ctgru/sub_2/x:output:0while/ctgru/Softmax_1:softmax:0*
T0*#
_output_shapes
:� 2
while/ctgru/sub_2�
while/ctgru/mul_1Mulwhile/ctgru/sub_2:z:0while/ctgru/Reshape:output:0*
T0*#
_output_shapes
:� 2
while/ctgru/mul_1�
while/ctgru/mul_2Mulwhile/ctgru/Softmax_1:softmax:0while/ctgru/Reshape_2:output:0*
T0*#
_output_shapes
:� 2
while/ctgru/mul_2�
while/ctgru/addAddV2while/ctgru/mul_1:z:0while/ctgru/mul_2:z:0*
T0*#
_output_shapes
:� 2
while/ctgru/add�
while/ctgru/Exp/xConst*
_output_shapes
:*
dtype0*U
valueLBJ"@      �IHb=Կ��������q:�N�0��y�G�z����3���i�����MbP�*���k�4�2
while/ctgru/Exp/xj
while/ctgru/ExpExpwhile/ctgru/Exp/x:output:0*
T0*
_output_shapes
:2
while/ctgru/Exp�
while/ctgru/Reshape_4/shapeConst*
_output_shapes
:*
dtype0*!
valueB"����      2
while/ctgru/Reshape_4/shape�
while/ctgru/Reshape_4Reshapewhile/ctgru/Exp:y:0$while/ctgru/Reshape_4/shape:output:0*
T0*"
_output_shapes
:2
while/ctgru/Reshape_4�
while/ctgru/CastCastwhile/ctgru/Reshape_4:output:0*

DstT0*

SrcT0*"
_output_shapes
:2
while/ctgru/Cast�
while/ctgru/mul_3Mulwhile/ctgru/add:z:0while/ctgru/Cast:y:0*
T0*#
_output_shapes
:� 2
while/ctgru/mul_3�
#while/ctgru/Sum_2/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/ctgru/Sum_2/reduction_indices�
while/ctgru/Sum_2Sumwhile/ctgru/mul_3:z:0,while/ctgru/Sum_2/reduction_indices:output:0*
T0*
_output_shapes
:	� 2
while/ctgru/Sum_2�
while/ctgru/Reshape_5/shape/1Const*
_output_shapes
: *
dtype0*
value
B :�2
while/ctgru/Reshape_5/shape/1�
while/ctgru/Reshape_5/shapePack"while/ctgru/strided_slice:output:0&while/ctgru/Reshape_5/shape/1:output:0*
N*
T0*
_output_shapes
:2
while/ctgru/Reshape_5/shape�
while/ctgru/Reshape_5Reshapewhile/ctgru/mul_3:z:0$while/ctgru/Reshape_5/shape:output:0*
T0* 
_output_shapes
:
��2
while/ctgru/Reshape_5�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/ctgru/Sum_2:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1�
while/IdentityIdentitywhile/add_1:z:0)^while/ctgru/dense/BiasAdd/ReadVariableOp(^while/ctgru/dense/MatMul/ReadVariableOp+^while/ctgru/dense_1/BiasAdd/ReadVariableOp*^while/ctgru/dense_1/MatMul/ReadVariableOp+^while/ctgru/dense_2/BiasAdd/ReadVariableOp*^while/ctgru/dense_2/MatMul/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity�
while/Identity_1Identitywhile_while_maximum_iterations)^while/ctgru/dense/BiasAdd/ReadVariableOp(^while/ctgru/dense/MatMul/ReadVariableOp+^while/ctgru/dense_1/BiasAdd/ReadVariableOp*^while/ctgru/dense_1/MatMul/ReadVariableOp+^while/ctgru/dense_2/BiasAdd/ReadVariableOp*^while/ctgru/dense_2/MatMul/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1�
while/Identity_2Identitywhile/add:z:0)^while/ctgru/dense/BiasAdd/ReadVariableOp(^while/ctgru/dense/MatMul/ReadVariableOp+^while/ctgru/dense_1/BiasAdd/ReadVariableOp*^while/ctgru/dense_1/MatMul/ReadVariableOp+^while/ctgru/dense_2/BiasAdd/ReadVariableOp*^while/ctgru/dense_2/MatMul/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^while/ctgru/dense/BiasAdd/ReadVariableOp(^while/ctgru/dense/MatMul/ReadVariableOp+^while/ctgru/dense_1/BiasAdd/ReadVariableOp*^while/ctgru/dense_1/MatMul/ReadVariableOp+^while/ctgru/dense_2/BiasAdd/ReadVariableOp*^while/ctgru/dense_2/MatMul/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identitywhile/ctgru/Reshape_5:output:0)^while/ctgru/dense/BiasAdd/ReadVariableOp(^while/ctgru/dense/MatMul/ReadVariableOp+^while/ctgru/dense_1/BiasAdd/ReadVariableOp*^while/ctgru/dense_1/MatMul/ReadVariableOp+^while/ctgru/dense_2/BiasAdd/ReadVariableOp*^while/ctgru/dense_2/MatMul/ReadVariableOp*
T0* 
_output_shapes
:
��2
while/Identity_4"l
3while_ctgru_dense_1_biasadd_readvariableop_resource5while_ctgru_dense_1_biasadd_readvariableop_resource_0"j
2while_ctgru_dense_1_matmul_readvariableop_resource4while_ctgru_dense_1_matmul_readvariableop_resource_0"l
3while_ctgru_dense_2_biasadd_readvariableop_resource5while_ctgru_dense_2_biasadd_readvariableop_resource_0"j
2while_ctgru_dense_2_matmul_readvariableop_resource4while_ctgru_dense_2_matmul_readvariableop_resource_0"h
1while_ctgru_dense_biasadd_readvariableop_resource3while_ctgru_dense_biasadd_readvariableop_resource_0"f
0while_ctgru_dense_matmul_readvariableop_resource2while_ctgru_dense_matmul_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*C
_input_shapes2
0: : : : :
��: : ::::::2T
(while/ctgru/dense/BiasAdd/ReadVariableOp(while/ctgru/dense/BiasAdd/ReadVariableOp2R
'while/ctgru/dense/MatMul/ReadVariableOp'while/ctgru/dense/MatMul/ReadVariableOp2X
*while/ctgru/dense_1/BiasAdd/ReadVariableOp*while/ctgru/dense_1/BiasAdd/ReadVariableOp2V
)while/ctgru/dense_1/MatMul/ReadVariableOp)while/ctgru/dense_1/MatMul/ReadVariableOp2X
*while/ctgru/dense_2/BiasAdd/ReadVariableOp*while/ctgru/dense_2/BiasAdd/ReadVariableOp2V
)while/ctgru/dense_2/MatMul/ReadVariableOp)while/ctgru/dense_2/MatMul/ReadVariableOp: 
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
: :&"
 
_output_shapes
:
��:

_output_shapes
: :

_output_shapes
: 
�
�
B__inference_ct_gru_layer_call_and_return_conditional_losses_160784
input_1
input_2

rnn_160765

rnn_160767

rnn_160769

rnn_160771

rnn_160773

rnn_160775
dense_160778
dense_160780
identity��dense/StatefulPartitionedCall�rnn/StatefulPartitionedCall�
rnn/StatefulPartitionedCallStatefulPartitionedCallinput_1
rnn_160765
rnn_160767
rnn_160769
rnn_160771
rnn_160773
rnn_160775*
Tin
	2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:	� *(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_rnn_layer_call_and_return_conditional_losses_1606862
rnn/StatefulPartitionedCall�
dense/StatefulPartitionedCallStatefulPartitionedCall$rnn/StatefulPartitionedCall:output:0dense_160778dense_160780*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:	�
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_1607442
dense/StatefulPartitionedCall�
IdentityIdentity&dense/StatefulPartitionedCall:output:0^dense/StatefulPartitionedCall^rnn/StatefulPartitionedCall*
T0*
_output_shapes
:	�
2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:�b:�b::::::::2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2:
rnn/StatefulPartitionedCallrnn/StatefulPartitionedCall:L H
#
_output_shapes
:�b
!
_user_specified_name	input_1:LH
#
_output_shapes
:�b
!
_user_specified_name	input_2
�R
�
A__inference_ctgru_layer_call_and_return_conditional_losses_162609

inputs
states_0(
$dense_matmul_readvariableop_resource)
%dense_biasadd_readvariableop_resource*
&dense_1_matmul_readvariableop_resource+
'dense_1_biasadd_readvariableop_resource*
&dense_2_matmul_readvariableop_resource+
'dense_2_biasadd_readvariableop_resource
identity

identity_1��dense/BiasAdd/ReadVariableOp�dense/MatMul/ReadVariableOp�dense_1/BiasAdd/ReadVariableOp�dense_1/MatMul/ReadVariableOp�dense_2/BiasAdd/ReadVariableOp�dense_2/MatMul/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
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
strided_slice/stack_2�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliced
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B : 2
Reshape/shape/1d
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/2�
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape/shapeu
ReshapeReshapestates_0Reshape/shape:output:0*
T0*+
_output_shapes
:��������� 2	
Reshapep
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Sum/reduction_indicesu
SumSumReshape:output:0Sum/reduction_indices:output:0*
T0*'
_output_shapes
:��������� 2
Sume
concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
���������2
concat/axis�
concatConcatV2inputsSum:output:0concat/axis:output:0*
N*
T0*'
_output_shapes
:���������(2
concat�
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	(�*
dtype02
dense/MatMul/ReadVariableOp�
dense/MatMulMatMulconcat:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
dense/MatMul�
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
dense/BiasAdd/ReadVariableOp�
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
dense/BiasAddh
Reshape_1/shape/1Const*
_output_shapes
: *
dtype0*
value	B : 2
Reshape_1/shape/1h
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape_1/shape/2�
Reshape_1/shapePackstrided_slice:output:0Reshape_1/shape/1:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape_1/shape�
	Reshape_1Reshapedense/BiasAdd:output:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:��������� 2
	Reshape_1w
sub/yConst*
_output_shapes
:*
dtype0*5
value,B*"     �]�?�]@U]@�]�@�4�@U�@�� A2
sub/yk
subSubReshape_1:output:0sub/y:output:0*
T0*+
_output_shapes
:��������� 2
subY
SquareSquaresub:z:0*
T0*+
_output_shapes
:��������� 2
SquareS
NegNeg
Square:y:0*
T0*+
_output_shapes
:��������� 2
Neg\
SoftmaxSoftmaxNeg:y:0*
T0*+
_output_shapes
:��������� 2	
Softmaxl
mulMulSoftmax:softmax:0Reshape:output:0*
T0*+
_output_shapes
:��������� 2
mult
Sum_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Sum_1/reduction_indicesr
Sum_1Summul:z:0 Sum_1/reduction_indices:output:0*
T0*'
_output_shapes
:��������� 2
Sum_1`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat_1/axis�
concat_1ConcatV2inputsSum_1:output:0concat_1/axis:output:0*
N*
T0*'
_output_shapes
:���������(2

concat_1�
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes

:( *
dtype02
dense_1/MatMul/ReadVariableOp�
dense_1/MatMulMatMulconcat_1:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� 2
dense_1/MatMul�
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02 
dense_1/BiasAdd/ReadVariableOp�
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� 2
dense_1/BiasAddp
dense_1/TanhTanhdense_1/BiasAdd:output:0*
T0*'
_output_shapes
:��������� 2
dense_1/Tanhh
Reshape_2/shape/1Const*
_output_shapes
: *
dtype0*
value	B : 2
Reshape_2/shape/1h
Reshape_2/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape_2/shape/2�
Reshape_2/shapePackstrided_slice:output:0Reshape_2/shape/1:output:0Reshape_2/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape_2/shape�
	Reshape_2Reshapedense_1/Tanh:y:0Reshape_2/shape:output:0*
T0*+
_output_shapes
:��������� 2
	Reshape_2�
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes
:	(�*
dtype02
dense_2/MatMul/ReadVariableOp�
dense_2/MatMulMatMulconcat:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
dense_2/MatMul�
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02 
dense_2/BiasAdd/ReadVariableOp�
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
dense_2/BiasAddh
Reshape_3/shape/1Const*
_output_shapes
: *
dtype0*
value	B : 2
Reshape_3/shape/1h
Reshape_3/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape_3/shape/2�
Reshape_3/shapePackstrided_slice:output:0Reshape_3/shape/1:output:0Reshape_3/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape_3/shape�
	Reshape_3Reshapedense_2/BiasAdd:output:0Reshape_3/shape:output:0*
T0*+
_output_shapes
:��������� 2
	Reshape_3{
sub_1/yConst*
_output_shapes
:*
dtype0*5
value,B*"     �]�?�]@U]@�]�@�4�@U�@�� A2	
sub_1/yq
sub_1SubReshape_3:output:0sub_1/y:output:0*
T0*+
_output_shapes
:��������� 2
sub_1_
Square_1Square	sub_1:z:0*
T0*+
_output_shapes
:��������� 2

Square_1Y
Neg_1NegSquare_1:y:0*
T0*+
_output_shapes
:��������� 2
Neg_1b
	Softmax_1Softmax	Neg_1:y:0*
T0*+
_output_shapes
:��������� 2
	Softmax_1W
sub_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2	
sub_2/xr
sub_2Subsub_2/x:output:0Softmax_1:softmax:0*
T0*+
_output_shapes
:��������� 2
sub_2h
mul_1Mul	sub_2:z:0Reshape:output:0*
T0*+
_output_shapes
:��������� 2
mul_1t
mul_2MulSoftmax_1:softmax:0Reshape_2:output:0*
T0*+
_output_shapes
:��������� 2
mul_2_
addAddV2	mul_1:z:0	mul_2:z:0*
T0*+
_output_shapes
:��������� 2
add�
Exp/xConst*
_output_shapes
:*
dtype0*U
valueLBJ"@      �IHb=Կ��������q:�N�0��y�G�z����3���i�����MbP�*���k�4�2
Exp/xF
ExpExpExp/x:output:0*
T0*
_output_shapes
:2
Expw
Reshape_4/shapeConst*
_output_shapes
:*
dtype0*!
valueB"����      2
Reshape_4/shapeq
	Reshape_4ReshapeExp:y:0Reshape_4/shape:output:0*
T0*"
_output_shapes
:2
	Reshape_4d
CastCastReshape_4:output:0*

DstT0*

SrcT0*"
_output_shapes
:2
Cast^
mul_3Muladd:z:0Cast:y:0*
T0*+
_output_shapes
:��������� 2
mul_3t
Sum_2/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Sum_2/reduction_indicest
Sum_2Sum	mul_3:z:0 Sum_2/reduction_indices:output:0*
T0*'
_output_shapes
:��������� 2
Sum_2i
Reshape_5/shape/1Const*
_output_shapes
: *
dtype0*
value
B :�2
Reshape_5/shape/1�
Reshape_5/shapePackstrided_slice:output:0Reshape_5/shape/1:output:0*
N*
T0*
_output_shapes
:2
Reshape_5/shapey
	Reshape_5Reshape	mul_3:z:0Reshape_5/shape:output:0*
T0*(
_output_shapes
:����������2
	Reshape_5�
IdentityIdentitySum_2:output:0^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*
T0*'
_output_shapes
:��������� 2

Identity�

Identity_1IdentityReshape_5:output:0^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*
T0*(
_output_shapes
:����������2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*R
_input_shapesA
?:���������:����������::::::2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:RN
(
_output_shapes
:����������
"
_user_specified_name
states/0
ȕ
�
rnn_while_body_161271$
 rnn_while_rnn_while_loop_counter*
&rnn_while_rnn_while_maximum_iterations
rnn_while_placeholder
rnn_while_placeholder_1
rnn_while_placeholder_2#
rnn_while_rnn_strided_slice_1_0_
[rnn_while_tensorarrayv2read_tensorlistgetitem_rnn_tensorarrayunstack_tensorlistfromtensor_0:
6rnn_while_ctgru_dense_matmul_readvariableop_resource_0;
7rnn_while_ctgru_dense_biasadd_readvariableop_resource_0<
8rnn_while_ctgru_dense_1_matmul_readvariableop_resource_0=
9rnn_while_ctgru_dense_1_biasadd_readvariableop_resource_0<
8rnn_while_ctgru_dense_2_matmul_readvariableop_resource_0=
9rnn_while_ctgru_dense_2_biasadd_readvariableop_resource_0
rnn_while_identity
rnn_while_identity_1
rnn_while_identity_2
rnn_while_identity_3
rnn_while_identity_4!
rnn_while_rnn_strided_slice_1]
Yrnn_while_tensorarrayv2read_tensorlistgetitem_rnn_tensorarrayunstack_tensorlistfromtensor8
4rnn_while_ctgru_dense_matmul_readvariableop_resource9
5rnn_while_ctgru_dense_biasadd_readvariableop_resource:
6rnn_while_ctgru_dense_1_matmul_readvariableop_resource;
7rnn_while_ctgru_dense_1_biasadd_readvariableop_resource:
6rnn_while_ctgru_dense_2_matmul_readvariableop_resource;
7rnn_while_ctgru_dense_2_biasadd_readvariableop_resource��,rnn/while/ctgru/dense/BiasAdd/ReadVariableOp�+rnn/while/ctgru/dense/MatMul/ReadVariableOp�.rnn/while/ctgru/dense_1/BiasAdd/ReadVariableOp�-rnn/while/ctgru/dense_1/MatMul/ReadVariableOp�.rnn/while/ctgru/dense_2/BiasAdd/ReadVariableOp�-rnn/while/ctgru/dense_2/MatMul/ReadVariableOp�
;rnn/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"�      2=
;rnn/while/TensorArrayV2Read/TensorListGetItem/element_shape�
-rnn/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem[rnn_while_tensorarrayv2read_tensorlistgetitem_rnn_tensorarrayunstack_tensorlistfromtensor_0rnn_while_placeholderDrnn/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes
:	�*
element_dtype02/
-rnn/while/TensorArrayV2Read/TensorListGetItem
rnn/while/ctgru/ShapeConst*
_output_shapes
:*
dtype0*
valueB"�      2
rnn/while/ctgru/Shape�
#rnn/while/ctgru/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2%
#rnn/while/ctgru/strided_slice/stack�
%rnn/while/ctgru/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%rnn/while/ctgru/strided_slice/stack_1�
%rnn/while/ctgru/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%rnn/while/ctgru/strided_slice/stack_2�
rnn/while/ctgru/strided_sliceStridedSlicernn/while/ctgru/Shape:output:0,rnn/while/ctgru/strided_slice/stack:output:0.rnn/while/ctgru/strided_slice/stack_1:output:0.rnn/while/ctgru/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
rnn/while/ctgru/strided_slice�
rnn/while/ctgru/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B : 2!
rnn/while/ctgru/Reshape/shape/1�
rnn/while/ctgru/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2!
rnn/while/ctgru/Reshape/shape/2�
rnn/while/ctgru/Reshape/shapePack&rnn/while/ctgru/strided_slice:output:0(rnn/while/ctgru/Reshape/shape/1:output:0(rnn/while/ctgru/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
rnn/while/ctgru/Reshape/shape�
rnn/while/ctgru/ReshapeReshapernn_while_placeholder_2&rnn/while/ctgru/Reshape/shape:output:0*
T0*#
_output_shapes
:� 2
rnn/while/ctgru/Reshape�
%rnn/while/ctgru/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2'
%rnn/while/ctgru/Sum/reduction_indices�
rnn/while/ctgru/SumSum rnn/while/ctgru/Reshape:output:0.rnn/while/ctgru/Sum/reduction_indices:output:0*
T0*
_output_shapes
:	� 2
rnn/while/ctgru/Sum�
rnn/while/ctgru/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
���������2
rnn/while/ctgru/concat/axis�
rnn/while/ctgru/concatConcatV24rnn/while/TensorArrayV2Read/TensorListGetItem:item:0rnn/while/ctgru/Sum:output:0$rnn/while/ctgru/concat/axis:output:0*
N*
T0*
_output_shapes
:	�(2
rnn/while/ctgru/concat�
+rnn/while/ctgru/dense/MatMul/ReadVariableOpReadVariableOp6rnn_while_ctgru_dense_matmul_readvariableop_resource_0*
_output_shapes
:	(�*
dtype02-
+rnn/while/ctgru/dense/MatMul/ReadVariableOp�
rnn/while/ctgru/dense/MatMulMatMulrnn/while/ctgru/concat:output:03rnn/while/ctgru/dense/MatMul/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��2
rnn/while/ctgru/dense/MatMul�
,rnn/while/ctgru/dense/BiasAdd/ReadVariableOpReadVariableOp7rnn_while_ctgru_dense_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype02.
,rnn/while/ctgru/dense/BiasAdd/ReadVariableOp�
rnn/while/ctgru/dense/BiasAddBiasAdd&rnn/while/ctgru/dense/MatMul:product:04rnn/while/ctgru/dense/BiasAdd/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��2
rnn/while/ctgru/dense/BiasAdd�
!rnn/while/ctgru/Reshape_1/shape/1Const*
_output_shapes
: *
dtype0*
value	B : 2#
!rnn/while/ctgru/Reshape_1/shape/1�
!rnn/while/ctgru/Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2#
!rnn/while/ctgru/Reshape_1/shape/2�
rnn/while/ctgru/Reshape_1/shapePack&rnn/while/ctgru/strided_slice:output:0*rnn/while/ctgru/Reshape_1/shape/1:output:0*rnn/while/ctgru/Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:2!
rnn/while/ctgru/Reshape_1/shape�
rnn/while/ctgru/Reshape_1Reshape&rnn/while/ctgru/dense/BiasAdd:output:0(rnn/while/ctgru/Reshape_1/shape:output:0*
T0*#
_output_shapes
:� 2
rnn/while/ctgru/Reshape_1�
rnn/while/ctgru/sub/yConst*
_output_shapes
:*
dtype0*5
value,B*"     �]�?�]@U]@�]�@�4�@U�@�� A2
rnn/while/ctgru/sub/y�
rnn/while/ctgru/subSub"rnn/while/ctgru/Reshape_1:output:0rnn/while/ctgru/sub/y:output:0*
T0*#
_output_shapes
:� 2
rnn/while/ctgru/sub�
rnn/while/ctgru/SquareSquarernn/while/ctgru/sub:z:0*
T0*#
_output_shapes
:� 2
rnn/while/ctgru/Square{
rnn/while/ctgru/NegNegrnn/while/ctgru/Square:y:0*
T0*#
_output_shapes
:� 2
rnn/while/ctgru/Neg�
rnn/while/ctgru/SoftmaxSoftmaxrnn/while/ctgru/Neg:y:0*
T0*#
_output_shapes
:� 2
rnn/while/ctgru/Softmax�
rnn/while/ctgru/mulMul!rnn/while/ctgru/Softmax:softmax:0 rnn/while/ctgru/Reshape:output:0*
T0*#
_output_shapes
:� 2
rnn/while/ctgru/mul�
'rnn/while/ctgru/Sum_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2)
'rnn/while/ctgru/Sum_1/reduction_indices�
rnn/while/ctgru/Sum_1Sumrnn/while/ctgru/mul:z:00rnn/while/ctgru/Sum_1/reduction_indices:output:0*
T0*
_output_shapes
:	� 2
rnn/while/ctgru/Sum_1�
rnn/while/ctgru/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :2
rnn/while/ctgru/concat_1/axis�
rnn/while/ctgru/concat_1ConcatV24rnn/while/TensorArrayV2Read/TensorListGetItem:item:0rnn/while/ctgru/Sum_1:output:0&rnn/while/ctgru/concat_1/axis:output:0*
N*
T0*
_output_shapes
:	�(2
rnn/while/ctgru/concat_1�
-rnn/while/ctgru/dense_1/MatMul/ReadVariableOpReadVariableOp8rnn_while_ctgru_dense_1_matmul_readvariableop_resource_0*
_output_shapes

:( *
dtype02/
-rnn/while/ctgru/dense_1/MatMul/ReadVariableOp�
rnn/while/ctgru/dense_1/MatMulMatMul!rnn/while/ctgru/concat_1:output:05rnn/while/ctgru/dense_1/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	� 2 
rnn/while/ctgru/dense_1/MatMul�
.rnn/while/ctgru/dense_1/BiasAdd/ReadVariableOpReadVariableOp9rnn_while_ctgru_dense_1_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype020
.rnn/while/ctgru/dense_1/BiasAdd/ReadVariableOp�
rnn/while/ctgru/dense_1/BiasAddBiasAdd(rnn/while/ctgru/dense_1/MatMul:product:06rnn/while/ctgru/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	� 2!
rnn/while/ctgru/dense_1/BiasAdd�
rnn/while/ctgru/dense_1/TanhTanh(rnn/while/ctgru/dense_1/BiasAdd:output:0*
T0*
_output_shapes
:	� 2
rnn/while/ctgru/dense_1/Tanh�
!rnn/while/ctgru/Reshape_2/shape/1Const*
_output_shapes
: *
dtype0*
value	B : 2#
!rnn/while/ctgru/Reshape_2/shape/1�
!rnn/while/ctgru/Reshape_2/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2#
!rnn/while/ctgru/Reshape_2/shape/2�
rnn/while/ctgru/Reshape_2/shapePack&rnn/while/ctgru/strided_slice:output:0*rnn/while/ctgru/Reshape_2/shape/1:output:0*rnn/while/ctgru/Reshape_2/shape/2:output:0*
N*
T0*
_output_shapes
:2!
rnn/while/ctgru/Reshape_2/shape�
rnn/while/ctgru/Reshape_2Reshape rnn/while/ctgru/dense_1/Tanh:y:0(rnn/while/ctgru/Reshape_2/shape:output:0*
T0*#
_output_shapes
:� 2
rnn/while/ctgru/Reshape_2�
-rnn/while/ctgru/dense_2/MatMul/ReadVariableOpReadVariableOp8rnn_while_ctgru_dense_2_matmul_readvariableop_resource_0*
_output_shapes
:	(�*
dtype02/
-rnn/while/ctgru/dense_2/MatMul/ReadVariableOp�
rnn/while/ctgru/dense_2/MatMulMatMulrnn/while/ctgru/concat:output:05rnn/while/ctgru/dense_2/MatMul/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��2 
rnn/while/ctgru/dense_2/MatMul�
.rnn/while/ctgru/dense_2/BiasAdd/ReadVariableOpReadVariableOp9rnn_while_ctgru_dense_2_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype020
.rnn/while/ctgru/dense_2/BiasAdd/ReadVariableOp�
rnn/while/ctgru/dense_2/BiasAddBiasAdd(rnn/while/ctgru/dense_2/MatMul:product:06rnn/while/ctgru/dense_2/BiasAdd/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��2!
rnn/while/ctgru/dense_2/BiasAdd�
!rnn/while/ctgru/Reshape_3/shape/1Const*
_output_shapes
: *
dtype0*
value	B : 2#
!rnn/while/ctgru/Reshape_3/shape/1�
!rnn/while/ctgru/Reshape_3/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2#
!rnn/while/ctgru/Reshape_3/shape/2�
rnn/while/ctgru/Reshape_3/shapePack&rnn/while/ctgru/strided_slice:output:0*rnn/while/ctgru/Reshape_3/shape/1:output:0*rnn/while/ctgru/Reshape_3/shape/2:output:0*
N*
T0*
_output_shapes
:2!
rnn/while/ctgru/Reshape_3/shape�
rnn/while/ctgru/Reshape_3Reshape(rnn/while/ctgru/dense_2/BiasAdd:output:0(rnn/while/ctgru/Reshape_3/shape:output:0*
T0*#
_output_shapes
:� 2
rnn/while/ctgru/Reshape_3�
rnn/while/ctgru/sub_1/yConst*
_output_shapes
:*
dtype0*5
value,B*"     �]�?�]@U]@�]�@�4�@U�@�� A2
rnn/while/ctgru/sub_1/y�
rnn/while/ctgru/sub_1Sub"rnn/while/ctgru/Reshape_3:output:0 rnn/while/ctgru/sub_1/y:output:0*
T0*#
_output_shapes
:� 2
rnn/while/ctgru/sub_1�
rnn/while/ctgru/Square_1Squarernn/while/ctgru/sub_1:z:0*
T0*#
_output_shapes
:� 2
rnn/while/ctgru/Square_1�
rnn/while/ctgru/Neg_1Negrnn/while/ctgru/Square_1:y:0*
T0*#
_output_shapes
:� 2
rnn/while/ctgru/Neg_1�
rnn/while/ctgru/Softmax_1Softmaxrnn/while/ctgru/Neg_1:y:0*
T0*#
_output_shapes
:� 2
rnn/while/ctgru/Softmax_1w
rnn/while/ctgru/sub_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
rnn/while/ctgru/sub_2/x�
rnn/while/ctgru/sub_2Sub rnn/while/ctgru/sub_2/x:output:0#rnn/while/ctgru/Softmax_1:softmax:0*
T0*#
_output_shapes
:� 2
rnn/while/ctgru/sub_2�
rnn/while/ctgru/mul_1Mulrnn/while/ctgru/sub_2:z:0 rnn/while/ctgru/Reshape:output:0*
T0*#
_output_shapes
:� 2
rnn/while/ctgru/mul_1�
rnn/while/ctgru/mul_2Mul#rnn/while/ctgru/Softmax_1:softmax:0"rnn/while/ctgru/Reshape_2:output:0*
T0*#
_output_shapes
:� 2
rnn/while/ctgru/mul_2�
rnn/while/ctgru/addAddV2rnn/while/ctgru/mul_1:z:0rnn/while/ctgru/mul_2:z:0*
T0*#
_output_shapes
:� 2
rnn/while/ctgru/add�
rnn/while/ctgru/Exp/xConst*
_output_shapes
:*
dtype0*U
valueLBJ"@      �IHb=Կ��������q:�N�0��y�G�z����3���i�����MbP�*���k�4�2
rnn/while/ctgru/Exp/xv
rnn/while/ctgru/ExpExprnn/while/ctgru/Exp/x:output:0*
T0*
_output_shapes
:2
rnn/while/ctgru/Exp�
rnn/while/ctgru/Reshape_4/shapeConst*
_output_shapes
:*
dtype0*!
valueB"����      2!
rnn/while/ctgru/Reshape_4/shape�
rnn/while/ctgru/Reshape_4Reshapernn/while/ctgru/Exp:y:0(rnn/while/ctgru/Reshape_4/shape:output:0*
T0*"
_output_shapes
:2
rnn/while/ctgru/Reshape_4�
rnn/while/ctgru/CastCast"rnn/while/ctgru/Reshape_4:output:0*

DstT0*

SrcT0*"
_output_shapes
:2
rnn/while/ctgru/Cast�
rnn/while/ctgru/mul_3Mulrnn/while/ctgru/add:z:0rnn/while/ctgru/Cast:y:0*
T0*#
_output_shapes
:� 2
rnn/while/ctgru/mul_3�
'rnn/while/ctgru/Sum_2/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2)
'rnn/while/ctgru/Sum_2/reduction_indices�
rnn/while/ctgru/Sum_2Sumrnn/while/ctgru/mul_3:z:00rnn/while/ctgru/Sum_2/reduction_indices:output:0*
T0*
_output_shapes
:	� 2
rnn/while/ctgru/Sum_2�
!rnn/while/ctgru/Reshape_5/shape/1Const*
_output_shapes
: *
dtype0*
value
B :�2#
!rnn/while/ctgru/Reshape_5/shape/1�
rnn/while/ctgru/Reshape_5/shapePack&rnn/while/ctgru/strided_slice:output:0*rnn/while/ctgru/Reshape_5/shape/1:output:0*
N*
T0*
_output_shapes
:2!
rnn/while/ctgru/Reshape_5/shape�
rnn/while/ctgru/Reshape_5Reshapernn/while/ctgru/mul_3:z:0(rnn/while/ctgru/Reshape_5/shape:output:0*
T0* 
_output_shapes
:
��2
rnn/while/ctgru/Reshape_5�
.rnn/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemrnn_while_placeholder_1rnn_while_placeholderrnn/while/ctgru/Sum_2:output:0*
_output_shapes
: *
element_dtype020
.rnn/while/TensorArrayV2Write/TensorListSetItemd
rnn/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
rnn/while/add/yy
rnn/while/addAddV2rnn_while_placeholderrnn/while/add/y:output:0*
T0*
_output_shapes
: 2
rnn/while/addh
rnn/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
rnn/while/add_1/y�
rnn/while/add_1AddV2 rnn_while_rnn_while_loop_counterrnn/while/add_1/y:output:0*
T0*
_output_shapes
: 2
rnn/while/add_1�
rnn/while/IdentityIdentityrnn/while/add_1:z:0-^rnn/while/ctgru/dense/BiasAdd/ReadVariableOp,^rnn/while/ctgru/dense/MatMul/ReadVariableOp/^rnn/while/ctgru/dense_1/BiasAdd/ReadVariableOp.^rnn/while/ctgru/dense_1/MatMul/ReadVariableOp/^rnn/while/ctgru/dense_2/BiasAdd/ReadVariableOp.^rnn/while/ctgru/dense_2/MatMul/ReadVariableOp*
T0*
_output_shapes
: 2
rnn/while/Identity�
rnn/while/Identity_1Identity&rnn_while_rnn_while_maximum_iterations-^rnn/while/ctgru/dense/BiasAdd/ReadVariableOp,^rnn/while/ctgru/dense/MatMul/ReadVariableOp/^rnn/while/ctgru/dense_1/BiasAdd/ReadVariableOp.^rnn/while/ctgru/dense_1/MatMul/ReadVariableOp/^rnn/while/ctgru/dense_2/BiasAdd/ReadVariableOp.^rnn/while/ctgru/dense_2/MatMul/ReadVariableOp*
T0*
_output_shapes
: 2
rnn/while/Identity_1�
rnn/while/Identity_2Identityrnn/while/add:z:0-^rnn/while/ctgru/dense/BiasAdd/ReadVariableOp,^rnn/while/ctgru/dense/MatMul/ReadVariableOp/^rnn/while/ctgru/dense_1/BiasAdd/ReadVariableOp.^rnn/while/ctgru/dense_1/MatMul/ReadVariableOp/^rnn/while/ctgru/dense_2/BiasAdd/ReadVariableOp.^rnn/while/ctgru/dense_2/MatMul/ReadVariableOp*
T0*
_output_shapes
: 2
rnn/while/Identity_2�
rnn/while/Identity_3Identity>rnn/while/TensorArrayV2Write/TensorListSetItem:output_handle:0-^rnn/while/ctgru/dense/BiasAdd/ReadVariableOp,^rnn/while/ctgru/dense/MatMul/ReadVariableOp/^rnn/while/ctgru/dense_1/BiasAdd/ReadVariableOp.^rnn/while/ctgru/dense_1/MatMul/ReadVariableOp/^rnn/while/ctgru/dense_2/BiasAdd/ReadVariableOp.^rnn/while/ctgru/dense_2/MatMul/ReadVariableOp*
T0*
_output_shapes
: 2
rnn/while/Identity_3�
rnn/while/Identity_4Identity"rnn/while/ctgru/Reshape_5:output:0-^rnn/while/ctgru/dense/BiasAdd/ReadVariableOp,^rnn/while/ctgru/dense/MatMul/ReadVariableOp/^rnn/while/ctgru/dense_1/BiasAdd/ReadVariableOp.^rnn/while/ctgru/dense_1/MatMul/ReadVariableOp/^rnn/while/ctgru/dense_2/BiasAdd/ReadVariableOp.^rnn/while/ctgru/dense_2/MatMul/ReadVariableOp*
T0* 
_output_shapes
:
��2
rnn/while/Identity_4"t
7rnn_while_ctgru_dense_1_biasadd_readvariableop_resource9rnn_while_ctgru_dense_1_biasadd_readvariableop_resource_0"r
6rnn_while_ctgru_dense_1_matmul_readvariableop_resource8rnn_while_ctgru_dense_1_matmul_readvariableop_resource_0"t
7rnn_while_ctgru_dense_2_biasadd_readvariableop_resource9rnn_while_ctgru_dense_2_biasadd_readvariableop_resource_0"r
6rnn_while_ctgru_dense_2_matmul_readvariableop_resource8rnn_while_ctgru_dense_2_matmul_readvariableop_resource_0"p
5rnn_while_ctgru_dense_biasadd_readvariableop_resource7rnn_while_ctgru_dense_biasadd_readvariableop_resource_0"n
4rnn_while_ctgru_dense_matmul_readvariableop_resource6rnn_while_ctgru_dense_matmul_readvariableop_resource_0"1
rnn_while_identityrnn/while/Identity:output:0"5
rnn_while_identity_1rnn/while/Identity_1:output:0"5
rnn_while_identity_2rnn/while/Identity_2:output:0"5
rnn_while_identity_3rnn/while/Identity_3:output:0"5
rnn_while_identity_4rnn/while/Identity_4:output:0"@
rnn_while_rnn_strided_slice_1rnn_while_rnn_strided_slice_1_0"�
Yrnn_while_tensorarrayv2read_tensorlistgetitem_rnn_tensorarrayunstack_tensorlistfromtensor[rnn_while_tensorarrayv2read_tensorlistgetitem_rnn_tensorarrayunstack_tensorlistfromtensor_0*C
_input_shapes2
0: : : : :
��: : ::::::2\
,rnn/while/ctgru/dense/BiasAdd/ReadVariableOp,rnn/while/ctgru/dense/BiasAdd/ReadVariableOp2Z
+rnn/while/ctgru/dense/MatMul/ReadVariableOp+rnn/while/ctgru/dense/MatMul/ReadVariableOp2`
.rnn/while/ctgru/dense_1/BiasAdd/ReadVariableOp.rnn/while/ctgru/dense_1/BiasAdd/ReadVariableOp2^
-rnn/while/ctgru/dense_1/MatMul/ReadVariableOp-rnn/while/ctgru/dense_1/MatMul/ReadVariableOp2`
.rnn/while/ctgru/dense_2/BiasAdd/ReadVariableOp.rnn/while/ctgru/dense_2/BiasAdd/ReadVariableOp2^
-rnn/while/ctgru/dense_2/MatMul/ReadVariableOp-rnn/while/ctgru/dense_2/MatMul/ReadVariableOp: 
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
: :&"
 
_output_shapes
:
��:

_output_shapes
: :

_output_shapes
: 
�I
�
__inference__traced_save_162752
file_prefix+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop5
1savev2_rnn_ctgru_dense_kernel_read_readvariableop3
/savev2_rnn_ctgru_dense_bias_read_readvariableop7
3savev2_rnn_ctgru_dense_1_kernel_read_readvariableop5
1savev2_rnn_ctgru_dense_1_bias_read_readvariableop7
3savev2_rnn_ctgru_dense_2_kernel_read_readvariableop5
1savev2_rnn_ctgru_dense_2_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop2
.savev2_adam_dense_kernel_m_read_readvariableop0
,savev2_adam_dense_bias_m_read_readvariableop<
8savev2_adam_rnn_ctgru_dense_kernel_m_read_readvariableop:
6savev2_adam_rnn_ctgru_dense_bias_m_read_readvariableop>
:savev2_adam_rnn_ctgru_dense_1_kernel_m_read_readvariableop<
8savev2_adam_rnn_ctgru_dense_1_bias_m_read_readvariableop>
:savev2_adam_rnn_ctgru_dense_2_kernel_m_read_readvariableop<
8savev2_adam_rnn_ctgru_dense_2_bias_m_read_readvariableop2
.savev2_adam_dense_kernel_v_read_readvariableop0
,savev2_adam_dense_bias_v_read_readvariableop<
8savev2_adam_rnn_ctgru_dense_kernel_v_read_readvariableop:
6savev2_adam_rnn_ctgru_dense_bias_v_read_readvariableop>
:savev2_adam_rnn_ctgru_dense_1_kernel_v_read_readvariableop<
8savev2_adam_rnn_ctgru_dense_1_bias_v_read_readvariableop>
:savev2_adam_rnn_ctgru_dense_2_kernel_v_read_readvariableop<
8savev2_adam_rnn_ctgru_dense_2_bias_v_read_readvariableop
savev2_const

identity_1��MergeV2Checkpoints�
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
Const_1�
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
ShardedFilename/shard�
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename�
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*�
value�B�"B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices�
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop1savev2_rnn_ctgru_dense_kernel_read_readvariableop/savev2_rnn_ctgru_dense_bias_read_readvariableop3savev2_rnn_ctgru_dense_1_kernel_read_readvariableop1savev2_rnn_ctgru_dense_1_bias_read_readvariableop3savev2_rnn_ctgru_dense_2_kernel_read_readvariableop1savev2_rnn_ctgru_dense_2_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop.savev2_adam_dense_kernel_m_read_readvariableop,savev2_adam_dense_bias_m_read_readvariableop8savev2_adam_rnn_ctgru_dense_kernel_m_read_readvariableop6savev2_adam_rnn_ctgru_dense_bias_m_read_readvariableop:savev2_adam_rnn_ctgru_dense_1_kernel_m_read_readvariableop8savev2_adam_rnn_ctgru_dense_1_bias_m_read_readvariableop:savev2_adam_rnn_ctgru_dense_2_kernel_m_read_readvariableop8savev2_adam_rnn_ctgru_dense_2_bias_m_read_readvariableop.savev2_adam_dense_kernel_v_read_readvariableop,savev2_adam_dense_bias_v_read_readvariableop8savev2_adam_rnn_ctgru_dense_kernel_v_read_readvariableop6savev2_adam_rnn_ctgru_dense_bias_v_read_readvariableop:savev2_adam_rnn_ctgru_dense_1_kernel_v_read_readvariableop8savev2_adam_rnn_ctgru_dense_1_bias_v_read_readvariableop:savev2_adam_rnn_ctgru_dense_2_kernel_v_read_readvariableop8savev2_adam_rnn_ctgru_dense_2_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *0
dtypes&
$2"	2
SaveV2�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes�
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

identity_1Identity_1:output:0*�
_input_shapes�
�: : 
:
: : : : : :	(�:�:( : :	(�:�: : : : : 
:
:	(�:�:( : :	(�:�: 
:
:	(�:�:( : :	(�:�: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

: 
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
:	(�:!	

_output_shapes	
:�:$
 

_output_shapes

:( : 

_output_shapes
: :%!

_output_shapes
:	(�:!

_output_shapes	
:�:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

: 
: 

_output_shapes
:
:%!

_output_shapes
:	(�:!

_output_shapes	
:�:$ 

_output_shapes

:( : 

_output_shapes
: :%!

_output_shapes
:	(�:!

_output_shapes	
:�:$ 

_output_shapes

: 
: 

_output_shapes
:
:%!

_output_shapes
:	(�:!

_output_shapes	
:�:$ 

_output_shapes

:( : 

_output_shapes
: :% !

_output_shapes
:	(�:!!

_output_shapes	
:�:"

_output_shapes
: 
�	
�
rnn_while_cond_161017$
 rnn_while_rnn_while_loop_counter*
&rnn_while_rnn_while_maximum_iterations
rnn_while_placeholder
rnn_while_placeholder_1
rnn_while_placeholder_2&
"rnn_while_less_rnn_strided_slice_1<
8rnn_while_rnn_while_cond_161017___redundant_placeholder0<
8rnn_while_rnn_while_cond_161017___redundant_placeholder1<
8rnn_while_rnn_while_cond_161017___redundant_placeholder2<
8rnn_while_rnn_while_cond_161017___redundant_placeholder3<
8rnn_while_rnn_while_cond_161017___redundant_placeholder4<
8rnn_while_rnn_while_cond_161017___redundant_placeholder5<
8rnn_while_rnn_while_cond_161017___redundant_placeholder6
rnn_while_identity
�
rnn/while/LessLessrnn_while_placeholder"rnn_while_less_rnn_strided_slice_1*
T0*
_output_shapes
: 2
rnn/while/Lessi
rnn/while/IdentityIdentityrnn/while/Less:z:0*
T0
*
_output_shapes
: 2
rnn/while/Identity"1
rnn_while_identityrnn/while/Identity:output:0*E
_input_shapes4
2: : : : :
��: :::::::: 
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
: :&"
 
_output_shapes
:
��:

_output_shapes
: :

_output_shapes
:
�
�
B__inference_ct_gru_layer_call_and_return_conditional_losses_160811

inputs
inputs_1

rnn_160792

rnn_160794

rnn_160796

rnn_160798

rnn_160800

rnn_160802
dense_160805
dense_160807
identity��dense/StatefulPartitionedCall�rnn/StatefulPartitionedCall�
rnn/StatefulPartitionedCallStatefulPartitionedCallinputs
rnn_160792
rnn_160794
rnn_160796
rnn_160798
rnn_160800
rnn_160802*
Tin
	2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:	� *(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_rnn_layer_call_and_return_conditional_losses_1604402
rnn/StatefulPartitionedCall�
dense/StatefulPartitionedCallStatefulPartitionedCall$rnn/StatefulPartitionedCall:output:0dense_160805dense_160807*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:	�
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_1607442
dense/StatefulPartitionedCall�
IdentityIdentity&dense/StatefulPartitionedCall:output:0^dense/StatefulPartitionedCall^rnn/StatefulPartitionedCall*
T0*
_output_shapes
:	�
2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:�b:�b::::::::2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2:
rnn/StatefulPartitionedCallrnn/StatefulPartitionedCall:K G
#
_output_shapes
:�b
 
_user_specified_nameinputs:KG
#
_output_shapes
:�b
 
_user_specified_nameinputs
�
�
$__inference_signature_wrapper_160907
input_1
input_2
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1input_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2
*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:	�
**
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8� **
f%R#
!__inference__wrapped_model_1595552
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*
_output_shapes
:	�
2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:�b:�b::::::::22
StatefulPartitionedCallStatefulPartitionedCall:L H
#
_output_shapes
:�b
!
_user_specified_name	input_1:LH
#
_output_shapes
:�b
!
_user_specified_name	input_2
�
�
$__inference_rnn_layer_call_fn_161983
inputs_0
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_rnn_layer_call_and_return_conditional_losses_1601752
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:��������� 2

Identity"
identityIdentity:output:0*K
_input_shapes:
8:������������������::::::22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs/0
ȕ
�
rnn_while_body_161018$
 rnn_while_rnn_while_loop_counter*
&rnn_while_rnn_while_maximum_iterations
rnn_while_placeholder
rnn_while_placeholder_1
rnn_while_placeholder_2#
rnn_while_rnn_strided_slice_1_0_
[rnn_while_tensorarrayv2read_tensorlistgetitem_rnn_tensorarrayunstack_tensorlistfromtensor_0:
6rnn_while_ctgru_dense_matmul_readvariableop_resource_0;
7rnn_while_ctgru_dense_biasadd_readvariableop_resource_0<
8rnn_while_ctgru_dense_1_matmul_readvariableop_resource_0=
9rnn_while_ctgru_dense_1_biasadd_readvariableop_resource_0<
8rnn_while_ctgru_dense_2_matmul_readvariableop_resource_0=
9rnn_while_ctgru_dense_2_biasadd_readvariableop_resource_0
rnn_while_identity
rnn_while_identity_1
rnn_while_identity_2
rnn_while_identity_3
rnn_while_identity_4!
rnn_while_rnn_strided_slice_1]
Yrnn_while_tensorarrayv2read_tensorlistgetitem_rnn_tensorarrayunstack_tensorlistfromtensor8
4rnn_while_ctgru_dense_matmul_readvariableop_resource9
5rnn_while_ctgru_dense_biasadd_readvariableop_resource:
6rnn_while_ctgru_dense_1_matmul_readvariableop_resource;
7rnn_while_ctgru_dense_1_biasadd_readvariableop_resource:
6rnn_while_ctgru_dense_2_matmul_readvariableop_resource;
7rnn_while_ctgru_dense_2_biasadd_readvariableop_resource��,rnn/while/ctgru/dense/BiasAdd/ReadVariableOp�+rnn/while/ctgru/dense/MatMul/ReadVariableOp�.rnn/while/ctgru/dense_1/BiasAdd/ReadVariableOp�-rnn/while/ctgru/dense_1/MatMul/ReadVariableOp�.rnn/while/ctgru/dense_2/BiasAdd/ReadVariableOp�-rnn/while/ctgru/dense_2/MatMul/ReadVariableOp�
;rnn/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"�      2=
;rnn/while/TensorArrayV2Read/TensorListGetItem/element_shape�
-rnn/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem[rnn_while_tensorarrayv2read_tensorlistgetitem_rnn_tensorarrayunstack_tensorlistfromtensor_0rnn_while_placeholderDrnn/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes
:	�*
element_dtype02/
-rnn/while/TensorArrayV2Read/TensorListGetItem
rnn/while/ctgru/ShapeConst*
_output_shapes
:*
dtype0*
valueB"�      2
rnn/while/ctgru/Shape�
#rnn/while/ctgru/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2%
#rnn/while/ctgru/strided_slice/stack�
%rnn/while/ctgru/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%rnn/while/ctgru/strided_slice/stack_1�
%rnn/while/ctgru/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%rnn/while/ctgru/strided_slice/stack_2�
rnn/while/ctgru/strided_sliceStridedSlicernn/while/ctgru/Shape:output:0,rnn/while/ctgru/strided_slice/stack:output:0.rnn/while/ctgru/strided_slice/stack_1:output:0.rnn/while/ctgru/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
rnn/while/ctgru/strided_slice�
rnn/while/ctgru/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B : 2!
rnn/while/ctgru/Reshape/shape/1�
rnn/while/ctgru/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2!
rnn/while/ctgru/Reshape/shape/2�
rnn/while/ctgru/Reshape/shapePack&rnn/while/ctgru/strided_slice:output:0(rnn/while/ctgru/Reshape/shape/1:output:0(rnn/while/ctgru/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
rnn/while/ctgru/Reshape/shape�
rnn/while/ctgru/ReshapeReshapernn_while_placeholder_2&rnn/while/ctgru/Reshape/shape:output:0*
T0*#
_output_shapes
:� 2
rnn/while/ctgru/Reshape�
%rnn/while/ctgru/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2'
%rnn/while/ctgru/Sum/reduction_indices�
rnn/while/ctgru/SumSum rnn/while/ctgru/Reshape:output:0.rnn/while/ctgru/Sum/reduction_indices:output:0*
T0*
_output_shapes
:	� 2
rnn/while/ctgru/Sum�
rnn/while/ctgru/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
���������2
rnn/while/ctgru/concat/axis�
rnn/while/ctgru/concatConcatV24rnn/while/TensorArrayV2Read/TensorListGetItem:item:0rnn/while/ctgru/Sum:output:0$rnn/while/ctgru/concat/axis:output:0*
N*
T0*
_output_shapes
:	�(2
rnn/while/ctgru/concat�
+rnn/while/ctgru/dense/MatMul/ReadVariableOpReadVariableOp6rnn_while_ctgru_dense_matmul_readvariableop_resource_0*
_output_shapes
:	(�*
dtype02-
+rnn/while/ctgru/dense/MatMul/ReadVariableOp�
rnn/while/ctgru/dense/MatMulMatMulrnn/while/ctgru/concat:output:03rnn/while/ctgru/dense/MatMul/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��2
rnn/while/ctgru/dense/MatMul�
,rnn/while/ctgru/dense/BiasAdd/ReadVariableOpReadVariableOp7rnn_while_ctgru_dense_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype02.
,rnn/while/ctgru/dense/BiasAdd/ReadVariableOp�
rnn/while/ctgru/dense/BiasAddBiasAdd&rnn/while/ctgru/dense/MatMul:product:04rnn/while/ctgru/dense/BiasAdd/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��2
rnn/while/ctgru/dense/BiasAdd�
!rnn/while/ctgru/Reshape_1/shape/1Const*
_output_shapes
: *
dtype0*
value	B : 2#
!rnn/while/ctgru/Reshape_1/shape/1�
!rnn/while/ctgru/Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2#
!rnn/while/ctgru/Reshape_1/shape/2�
rnn/while/ctgru/Reshape_1/shapePack&rnn/while/ctgru/strided_slice:output:0*rnn/while/ctgru/Reshape_1/shape/1:output:0*rnn/while/ctgru/Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:2!
rnn/while/ctgru/Reshape_1/shape�
rnn/while/ctgru/Reshape_1Reshape&rnn/while/ctgru/dense/BiasAdd:output:0(rnn/while/ctgru/Reshape_1/shape:output:0*
T0*#
_output_shapes
:� 2
rnn/while/ctgru/Reshape_1�
rnn/while/ctgru/sub/yConst*
_output_shapes
:*
dtype0*5
value,B*"     �]�?�]@U]@�]�@�4�@U�@�� A2
rnn/while/ctgru/sub/y�
rnn/while/ctgru/subSub"rnn/while/ctgru/Reshape_1:output:0rnn/while/ctgru/sub/y:output:0*
T0*#
_output_shapes
:� 2
rnn/while/ctgru/sub�
rnn/while/ctgru/SquareSquarernn/while/ctgru/sub:z:0*
T0*#
_output_shapes
:� 2
rnn/while/ctgru/Square{
rnn/while/ctgru/NegNegrnn/while/ctgru/Square:y:0*
T0*#
_output_shapes
:� 2
rnn/while/ctgru/Neg�
rnn/while/ctgru/SoftmaxSoftmaxrnn/while/ctgru/Neg:y:0*
T0*#
_output_shapes
:� 2
rnn/while/ctgru/Softmax�
rnn/while/ctgru/mulMul!rnn/while/ctgru/Softmax:softmax:0 rnn/while/ctgru/Reshape:output:0*
T0*#
_output_shapes
:� 2
rnn/while/ctgru/mul�
'rnn/while/ctgru/Sum_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2)
'rnn/while/ctgru/Sum_1/reduction_indices�
rnn/while/ctgru/Sum_1Sumrnn/while/ctgru/mul:z:00rnn/while/ctgru/Sum_1/reduction_indices:output:0*
T0*
_output_shapes
:	� 2
rnn/while/ctgru/Sum_1�
rnn/while/ctgru/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :2
rnn/while/ctgru/concat_1/axis�
rnn/while/ctgru/concat_1ConcatV24rnn/while/TensorArrayV2Read/TensorListGetItem:item:0rnn/while/ctgru/Sum_1:output:0&rnn/while/ctgru/concat_1/axis:output:0*
N*
T0*
_output_shapes
:	�(2
rnn/while/ctgru/concat_1�
-rnn/while/ctgru/dense_1/MatMul/ReadVariableOpReadVariableOp8rnn_while_ctgru_dense_1_matmul_readvariableop_resource_0*
_output_shapes

:( *
dtype02/
-rnn/while/ctgru/dense_1/MatMul/ReadVariableOp�
rnn/while/ctgru/dense_1/MatMulMatMul!rnn/while/ctgru/concat_1:output:05rnn/while/ctgru/dense_1/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	� 2 
rnn/while/ctgru/dense_1/MatMul�
.rnn/while/ctgru/dense_1/BiasAdd/ReadVariableOpReadVariableOp9rnn_while_ctgru_dense_1_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype020
.rnn/while/ctgru/dense_1/BiasAdd/ReadVariableOp�
rnn/while/ctgru/dense_1/BiasAddBiasAdd(rnn/while/ctgru/dense_1/MatMul:product:06rnn/while/ctgru/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	� 2!
rnn/while/ctgru/dense_1/BiasAdd�
rnn/while/ctgru/dense_1/TanhTanh(rnn/while/ctgru/dense_1/BiasAdd:output:0*
T0*
_output_shapes
:	� 2
rnn/while/ctgru/dense_1/Tanh�
!rnn/while/ctgru/Reshape_2/shape/1Const*
_output_shapes
: *
dtype0*
value	B : 2#
!rnn/while/ctgru/Reshape_2/shape/1�
!rnn/while/ctgru/Reshape_2/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2#
!rnn/while/ctgru/Reshape_2/shape/2�
rnn/while/ctgru/Reshape_2/shapePack&rnn/while/ctgru/strided_slice:output:0*rnn/while/ctgru/Reshape_2/shape/1:output:0*rnn/while/ctgru/Reshape_2/shape/2:output:0*
N*
T0*
_output_shapes
:2!
rnn/while/ctgru/Reshape_2/shape�
rnn/while/ctgru/Reshape_2Reshape rnn/while/ctgru/dense_1/Tanh:y:0(rnn/while/ctgru/Reshape_2/shape:output:0*
T0*#
_output_shapes
:� 2
rnn/while/ctgru/Reshape_2�
-rnn/while/ctgru/dense_2/MatMul/ReadVariableOpReadVariableOp8rnn_while_ctgru_dense_2_matmul_readvariableop_resource_0*
_output_shapes
:	(�*
dtype02/
-rnn/while/ctgru/dense_2/MatMul/ReadVariableOp�
rnn/while/ctgru/dense_2/MatMulMatMulrnn/while/ctgru/concat:output:05rnn/while/ctgru/dense_2/MatMul/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��2 
rnn/while/ctgru/dense_2/MatMul�
.rnn/while/ctgru/dense_2/BiasAdd/ReadVariableOpReadVariableOp9rnn_while_ctgru_dense_2_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype020
.rnn/while/ctgru/dense_2/BiasAdd/ReadVariableOp�
rnn/while/ctgru/dense_2/BiasAddBiasAdd(rnn/while/ctgru/dense_2/MatMul:product:06rnn/while/ctgru/dense_2/BiasAdd/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��2!
rnn/while/ctgru/dense_2/BiasAdd�
!rnn/while/ctgru/Reshape_3/shape/1Const*
_output_shapes
: *
dtype0*
value	B : 2#
!rnn/while/ctgru/Reshape_3/shape/1�
!rnn/while/ctgru/Reshape_3/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2#
!rnn/while/ctgru/Reshape_3/shape/2�
rnn/while/ctgru/Reshape_3/shapePack&rnn/while/ctgru/strided_slice:output:0*rnn/while/ctgru/Reshape_3/shape/1:output:0*rnn/while/ctgru/Reshape_3/shape/2:output:0*
N*
T0*
_output_shapes
:2!
rnn/while/ctgru/Reshape_3/shape�
rnn/while/ctgru/Reshape_3Reshape(rnn/while/ctgru/dense_2/BiasAdd:output:0(rnn/while/ctgru/Reshape_3/shape:output:0*
T0*#
_output_shapes
:� 2
rnn/while/ctgru/Reshape_3�
rnn/while/ctgru/sub_1/yConst*
_output_shapes
:*
dtype0*5
value,B*"     �]�?�]@U]@�]�@�4�@U�@�� A2
rnn/while/ctgru/sub_1/y�
rnn/while/ctgru/sub_1Sub"rnn/while/ctgru/Reshape_3:output:0 rnn/while/ctgru/sub_1/y:output:0*
T0*#
_output_shapes
:� 2
rnn/while/ctgru/sub_1�
rnn/while/ctgru/Square_1Squarernn/while/ctgru/sub_1:z:0*
T0*#
_output_shapes
:� 2
rnn/while/ctgru/Square_1�
rnn/while/ctgru/Neg_1Negrnn/while/ctgru/Square_1:y:0*
T0*#
_output_shapes
:� 2
rnn/while/ctgru/Neg_1�
rnn/while/ctgru/Softmax_1Softmaxrnn/while/ctgru/Neg_1:y:0*
T0*#
_output_shapes
:� 2
rnn/while/ctgru/Softmax_1w
rnn/while/ctgru/sub_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
rnn/while/ctgru/sub_2/x�
rnn/while/ctgru/sub_2Sub rnn/while/ctgru/sub_2/x:output:0#rnn/while/ctgru/Softmax_1:softmax:0*
T0*#
_output_shapes
:� 2
rnn/while/ctgru/sub_2�
rnn/while/ctgru/mul_1Mulrnn/while/ctgru/sub_2:z:0 rnn/while/ctgru/Reshape:output:0*
T0*#
_output_shapes
:� 2
rnn/while/ctgru/mul_1�
rnn/while/ctgru/mul_2Mul#rnn/while/ctgru/Softmax_1:softmax:0"rnn/while/ctgru/Reshape_2:output:0*
T0*#
_output_shapes
:� 2
rnn/while/ctgru/mul_2�
rnn/while/ctgru/addAddV2rnn/while/ctgru/mul_1:z:0rnn/while/ctgru/mul_2:z:0*
T0*#
_output_shapes
:� 2
rnn/while/ctgru/add�
rnn/while/ctgru/Exp/xConst*
_output_shapes
:*
dtype0*U
valueLBJ"@      �IHb=Կ��������q:�N�0��y�G�z����3���i�����MbP�*���k�4�2
rnn/while/ctgru/Exp/xv
rnn/while/ctgru/ExpExprnn/while/ctgru/Exp/x:output:0*
T0*
_output_shapes
:2
rnn/while/ctgru/Exp�
rnn/while/ctgru/Reshape_4/shapeConst*
_output_shapes
:*
dtype0*!
valueB"����      2!
rnn/while/ctgru/Reshape_4/shape�
rnn/while/ctgru/Reshape_4Reshapernn/while/ctgru/Exp:y:0(rnn/while/ctgru/Reshape_4/shape:output:0*
T0*"
_output_shapes
:2
rnn/while/ctgru/Reshape_4�
rnn/while/ctgru/CastCast"rnn/while/ctgru/Reshape_4:output:0*

DstT0*

SrcT0*"
_output_shapes
:2
rnn/while/ctgru/Cast�
rnn/while/ctgru/mul_3Mulrnn/while/ctgru/add:z:0rnn/while/ctgru/Cast:y:0*
T0*#
_output_shapes
:� 2
rnn/while/ctgru/mul_3�
'rnn/while/ctgru/Sum_2/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2)
'rnn/while/ctgru/Sum_2/reduction_indices�
rnn/while/ctgru/Sum_2Sumrnn/while/ctgru/mul_3:z:00rnn/while/ctgru/Sum_2/reduction_indices:output:0*
T0*
_output_shapes
:	� 2
rnn/while/ctgru/Sum_2�
!rnn/while/ctgru/Reshape_5/shape/1Const*
_output_shapes
: *
dtype0*
value
B :�2#
!rnn/while/ctgru/Reshape_5/shape/1�
rnn/while/ctgru/Reshape_5/shapePack&rnn/while/ctgru/strided_slice:output:0*rnn/while/ctgru/Reshape_5/shape/1:output:0*
N*
T0*
_output_shapes
:2!
rnn/while/ctgru/Reshape_5/shape�
rnn/while/ctgru/Reshape_5Reshapernn/while/ctgru/mul_3:z:0(rnn/while/ctgru/Reshape_5/shape:output:0*
T0* 
_output_shapes
:
��2
rnn/while/ctgru/Reshape_5�
.rnn/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemrnn_while_placeholder_1rnn_while_placeholderrnn/while/ctgru/Sum_2:output:0*
_output_shapes
: *
element_dtype020
.rnn/while/TensorArrayV2Write/TensorListSetItemd
rnn/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
rnn/while/add/yy
rnn/while/addAddV2rnn_while_placeholderrnn/while/add/y:output:0*
T0*
_output_shapes
: 2
rnn/while/addh
rnn/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
rnn/while/add_1/y�
rnn/while/add_1AddV2 rnn_while_rnn_while_loop_counterrnn/while/add_1/y:output:0*
T0*
_output_shapes
: 2
rnn/while/add_1�
rnn/while/IdentityIdentityrnn/while/add_1:z:0-^rnn/while/ctgru/dense/BiasAdd/ReadVariableOp,^rnn/while/ctgru/dense/MatMul/ReadVariableOp/^rnn/while/ctgru/dense_1/BiasAdd/ReadVariableOp.^rnn/while/ctgru/dense_1/MatMul/ReadVariableOp/^rnn/while/ctgru/dense_2/BiasAdd/ReadVariableOp.^rnn/while/ctgru/dense_2/MatMul/ReadVariableOp*
T0*
_output_shapes
: 2
rnn/while/Identity�
rnn/while/Identity_1Identity&rnn_while_rnn_while_maximum_iterations-^rnn/while/ctgru/dense/BiasAdd/ReadVariableOp,^rnn/while/ctgru/dense/MatMul/ReadVariableOp/^rnn/while/ctgru/dense_1/BiasAdd/ReadVariableOp.^rnn/while/ctgru/dense_1/MatMul/ReadVariableOp/^rnn/while/ctgru/dense_2/BiasAdd/ReadVariableOp.^rnn/while/ctgru/dense_2/MatMul/ReadVariableOp*
T0*
_output_shapes
: 2
rnn/while/Identity_1�
rnn/while/Identity_2Identityrnn/while/add:z:0-^rnn/while/ctgru/dense/BiasAdd/ReadVariableOp,^rnn/while/ctgru/dense/MatMul/ReadVariableOp/^rnn/while/ctgru/dense_1/BiasAdd/ReadVariableOp.^rnn/while/ctgru/dense_1/MatMul/ReadVariableOp/^rnn/while/ctgru/dense_2/BiasAdd/ReadVariableOp.^rnn/while/ctgru/dense_2/MatMul/ReadVariableOp*
T0*
_output_shapes
: 2
rnn/while/Identity_2�
rnn/while/Identity_3Identity>rnn/while/TensorArrayV2Write/TensorListSetItem:output_handle:0-^rnn/while/ctgru/dense/BiasAdd/ReadVariableOp,^rnn/while/ctgru/dense/MatMul/ReadVariableOp/^rnn/while/ctgru/dense_1/BiasAdd/ReadVariableOp.^rnn/while/ctgru/dense_1/MatMul/ReadVariableOp/^rnn/while/ctgru/dense_2/BiasAdd/ReadVariableOp.^rnn/while/ctgru/dense_2/MatMul/ReadVariableOp*
T0*
_output_shapes
: 2
rnn/while/Identity_3�
rnn/while/Identity_4Identity"rnn/while/ctgru/Reshape_5:output:0-^rnn/while/ctgru/dense/BiasAdd/ReadVariableOp,^rnn/while/ctgru/dense/MatMul/ReadVariableOp/^rnn/while/ctgru/dense_1/BiasAdd/ReadVariableOp.^rnn/while/ctgru/dense_1/MatMul/ReadVariableOp/^rnn/while/ctgru/dense_2/BiasAdd/ReadVariableOp.^rnn/while/ctgru/dense_2/MatMul/ReadVariableOp*
T0* 
_output_shapes
:
��2
rnn/while/Identity_4"t
7rnn_while_ctgru_dense_1_biasadd_readvariableop_resource9rnn_while_ctgru_dense_1_biasadd_readvariableop_resource_0"r
6rnn_while_ctgru_dense_1_matmul_readvariableop_resource8rnn_while_ctgru_dense_1_matmul_readvariableop_resource_0"t
7rnn_while_ctgru_dense_2_biasadd_readvariableop_resource9rnn_while_ctgru_dense_2_biasadd_readvariableop_resource_0"r
6rnn_while_ctgru_dense_2_matmul_readvariableop_resource8rnn_while_ctgru_dense_2_matmul_readvariableop_resource_0"p
5rnn_while_ctgru_dense_biasadd_readvariableop_resource7rnn_while_ctgru_dense_biasadd_readvariableop_resource_0"n
4rnn_while_ctgru_dense_matmul_readvariableop_resource6rnn_while_ctgru_dense_matmul_readvariableop_resource_0"1
rnn_while_identityrnn/while/Identity:output:0"5
rnn_while_identity_1rnn/while/Identity_1:output:0"5
rnn_while_identity_2rnn/while/Identity_2:output:0"5
rnn_while_identity_3rnn/while/Identity_3:output:0"5
rnn_while_identity_4rnn/while/Identity_4:output:0"@
rnn_while_rnn_strided_slice_1rnn_while_rnn_strided_slice_1_0"�
Yrnn_while_tensorarrayv2read_tensorlistgetitem_rnn_tensorarrayunstack_tensorlistfromtensor[rnn_while_tensorarrayv2read_tensorlistgetitem_rnn_tensorarrayunstack_tensorlistfromtensor_0*C
_input_shapes2
0: : : : :
��: : ::::::2\
,rnn/while/ctgru/dense/BiasAdd/ReadVariableOp,rnn/while/ctgru/dense/BiasAdd/ReadVariableOp2Z
+rnn/while/ctgru/dense/MatMul/ReadVariableOp+rnn/while/ctgru/dense/MatMul/ReadVariableOp2`
.rnn/while/ctgru/dense_1/BiasAdd/ReadVariableOp.rnn/while/ctgru/dense_1/BiasAdd/ReadVariableOp2^
-rnn/while/ctgru/dense_1/MatMul/ReadVariableOp-rnn/while/ctgru/dense_1/MatMul/ReadVariableOp2`
.rnn/while/ctgru/dense_2/BiasAdd/ReadVariableOp.rnn/while/ctgru/dense_2/BiasAdd/ReadVariableOp2^
-rnn/while/ctgru/dense_2/MatMul/ReadVariableOp-rnn/while/ctgru/dense_2/MatMul/ReadVariableOp: 
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
: :&"
 
_output_shapes
:
��:

_output_shapes
: :

_output_shapes
: 
�
�
while_cond_160549
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_160549___redundant_placeholder04
0while_while_cond_160549___redundant_placeholder14
0while_while_cond_160549___redundant_placeholder24
0while_while_cond_160549___redundant_placeholder34
0while_while_cond_160549___redundant_placeholder44
0while_while_cond_160549___redundant_placeholder54
0while_while_cond_160549___redundant_placeholder6
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
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
while_identitywhile/Identity:output:0*E
_input_shapes4
2: : : : :
��: :::::::: 
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
: :&"
 
_output_shapes
:
��:

_output_shapes
: :

_output_shapes
:
�	
�
while_cond_161566
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_161566___redundant_placeholder04
0while_while_cond_161566___redundant_placeholder14
0while_while_cond_161566___redundant_placeholder24
0while_while_cond_161566___redundant_placeholder34
0while_while_cond_161566___redundant_placeholder44
0while_while_cond_161566___redundant_placeholder54
0while_while_cond_161566___redundant_placeholder6
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
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
while_identitywhile/Identity:output:0*M
_input_shapes<
:: : : : :����������: :::::::: 
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
: :.*
(
_output_shapes
:����������:

_output_shapes
: :

_output_shapes
:
މ
�
while_body_160550
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_06
2while_ctgru_dense_matmul_readvariableop_resource_07
3while_ctgru_dense_biasadd_readvariableop_resource_08
4while_ctgru_dense_1_matmul_readvariableop_resource_09
5while_ctgru_dense_1_biasadd_readvariableop_resource_08
4while_ctgru_dense_2_matmul_readvariableop_resource_09
5while_ctgru_dense_2_biasadd_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor4
0while_ctgru_dense_matmul_readvariableop_resource5
1while_ctgru_dense_biasadd_readvariableop_resource6
2while_ctgru_dense_1_matmul_readvariableop_resource7
3while_ctgru_dense_1_biasadd_readvariableop_resource6
2while_ctgru_dense_2_matmul_readvariableop_resource7
3while_ctgru_dense_2_biasadd_readvariableop_resource��(while/ctgru/dense/BiasAdd/ReadVariableOp�'while/ctgru/dense/MatMul/ReadVariableOp�*while/ctgru/dense_1/BiasAdd/ReadVariableOp�)while/ctgru/dense_1/MatMul/ReadVariableOp�*while/ctgru/dense_2/BiasAdd/ReadVariableOp�)while/ctgru/dense_2/MatMul/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"�      29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes
:	�*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemw
while/ctgru/ShapeConst*
_output_shapes
:*
dtype0*
valueB"�      2
while/ctgru/Shape�
while/ctgru/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2!
while/ctgru/strided_slice/stack�
!while/ctgru/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2#
!while/ctgru/strided_slice/stack_1�
!while/ctgru/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!while/ctgru/strided_slice/stack_2�
while/ctgru/strided_sliceStridedSlicewhile/ctgru/Shape:output:0(while/ctgru/strided_slice/stack:output:0*while/ctgru/strided_slice/stack_1:output:0*while/ctgru/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
while/ctgru/strided_slice|
while/ctgru/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B : 2
while/ctgru/Reshape/shape/1|
while/ctgru/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
while/ctgru/Reshape/shape/2�
while/ctgru/Reshape/shapePack"while/ctgru/strided_slice:output:0$while/ctgru/Reshape/shape/1:output:0$while/ctgru/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
while/ctgru/Reshape/shape�
while/ctgru/ReshapeReshapewhile_placeholder_2"while/ctgru/Reshape/shape:output:0*
T0*#
_output_shapes
:� 2
while/ctgru/Reshape�
!while/ctgru/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/ctgru/Sum/reduction_indices�
while/ctgru/SumSumwhile/ctgru/Reshape:output:0*while/ctgru/Sum/reduction_indices:output:0*
T0*
_output_shapes
:	� 2
while/ctgru/Sum}
while/ctgru/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
���������2
while/ctgru/concat/axis�
while/ctgru/concatConcatV20while/TensorArrayV2Read/TensorListGetItem:item:0while/ctgru/Sum:output:0 while/ctgru/concat/axis:output:0*
N*
T0*
_output_shapes
:	�(2
while/ctgru/concat�
'while/ctgru/dense/MatMul/ReadVariableOpReadVariableOp2while_ctgru_dense_matmul_readvariableop_resource_0*
_output_shapes
:	(�*
dtype02)
'while/ctgru/dense/MatMul/ReadVariableOp�
while/ctgru/dense/MatMulMatMulwhile/ctgru/concat:output:0/while/ctgru/dense/MatMul/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��2
while/ctgru/dense/MatMul�
(while/ctgru/dense/BiasAdd/ReadVariableOpReadVariableOp3while_ctgru_dense_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype02*
(while/ctgru/dense/BiasAdd/ReadVariableOp�
while/ctgru/dense/BiasAddBiasAdd"while/ctgru/dense/MatMul:product:00while/ctgru/dense/BiasAdd/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��2
while/ctgru/dense/BiasAdd�
while/ctgru/Reshape_1/shape/1Const*
_output_shapes
: *
dtype0*
value	B : 2
while/ctgru/Reshape_1/shape/1�
while/ctgru/Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
while/ctgru/Reshape_1/shape/2�
while/ctgru/Reshape_1/shapePack"while/ctgru/strided_slice:output:0&while/ctgru/Reshape_1/shape/1:output:0&while/ctgru/Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:2
while/ctgru/Reshape_1/shape�
while/ctgru/Reshape_1Reshape"while/ctgru/dense/BiasAdd:output:0$while/ctgru/Reshape_1/shape:output:0*
T0*#
_output_shapes
:� 2
while/ctgru/Reshape_1�
while/ctgru/sub/yConst*
_output_shapes
:*
dtype0*5
value,B*"     �]�?�]@U]@�]�@�4�@U�@�� A2
while/ctgru/sub/y�
while/ctgru/subSubwhile/ctgru/Reshape_1:output:0while/ctgru/sub/y:output:0*
T0*#
_output_shapes
:� 2
while/ctgru/subu
while/ctgru/SquareSquarewhile/ctgru/sub:z:0*
T0*#
_output_shapes
:� 2
while/ctgru/Squareo
while/ctgru/NegNegwhile/ctgru/Square:y:0*
T0*#
_output_shapes
:� 2
while/ctgru/Negx
while/ctgru/SoftmaxSoftmaxwhile/ctgru/Neg:y:0*
T0*#
_output_shapes
:� 2
while/ctgru/Softmax�
while/ctgru/mulMulwhile/ctgru/Softmax:softmax:0while/ctgru/Reshape:output:0*
T0*#
_output_shapes
:� 2
while/ctgru/mul�
#while/ctgru/Sum_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/ctgru/Sum_1/reduction_indices�
while/ctgru/Sum_1Sumwhile/ctgru/mul:z:0,while/ctgru/Sum_1/reduction_indices:output:0*
T0*
_output_shapes
:	� 2
while/ctgru/Sum_1x
while/ctgru/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :2
while/ctgru/concat_1/axis�
while/ctgru/concat_1ConcatV20while/TensorArrayV2Read/TensorListGetItem:item:0while/ctgru/Sum_1:output:0"while/ctgru/concat_1/axis:output:0*
N*
T0*
_output_shapes
:	�(2
while/ctgru/concat_1�
)while/ctgru/dense_1/MatMul/ReadVariableOpReadVariableOp4while_ctgru_dense_1_matmul_readvariableop_resource_0*
_output_shapes

:( *
dtype02+
)while/ctgru/dense_1/MatMul/ReadVariableOp�
while/ctgru/dense_1/MatMulMatMulwhile/ctgru/concat_1:output:01while/ctgru/dense_1/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	� 2
while/ctgru/dense_1/MatMul�
*while/ctgru/dense_1/BiasAdd/ReadVariableOpReadVariableOp5while_ctgru_dense_1_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype02,
*while/ctgru/dense_1/BiasAdd/ReadVariableOp�
while/ctgru/dense_1/BiasAddBiasAdd$while/ctgru/dense_1/MatMul:product:02while/ctgru/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	� 2
while/ctgru/dense_1/BiasAdd�
while/ctgru/dense_1/TanhTanh$while/ctgru/dense_1/BiasAdd:output:0*
T0*
_output_shapes
:	� 2
while/ctgru/dense_1/Tanh�
while/ctgru/Reshape_2/shape/1Const*
_output_shapes
: *
dtype0*
value	B : 2
while/ctgru/Reshape_2/shape/1�
while/ctgru/Reshape_2/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
while/ctgru/Reshape_2/shape/2�
while/ctgru/Reshape_2/shapePack"while/ctgru/strided_slice:output:0&while/ctgru/Reshape_2/shape/1:output:0&while/ctgru/Reshape_2/shape/2:output:0*
N*
T0*
_output_shapes
:2
while/ctgru/Reshape_2/shape�
while/ctgru/Reshape_2Reshapewhile/ctgru/dense_1/Tanh:y:0$while/ctgru/Reshape_2/shape:output:0*
T0*#
_output_shapes
:� 2
while/ctgru/Reshape_2�
)while/ctgru/dense_2/MatMul/ReadVariableOpReadVariableOp4while_ctgru_dense_2_matmul_readvariableop_resource_0*
_output_shapes
:	(�*
dtype02+
)while/ctgru/dense_2/MatMul/ReadVariableOp�
while/ctgru/dense_2/MatMulMatMulwhile/ctgru/concat:output:01while/ctgru/dense_2/MatMul/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��2
while/ctgru/dense_2/MatMul�
*while/ctgru/dense_2/BiasAdd/ReadVariableOpReadVariableOp5while_ctgru_dense_2_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype02,
*while/ctgru/dense_2/BiasAdd/ReadVariableOp�
while/ctgru/dense_2/BiasAddBiasAdd$while/ctgru/dense_2/MatMul:product:02while/ctgru/dense_2/BiasAdd/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��2
while/ctgru/dense_2/BiasAdd�
while/ctgru/Reshape_3/shape/1Const*
_output_shapes
: *
dtype0*
value	B : 2
while/ctgru/Reshape_3/shape/1�
while/ctgru/Reshape_3/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
while/ctgru/Reshape_3/shape/2�
while/ctgru/Reshape_3/shapePack"while/ctgru/strided_slice:output:0&while/ctgru/Reshape_3/shape/1:output:0&while/ctgru/Reshape_3/shape/2:output:0*
N*
T0*
_output_shapes
:2
while/ctgru/Reshape_3/shape�
while/ctgru/Reshape_3Reshape$while/ctgru/dense_2/BiasAdd:output:0$while/ctgru/Reshape_3/shape:output:0*
T0*#
_output_shapes
:� 2
while/ctgru/Reshape_3�
while/ctgru/sub_1/yConst*
_output_shapes
:*
dtype0*5
value,B*"     �]�?�]@U]@�]�@�4�@U�@�� A2
while/ctgru/sub_1/y�
while/ctgru/sub_1Subwhile/ctgru/Reshape_3:output:0while/ctgru/sub_1/y:output:0*
T0*#
_output_shapes
:� 2
while/ctgru/sub_1{
while/ctgru/Square_1Squarewhile/ctgru/sub_1:z:0*
T0*#
_output_shapes
:� 2
while/ctgru/Square_1u
while/ctgru/Neg_1Negwhile/ctgru/Square_1:y:0*
T0*#
_output_shapes
:� 2
while/ctgru/Neg_1~
while/ctgru/Softmax_1Softmaxwhile/ctgru/Neg_1:y:0*
T0*#
_output_shapes
:� 2
while/ctgru/Softmax_1o
while/ctgru/sub_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
while/ctgru/sub_2/x�
while/ctgru/sub_2Subwhile/ctgru/sub_2/x:output:0while/ctgru/Softmax_1:softmax:0*
T0*#
_output_shapes
:� 2
while/ctgru/sub_2�
while/ctgru/mul_1Mulwhile/ctgru/sub_2:z:0while/ctgru/Reshape:output:0*
T0*#
_output_shapes
:� 2
while/ctgru/mul_1�
while/ctgru/mul_2Mulwhile/ctgru/Softmax_1:softmax:0while/ctgru/Reshape_2:output:0*
T0*#
_output_shapes
:� 2
while/ctgru/mul_2�
while/ctgru/addAddV2while/ctgru/mul_1:z:0while/ctgru/mul_2:z:0*
T0*#
_output_shapes
:� 2
while/ctgru/add�
while/ctgru/Exp/xConst*
_output_shapes
:*
dtype0*U
valueLBJ"@      �IHb=Կ��������q:�N�0��y�G�z����3���i�����MbP�*���k�4�2
while/ctgru/Exp/xj
while/ctgru/ExpExpwhile/ctgru/Exp/x:output:0*
T0*
_output_shapes
:2
while/ctgru/Exp�
while/ctgru/Reshape_4/shapeConst*
_output_shapes
:*
dtype0*!
valueB"����      2
while/ctgru/Reshape_4/shape�
while/ctgru/Reshape_4Reshapewhile/ctgru/Exp:y:0$while/ctgru/Reshape_4/shape:output:0*
T0*"
_output_shapes
:2
while/ctgru/Reshape_4�
while/ctgru/CastCastwhile/ctgru/Reshape_4:output:0*

DstT0*

SrcT0*"
_output_shapes
:2
while/ctgru/Cast�
while/ctgru/mul_3Mulwhile/ctgru/add:z:0while/ctgru/Cast:y:0*
T0*#
_output_shapes
:� 2
while/ctgru/mul_3�
#while/ctgru/Sum_2/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/ctgru/Sum_2/reduction_indices�
while/ctgru/Sum_2Sumwhile/ctgru/mul_3:z:0,while/ctgru/Sum_2/reduction_indices:output:0*
T0*
_output_shapes
:	� 2
while/ctgru/Sum_2�
while/ctgru/Reshape_5/shape/1Const*
_output_shapes
: *
dtype0*
value
B :�2
while/ctgru/Reshape_5/shape/1�
while/ctgru/Reshape_5/shapePack"while/ctgru/strided_slice:output:0&while/ctgru/Reshape_5/shape/1:output:0*
N*
T0*
_output_shapes
:2
while/ctgru/Reshape_5/shape�
while/ctgru/Reshape_5Reshapewhile/ctgru/mul_3:z:0$while/ctgru/Reshape_5/shape:output:0*
T0* 
_output_shapes
:
��2
while/ctgru/Reshape_5�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/ctgru/Sum_2:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1�
while/IdentityIdentitywhile/add_1:z:0)^while/ctgru/dense/BiasAdd/ReadVariableOp(^while/ctgru/dense/MatMul/ReadVariableOp+^while/ctgru/dense_1/BiasAdd/ReadVariableOp*^while/ctgru/dense_1/MatMul/ReadVariableOp+^while/ctgru/dense_2/BiasAdd/ReadVariableOp*^while/ctgru/dense_2/MatMul/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity�
while/Identity_1Identitywhile_while_maximum_iterations)^while/ctgru/dense/BiasAdd/ReadVariableOp(^while/ctgru/dense/MatMul/ReadVariableOp+^while/ctgru/dense_1/BiasAdd/ReadVariableOp*^while/ctgru/dense_1/MatMul/ReadVariableOp+^while/ctgru/dense_2/BiasAdd/ReadVariableOp*^while/ctgru/dense_2/MatMul/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1�
while/Identity_2Identitywhile/add:z:0)^while/ctgru/dense/BiasAdd/ReadVariableOp(^while/ctgru/dense/MatMul/ReadVariableOp+^while/ctgru/dense_1/BiasAdd/ReadVariableOp*^while/ctgru/dense_1/MatMul/ReadVariableOp+^while/ctgru/dense_2/BiasAdd/ReadVariableOp*^while/ctgru/dense_2/MatMul/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^while/ctgru/dense/BiasAdd/ReadVariableOp(^while/ctgru/dense/MatMul/ReadVariableOp+^while/ctgru/dense_1/BiasAdd/ReadVariableOp*^while/ctgru/dense_1/MatMul/ReadVariableOp+^while/ctgru/dense_2/BiasAdd/ReadVariableOp*^while/ctgru/dense_2/MatMul/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identitywhile/ctgru/Reshape_5:output:0)^while/ctgru/dense/BiasAdd/ReadVariableOp(^while/ctgru/dense/MatMul/ReadVariableOp+^while/ctgru/dense_1/BiasAdd/ReadVariableOp*^while/ctgru/dense_1/MatMul/ReadVariableOp+^while/ctgru/dense_2/BiasAdd/ReadVariableOp*^while/ctgru/dense_2/MatMul/ReadVariableOp*
T0* 
_output_shapes
:
��2
while/Identity_4"l
3while_ctgru_dense_1_biasadd_readvariableop_resource5while_ctgru_dense_1_biasadd_readvariableop_resource_0"j
2while_ctgru_dense_1_matmul_readvariableop_resource4while_ctgru_dense_1_matmul_readvariableop_resource_0"l
3while_ctgru_dense_2_biasadd_readvariableop_resource5while_ctgru_dense_2_biasadd_readvariableop_resource_0"j
2while_ctgru_dense_2_matmul_readvariableop_resource4while_ctgru_dense_2_matmul_readvariableop_resource_0"h
1while_ctgru_dense_biasadd_readvariableop_resource3while_ctgru_dense_biasadd_readvariableop_resource_0"f
0while_ctgru_dense_matmul_readvariableop_resource2while_ctgru_dense_matmul_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*C
_input_shapes2
0: : : : :
��: : ::::::2T
(while/ctgru/dense/BiasAdd/ReadVariableOp(while/ctgru/dense/BiasAdd/ReadVariableOp2R
'while/ctgru/dense/MatMul/ReadVariableOp'while/ctgru/dense/MatMul/ReadVariableOp2X
*while/ctgru/dense_1/BiasAdd/ReadVariableOp*while/ctgru/dense_1/BiasAdd/ReadVariableOp2V
)while/ctgru/dense_1/MatMul/ReadVariableOp)while/ctgru/dense_1/MatMul/ReadVariableOp2X
*while/ctgru/dense_2/BiasAdd/ReadVariableOp*while/ctgru/dense_2/BiasAdd/ReadVariableOp2V
)while/ctgru/dense_2/MatMul/ReadVariableOp)while/ctgru/dense_2/MatMul/ReadVariableOp: 
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
: :&"
 
_output_shapes
:
��:

_output_shapes
: :

_output_shapes
: 
�	
�
while_cond_160099
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_160099___redundant_placeholder04
0while_while_cond_160099___redundant_placeholder14
0while_while_cond_160099___redundant_placeholder24
0while_while_cond_160099___redundant_placeholder34
0while_while_cond_160099___redundant_placeholder44
0while_while_cond_160099___redundant_placeholder54
0while_while_cond_160099___redundant_placeholder6
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
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
while_identitywhile/Identity:output:0*M
_input_shapes<
:: : : : :����������: :::::::: 
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
: :.*
(
_output_shapes
:����������:

_output_shapes
: :

_output_shapes
:
��
�
"__inference__traced_restore_162861
file_prefix!
assignvariableop_dense_kernel!
assignvariableop_1_dense_bias 
assignvariableop_2_adam_iter"
assignvariableop_3_adam_beta_1"
assignvariableop_4_adam_beta_2!
assignvariableop_5_adam_decay)
%assignvariableop_6_adam_learning_rate-
)assignvariableop_7_rnn_ctgru_dense_kernel+
'assignvariableop_8_rnn_ctgru_dense_bias/
+assignvariableop_9_rnn_ctgru_dense_1_kernel.
*assignvariableop_10_rnn_ctgru_dense_1_bias0
,assignvariableop_11_rnn_ctgru_dense_2_kernel.
*assignvariableop_12_rnn_ctgru_dense_2_bias
assignvariableop_13_total
assignvariableop_14_count
assignvariableop_15_total_1
assignvariableop_16_count_1+
'assignvariableop_17_adam_dense_kernel_m)
%assignvariableop_18_adam_dense_bias_m5
1assignvariableop_19_adam_rnn_ctgru_dense_kernel_m3
/assignvariableop_20_adam_rnn_ctgru_dense_bias_m7
3assignvariableop_21_adam_rnn_ctgru_dense_1_kernel_m5
1assignvariableop_22_adam_rnn_ctgru_dense_1_bias_m7
3assignvariableop_23_adam_rnn_ctgru_dense_2_kernel_m5
1assignvariableop_24_adam_rnn_ctgru_dense_2_bias_m+
'assignvariableop_25_adam_dense_kernel_v)
%assignvariableop_26_adam_dense_bias_v5
1assignvariableop_27_adam_rnn_ctgru_dense_kernel_v3
/assignvariableop_28_adam_rnn_ctgru_dense_bias_v7
3assignvariableop_29_adam_rnn_ctgru_dense_1_kernel_v5
1assignvariableop_30_adam_rnn_ctgru_dense_1_bias_v7
3assignvariableop_31_adam_rnn_ctgru_dense_2_kernel_v5
1assignvariableop_32_adam_rnn_ctgru_dense_2_bias_v
identity_34��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*�
value�B�"B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices�
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�::::::::::::::::::::::::::::::::::*0
dtypes&
$2"	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity�
AssignVariableOpAssignVariableOpassignvariableop_dense_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1�
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_2�
AssignVariableOp_2AssignVariableOpassignvariableop_2_adam_iterIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3�
AssignVariableOp_3AssignVariableOpassignvariableop_3_adam_beta_1Identity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4�
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_beta_2Identity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5�
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_decayIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6�
AssignVariableOp_6AssignVariableOp%assignvariableop_6_adam_learning_rateIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7�
AssignVariableOp_7AssignVariableOp)assignvariableop_7_rnn_ctgru_dense_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8�
AssignVariableOp_8AssignVariableOp'assignvariableop_8_rnn_ctgru_dense_biasIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9�
AssignVariableOp_9AssignVariableOp+assignvariableop_9_rnn_ctgru_dense_1_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10�
AssignVariableOp_10AssignVariableOp*assignvariableop_10_rnn_ctgru_dense_1_biasIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11�
AssignVariableOp_11AssignVariableOp,assignvariableop_11_rnn_ctgru_dense_2_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12�
AssignVariableOp_12AssignVariableOp*assignvariableop_12_rnn_ctgru_dense_2_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13�
AssignVariableOp_13AssignVariableOpassignvariableop_13_totalIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14�
AssignVariableOp_14AssignVariableOpassignvariableop_14_countIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15�
AssignVariableOp_15AssignVariableOpassignvariableop_15_total_1Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16�
AssignVariableOp_16AssignVariableOpassignvariableop_16_count_1Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17�
AssignVariableOp_17AssignVariableOp'assignvariableop_17_adam_dense_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18�
AssignVariableOp_18AssignVariableOp%assignvariableop_18_adam_dense_bias_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19�
AssignVariableOp_19AssignVariableOp1assignvariableop_19_adam_rnn_ctgru_dense_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20�
AssignVariableOp_20AssignVariableOp/assignvariableop_20_adam_rnn_ctgru_dense_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21�
AssignVariableOp_21AssignVariableOp3assignvariableop_21_adam_rnn_ctgru_dense_1_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22�
AssignVariableOp_22AssignVariableOp1assignvariableop_22_adam_rnn_ctgru_dense_1_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23�
AssignVariableOp_23AssignVariableOp3assignvariableop_23_adam_rnn_ctgru_dense_2_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24�
AssignVariableOp_24AssignVariableOp1assignvariableop_24_adam_rnn_ctgru_dense_2_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25�
AssignVariableOp_25AssignVariableOp'assignvariableop_25_adam_dense_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26�
AssignVariableOp_26AssignVariableOp%assignvariableop_26_adam_dense_bias_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27�
AssignVariableOp_27AssignVariableOp1assignvariableop_27_adam_rnn_ctgru_dense_kernel_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28�
AssignVariableOp_28AssignVariableOp/assignvariableop_28_adam_rnn_ctgru_dense_bias_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29�
AssignVariableOp_29AssignVariableOp3assignvariableop_29_adam_rnn_ctgru_dense_1_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30�
AssignVariableOp_30AssignVariableOp1assignvariableop_30_adam_rnn_ctgru_dense_1_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31�
AssignVariableOp_31AssignVariableOp3assignvariableop_31_adam_rnn_ctgru_dense_2_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32�
AssignVariableOp_32AssignVariableOp1assignvariableop_32_adam_rnn_ctgru_dense_2_bias_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_329
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp�
Identity_33Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_33�
Identity_34IdentityIdentity_33:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_34"#
identity_34Identity_34:output:0*�
_input_shapes�
�: :::::::::::::::::::::::::::::::::2$
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
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322(
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
�#
�
while_body_159959
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_ctgru_159981_0
while_ctgru_159983_0
while_ctgru_159985_0
while_ctgru_159987_0
while_ctgru_159989_0
while_ctgru_159991_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_ctgru_159981
while_ctgru_159983
while_ctgru_159985
while_ctgru_159987
while_ctgru_159989
while_ctgru_159991��#while/ctgru/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem�
#while/ctgru/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_ctgru_159981_0while_ctgru_159983_0while_ctgru_159985_0while_ctgru_159987_0while_ctgru_159989_0while_ctgru_159991_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *;
_output_shapes)
':��������� :����������*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_ctgru_layer_call_and_return_conditional_losses_1596682%
#while/ctgru/StatefulPartitionedCall�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder,while/ctgru/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1�
while/IdentityIdentitywhile/add_1:z:0$^while/ctgru/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity�
while/Identity_1Identitywhile_while_maximum_iterations$^while/ctgru/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1�
while/Identity_2Identitywhile/add:z:0$^while/ctgru/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0$^while/ctgru/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identity,while/ctgru/StatefulPartitionedCall:output:1$^while/ctgru/StatefulPartitionedCall*
T0*(
_output_shapes
:����������2
while/Identity_4"*
while_ctgru_159981while_ctgru_159981_0"*
while_ctgru_159983while_ctgru_159983_0"*
while_ctgru_159985while_ctgru_159985_0"*
while_ctgru_159987while_ctgru_159987_0"*
while_ctgru_159989while_ctgru_159989_0"*
while_ctgru_159991while_ctgru_159991_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*K
_input_shapes:
8: : : : :����������: : ::::::2J
#while/ctgru/StatefulPartitionedCall#while/ctgru/StatefulPartitionedCall: 
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
: :.*
(
_output_shapes
:����������:

_output_shapes
: :

_output_shapes
: 
��
�
?__inference_rnn_layer_call_and_return_conditional_losses_161949
inputs_0.
*ctgru_dense_matmul_readvariableop_resource/
+ctgru_dense_biasadd_readvariableop_resource0
,ctgru_dense_1_matmul_readvariableop_resource1
-ctgru_dense_1_biasadd_readvariableop_resource0
,ctgru_dense_2_matmul_readvariableop_resource1
-ctgru_dense_2_biasadd_readvariableop_resource
identity��"ctgru/dense/BiasAdd/ReadVariableOp�!ctgru/dense/MatMul/ReadVariableOp�$ctgru/dense_1/BiasAdd/ReadVariableOp�#ctgru/dense_1/MatMul/ReadVariableOp�$ctgru/dense_2/BiasAdd/ReadVariableOp�#ctgru/dense_2/MatMul/ReadVariableOp�whileF
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
strided_slice/stack_2�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :�2
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
B :�2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :�2
zeros/packed/1�
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
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:����������2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm�
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :������������������2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
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
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2
strided_slice_2b
ctgru/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:2
ctgru/Shape�
ctgru/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
ctgru/strided_slice/stack�
ctgru/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
ctgru/strided_slice/stack_1�
ctgru/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
ctgru/strided_slice/stack_2�
ctgru/strided_sliceStridedSlicectgru/Shape:output:0"ctgru/strided_slice/stack:output:0$ctgru/strided_slice/stack_1:output:0$ctgru/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
ctgru/strided_slicep
ctgru/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B : 2
ctgru/Reshape/shape/1p
ctgru/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
ctgru/Reshape/shape/2�
ctgru/Reshape/shapePackctgru/strided_slice:output:0ctgru/Reshape/shape/1:output:0ctgru/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
ctgru/Reshape/shape�
ctgru/ReshapeReshapezeros:output:0ctgru/Reshape/shape:output:0*
T0*+
_output_shapes
:��������� 2
ctgru/Reshape|
ctgru/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
ctgru/Sum/reduction_indices�
	ctgru/SumSumctgru/Reshape:output:0$ctgru/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:��������� 2
	ctgru/Sumq
ctgru/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
���������2
ctgru/concat/axis�
ctgru/concatConcatV2strided_slice_2:output:0ctgru/Sum:output:0ctgru/concat/axis:output:0*
N*
T0*'
_output_shapes
:���������(2
ctgru/concat�
!ctgru/dense/MatMul/ReadVariableOpReadVariableOp*ctgru_dense_matmul_readvariableop_resource*
_output_shapes
:	(�*
dtype02#
!ctgru/dense/MatMul/ReadVariableOp�
ctgru/dense/MatMulMatMulctgru/concat:output:0)ctgru/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
ctgru/dense/MatMul�
"ctgru/dense/BiasAdd/ReadVariableOpReadVariableOp+ctgru_dense_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02$
"ctgru/dense/BiasAdd/ReadVariableOp�
ctgru/dense/BiasAddBiasAddctgru/dense/MatMul:product:0*ctgru/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
ctgru/dense/BiasAddt
ctgru/Reshape_1/shape/1Const*
_output_shapes
: *
dtype0*
value	B : 2
ctgru/Reshape_1/shape/1t
ctgru/Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
ctgru/Reshape_1/shape/2�
ctgru/Reshape_1/shapePackctgru/strided_slice:output:0 ctgru/Reshape_1/shape/1:output:0 ctgru/Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:2
ctgru/Reshape_1/shape�
ctgru/Reshape_1Reshapectgru/dense/BiasAdd:output:0ctgru/Reshape_1/shape:output:0*
T0*+
_output_shapes
:��������� 2
ctgru/Reshape_1�
ctgru/sub/yConst*
_output_shapes
:*
dtype0*5
value,B*"     �]�?�]@U]@�]�@�4�@U�@�� A2
ctgru/sub/y�
	ctgru/subSubctgru/Reshape_1:output:0ctgru/sub/y:output:0*
T0*+
_output_shapes
:��������� 2
	ctgru/subk
ctgru/SquareSquarectgru/sub:z:0*
T0*+
_output_shapes
:��������� 2
ctgru/Squaree
	ctgru/NegNegctgru/Square:y:0*
T0*+
_output_shapes
:��������� 2
	ctgru/Negn
ctgru/SoftmaxSoftmaxctgru/Neg:y:0*
T0*+
_output_shapes
:��������� 2
ctgru/Softmax�
	ctgru/mulMulctgru/Softmax:softmax:0ctgru/Reshape:output:0*
T0*+
_output_shapes
:��������� 2
	ctgru/mul�
ctgru/Sum_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
ctgru/Sum_1/reduction_indices�
ctgru/Sum_1Sumctgru/mul:z:0&ctgru/Sum_1/reduction_indices:output:0*
T0*'
_output_shapes
:��������� 2
ctgru/Sum_1l
ctgru/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :2
ctgru/concat_1/axis�
ctgru/concat_1ConcatV2strided_slice_2:output:0ctgru/Sum_1:output:0ctgru/concat_1/axis:output:0*
N*
T0*'
_output_shapes
:���������(2
ctgru/concat_1�
#ctgru/dense_1/MatMul/ReadVariableOpReadVariableOp,ctgru_dense_1_matmul_readvariableop_resource*
_output_shapes

:( *
dtype02%
#ctgru/dense_1/MatMul/ReadVariableOp�
ctgru/dense_1/MatMulMatMulctgru/concat_1:output:0+ctgru/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� 2
ctgru/dense_1/MatMul�
$ctgru/dense_1/BiasAdd/ReadVariableOpReadVariableOp-ctgru_dense_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02&
$ctgru/dense_1/BiasAdd/ReadVariableOp�
ctgru/dense_1/BiasAddBiasAddctgru/dense_1/MatMul:product:0,ctgru/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� 2
ctgru/dense_1/BiasAdd�
ctgru/dense_1/TanhTanhctgru/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:��������� 2
ctgru/dense_1/Tanht
ctgru/Reshape_2/shape/1Const*
_output_shapes
: *
dtype0*
value	B : 2
ctgru/Reshape_2/shape/1t
ctgru/Reshape_2/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
ctgru/Reshape_2/shape/2�
ctgru/Reshape_2/shapePackctgru/strided_slice:output:0 ctgru/Reshape_2/shape/1:output:0 ctgru/Reshape_2/shape/2:output:0*
N*
T0*
_output_shapes
:2
ctgru/Reshape_2/shape�
ctgru/Reshape_2Reshapectgru/dense_1/Tanh:y:0ctgru/Reshape_2/shape:output:0*
T0*+
_output_shapes
:��������� 2
ctgru/Reshape_2�
#ctgru/dense_2/MatMul/ReadVariableOpReadVariableOp,ctgru_dense_2_matmul_readvariableop_resource*
_output_shapes
:	(�*
dtype02%
#ctgru/dense_2/MatMul/ReadVariableOp�
ctgru/dense_2/MatMulMatMulctgru/concat:output:0+ctgru/dense_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
ctgru/dense_2/MatMul�
$ctgru/dense_2/BiasAdd/ReadVariableOpReadVariableOp-ctgru_dense_2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02&
$ctgru/dense_2/BiasAdd/ReadVariableOp�
ctgru/dense_2/BiasAddBiasAddctgru/dense_2/MatMul:product:0,ctgru/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
ctgru/dense_2/BiasAddt
ctgru/Reshape_3/shape/1Const*
_output_shapes
: *
dtype0*
value	B : 2
ctgru/Reshape_3/shape/1t
ctgru/Reshape_3/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
ctgru/Reshape_3/shape/2�
ctgru/Reshape_3/shapePackctgru/strided_slice:output:0 ctgru/Reshape_3/shape/1:output:0 ctgru/Reshape_3/shape/2:output:0*
N*
T0*
_output_shapes
:2
ctgru/Reshape_3/shape�
ctgru/Reshape_3Reshapectgru/dense_2/BiasAdd:output:0ctgru/Reshape_3/shape:output:0*
T0*+
_output_shapes
:��������� 2
ctgru/Reshape_3�
ctgru/sub_1/yConst*
_output_shapes
:*
dtype0*5
value,B*"     �]�?�]@U]@�]�@�4�@U�@�� A2
ctgru/sub_1/y�
ctgru/sub_1Subctgru/Reshape_3:output:0ctgru/sub_1/y:output:0*
T0*+
_output_shapes
:��������� 2
ctgru/sub_1q
ctgru/Square_1Squarectgru/sub_1:z:0*
T0*+
_output_shapes
:��������� 2
ctgru/Square_1k
ctgru/Neg_1Negctgru/Square_1:y:0*
T0*+
_output_shapes
:��������� 2
ctgru/Neg_1t
ctgru/Softmax_1Softmaxctgru/Neg_1:y:0*
T0*+
_output_shapes
:��������� 2
ctgru/Softmax_1c
ctgru/sub_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
ctgru/sub_2/x�
ctgru/sub_2Subctgru/sub_2/x:output:0ctgru/Softmax_1:softmax:0*
T0*+
_output_shapes
:��������� 2
ctgru/sub_2�
ctgru/mul_1Mulctgru/sub_2:z:0ctgru/Reshape:output:0*
T0*+
_output_shapes
:��������� 2
ctgru/mul_1�
ctgru/mul_2Mulctgru/Softmax_1:softmax:0ctgru/Reshape_2:output:0*
T0*+
_output_shapes
:��������� 2
ctgru/mul_2w
	ctgru/addAddV2ctgru/mul_1:z:0ctgru/mul_2:z:0*
T0*+
_output_shapes
:��������� 2
	ctgru/add�
ctgru/Exp/xConst*
_output_shapes
:*
dtype0*U
valueLBJ"@      �IHb=Կ��������q:�N�0��y�G�z����3���i�����MbP�*���k�4�2
ctgru/Exp/xX
	ctgru/ExpExpctgru/Exp/x:output:0*
T0*
_output_shapes
:2
	ctgru/Exp�
ctgru/Reshape_4/shapeConst*
_output_shapes
:*
dtype0*!
valueB"����      2
ctgru/Reshape_4/shape�
ctgru/Reshape_4Reshapectgru/Exp:y:0ctgru/Reshape_4/shape:output:0*
T0*"
_output_shapes
:2
ctgru/Reshape_4v

ctgru/CastCastctgru/Reshape_4:output:0*

DstT0*

SrcT0*"
_output_shapes
:2

ctgru/Castv
ctgru/mul_3Mulctgru/add:z:0ctgru/Cast:y:0*
T0*+
_output_shapes
:��������� 2
ctgru/mul_3�
ctgru/Sum_2/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
ctgru/Sum_2/reduction_indices�
ctgru/Sum_2Sumctgru/mul_3:z:0&ctgru/Sum_2/reduction_indices:output:0*
T0*'
_output_shapes
:��������� 2
ctgru/Sum_2u
ctgru/Reshape_5/shape/1Const*
_output_shapes
: *
dtype0*
value
B :�2
ctgru/Reshape_5/shape/1�
ctgru/Reshape_5/shapePackctgru/strided_slice:output:0 ctgru/Reshape_5/shape/1:output:0*
N*
T0*
_output_shapes
:2
ctgru/Reshape_5/shape�
ctgru/Reshape_5Reshapectgru/mul_3:z:0ctgru/Reshape_5/shape:output:0*
T0*(
_output_shapes
:����������2
ctgru/Reshape_5�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    2
TensorArrayV2_1/element_shape�
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
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
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*ctgru_dense_matmul_readvariableop_resource+ctgru_dense_biasadd_readvariableop_resource,ctgru_dense_1_matmul_readvariableop_resource-ctgru_dense_1_biasadd_readvariableop_resource,ctgru_dense_2_matmul_readvariableop_resource-ctgru_dense_2_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*@
_output_shapes.
,: : : : :����������: : : : : : : : *(
_read_only_resource_inputs

	
*
bodyR
while_body_161813*
condR
while_cond_161812*?
output_shapes.
,: : : : :����������: : : : : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������ *
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:��������� *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������ 2
transpose_1�
IdentityIdentitystrided_slice_3:output:0#^ctgru/dense/BiasAdd/ReadVariableOp"^ctgru/dense/MatMul/ReadVariableOp%^ctgru/dense_1/BiasAdd/ReadVariableOp$^ctgru/dense_1/MatMul/ReadVariableOp%^ctgru/dense_2/BiasAdd/ReadVariableOp$^ctgru/dense_2/MatMul/ReadVariableOp^while*
T0*'
_output_shapes
:��������� 2

Identity"
identityIdentity:output:0*K
_input_shapes:
8:������������������::::::2H
"ctgru/dense/BiasAdd/ReadVariableOp"ctgru/dense/BiasAdd/ReadVariableOp2F
!ctgru/dense/MatMul/ReadVariableOp!ctgru/dense/MatMul/ReadVariableOp2L
$ctgru/dense_1/BiasAdd/ReadVariableOp$ctgru/dense_1/BiasAdd/ReadVariableOp2J
#ctgru/dense_1/MatMul/ReadVariableOp#ctgru/dense_1/MatMul/ReadVariableOp2L
$ctgru/dense_2/BiasAdd/ReadVariableOp$ctgru/dense_2/BiasAdd/ReadVariableOp2J
#ctgru/dense_2/MatMul/ReadVariableOp#ctgru/dense_2/MatMul/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs/0
�
�
while_cond_160303
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_160303___redundant_placeholder04
0while_while_cond_160303___redundant_placeholder14
0while_while_cond_160303___redundant_placeholder24
0while_while_cond_160303___redundant_placeholder34
0while_while_cond_160303___redundant_placeholder44
0while_while_cond_160303___redundant_placeholder54
0while_while_cond_160303___redundant_placeholder6
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
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
while_identitywhile/Identity:output:0*E
_input_shapes4
2: : : : :
��: :::::::: 
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
: :&"
 
_output_shapes
:
��:

_output_shapes
: :

_output_shapes
:
�
�
while_cond_162338
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_162338___redundant_placeholder04
0while_while_cond_162338___redundant_placeholder14
0while_while_cond_162338___redundant_placeholder24
0while_while_cond_162338___redundant_placeholder34
0while_while_cond_162338___redundant_placeholder44
0while_while_cond_162338___redundant_placeholder54
0while_while_cond_162338___redundant_placeholder6
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
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
while_identitywhile/Identity:output:0*E
_input_shapes4
2: : : : :
��: :::::::: 
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
: :&"
 
_output_shapes
:
��:

_output_shapes
: :

_output_shapes
:
�
�
ct_gru_rnn_while_cond_1594122
.ct_gru_rnn_while_ct_gru_rnn_while_loop_counter8
4ct_gru_rnn_while_ct_gru_rnn_while_maximum_iterations 
ct_gru_rnn_while_placeholder"
ct_gru_rnn_while_placeholder_1"
ct_gru_rnn_while_placeholder_24
0ct_gru_rnn_while_less_ct_gru_rnn_strided_slice_1J
Fct_gru_rnn_while_ct_gru_rnn_while_cond_159412___redundant_placeholder0J
Fct_gru_rnn_while_ct_gru_rnn_while_cond_159412___redundant_placeholder1J
Fct_gru_rnn_while_ct_gru_rnn_while_cond_159412___redundant_placeholder2J
Fct_gru_rnn_while_ct_gru_rnn_while_cond_159412___redundant_placeholder3J
Fct_gru_rnn_while_ct_gru_rnn_while_cond_159412___redundant_placeholder4J
Fct_gru_rnn_while_ct_gru_rnn_while_cond_159412___redundant_placeholder5J
Fct_gru_rnn_while_ct_gru_rnn_while_cond_159412___redundant_placeholder6
ct_gru_rnn_while_identity
�
ct_gru/rnn/while/LessLessct_gru_rnn_while_placeholder0ct_gru_rnn_while_less_ct_gru_rnn_strided_slice_1*
T0*
_output_shapes
: 2
ct_gru/rnn/while/Less~
ct_gru/rnn/while/IdentityIdentityct_gru/rnn/while/Less:z:0*
T0
*
_output_shapes
: 2
ct_gru/rnn/while/Identity"?
ct_gru_rnn_while_identity"ct_gru/rnn/while/Identity:output:0*E
_input_shapes4
2: : : : :
��: :::::::: 
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
: :&"
 
_output_shapes
:
��:

_output_shapes
: :

_output_shapes
:
މ
�
while_body_160304
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_06
2while_ctgru_dense_matmul_readvariableop_resource_07
3while_ctgru_dense_biasadd_readvariableop_resource_08
4while_ctgru_dense_1_matmul_readvariableop_resource_09
5while_ctgru_dense_1_biasadd_readvariableop_resource_08
4while_ctgru_dense_2_matmul_readvariableop_resource_09
5while_ctgru_dense_2_biasadd_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor4
0while_ctgru_dense_matmul_readvariableop_resource5
1while_ctgru_dense_biasadd_readvariableop_resource6
2while_ctgru_dense_1_matmul_readvariableop_resource7
3while_ctgru_dense_1_biasadd_readvariableop_resource6
2while_ctgru_dense_2_matmul_readvariableop_resource7
3while_ctgru_dense_2_biasadd_readvariableop_resource��(while/ctgru/dense/BiasAdd/ReadVariableOp�'while/ctgru/dense/MatMul/ReadVariableOp�*while/ctgru/dense_1/BiasAdd/ReadVariableOp�)while/ctgru/dense_1/MatMul/ReadVariableOp�*while/ctgru/dense_2/BiasAdd/ReadVariableOp�)while/ctgru/dense_2/MatMul/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"�      29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes
:	�*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemw
while/ctgru/ShapeConst*
_output_shapes
:*
dtype0*
valueB"�      2
while/ctgru/Shape�
while/ctgru/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2!
while/ctgru/strided_slice/stack�
!while/ctgru/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2#
!while/ctgru/strided_slice/stack_1�
!while/ctgru/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!while/ctgru/strided_slice/stack_2�
while/ctgru/strided_sliceStridedSlicewhile/ctgru/Shape:output:0(while/ctgru/strided_slice/stack:output:0*while/ctgru/strided_slice/stack_1:output:0*while/ctgru/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
while/ctgru/strided_slice|
while/ctgru/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B : 2
while/ctgru/Reshape/shape/1|
while/ctgru/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
while/ctgru/Reshape/shape/2�
while/ctgru/Reshape/shapePack"while/ctgru/strided_slice:output:0$while/ctgru/Reshape/shape/1:output:0$while/ctgru/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
while/ctgru/Reshape/shape�
while/ctgru/ReshapeReshapewhile_placeholder_2"while/ctgru/Reshape/shape:output:0*
T0*#
_output_shapes
:� 2
while/ctgru/Reshape�
!while/ctgru/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/ctgru/Sum/reduction_indices�
while/ctgru/SumSumwhile/ctgru/Reshape:output:0*while/ctgru/Sum/reduction_indices:output:0*
T0*
_output_shapes
:	� 2
while/ctgru/Sum}
while/ctgru/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
���������2
while/ctgru/concat/axis�
while/ctgru/concatConcatV20while/TensorArrayV2Read/TensorListGetItem:item:0while/ctgru/Sum:output:0 while/ctgru/concat/axis:output:0*
N*
T0*
_output_shapes
:	�(2
while/ctgru/concat�
'while/ctgru/dense/MatMul/ReadVariableOpReadVariableOp2while_ctgru_dense_matmul_readvariableop_resource_0*
_output_shapes
:	(�*
dtype02)
'while/ctgru/dense/MatMul/ReadVariableOp�
while/ctgru/dense/MatMulMatMulwhile/ctgru/concat:output:0/while/ctgru/dense/MatMul/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��2
while/ctgru/dense/MatMul�
(while/ctgru/dense/BiasAdd/ReadVariableOpReadVariableOp3while_ctgru_dense_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype02*
(while/ctgru/dense/BiasAdd/ReadVariableOp�
while/ctgru/dense/BiasAddBiasAdd"while/ctgru/dense/MatMul:product:00while/ctgru/dense/BiasAdd/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��2
while/ctgru/dense/BiasAdd�
while/ctgru/Reshape_1/shape/1Const*
_output_shapes
: *
dtype0*
value	B : 2
while/ctgru/Reshape_1/shape/1�
while/ctgru/Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
while/ctgru/Reshape_1/shape/2�
while/ctgru/Reshape_1/shapePack"while/ctgru/strided_slice:output:0&while/ctgru/Reshape_1/shape/1:output:0&while/ctgru/Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:2
while/ctgru/Reshape_1/shape�
while/ctgru/Reshape_1Reshape"while/ctgru/dense/BiasAdd:output:0$while/ctgru/Reshape_1/shape:output:0*
T0*#
_output_shapes
:� 2
while/ctgru/Reshape_1�
while/ctgru/sub/yConst*
_output_shapes
:*
dtype0*5
value,B*"     �]�?�]@U]@�]�@�4�@U�@�� A2
while/ctgru/sub/y�
while/ctgru/subSubwhile/ctgru/Reshape_1:output:0while/ctgru/sub/y:output:0*
T0*#
_output_shapes
:� 2
while/ctgru/subu
while/ctgru/SquareSquarewhile/ctgru/sub:z:0*
T0*#
_output_shapes
:� 2
while/ctgru/Squareo
while/ctgru/NegNegwhile/ctgru/Square:y:0*
T0*#
_output_shapes
:� 2
while/ctgru/Negx
while/ctgru/SoftmaxSoftmaxwhile/ctgru/Neg:y:0*
T0*#
_output_shapes
:� 2
while/ctgru/Softmax�
while/ctgru/mulMulwhile/ctgru/Softmax:softmax:0while/ctgru/Reshape:output:0*
T0*#
_output_shapes
:� 2
while/ctgru/mul�
#while/ctgru/Sum_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/ctgru/Sum_1/reduction_indices�
while/ctgru/Sum_1Sumwhile/ctgru/mul:z:0,while/ctgru/Sum_1/reduction_indices:output:0*
T0*
_output_shapes
:	� 2
while/ctgru/Sum_1x
while/ctgru/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :2
while/ctgru/concat_1/axis�
while/ctgru/concat_1ConcatV20while/TensorArrayV2Read/TensorListGetItem:item:0while/ctgru/Sum_1:output:0"while/ctgru/concat_1/axis:output:0*
N*
T0*
_output_shapes
:	�(2
while/ctgru/concat_1�
)while/ctgru/dense_1/MatMul/ReadVariableOpReadVariableOp4while_ctgru_dense_1_matmul_readvariableop_resource_0*
_output_shapes

:( *
dtype02+
)while/ctgru/dense_1/MatMul/ReadVariableOp�
while/ctgru/dense_1/MatMulMatMulwhile/ctgru/concat_1:output:01while/ctgru/dense_1/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	� 2
while/ctgru/dense_1/MatMul�
*while/ctgru/dense_1/BiasAdd/ReadVariableOpReadVariableOp5while_ctgru_dense_1_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype02,
*while/ctgru/dense_1/BiasAdd/ReadVariableOp�
while/ctgru/dense_1/BiasAddBiasAdd$while/ctgru/dense_1/MatMul:product:02while/ctgru/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	� 2
while/ctgru/dense_1/BiasAdd�
while/ctgru/dense_1/TanhTanh$while/ctgru/dense_1/BiasAdd:output:0*
T0*
_output_shapes
:	� 2
while/ctgru/dense_1/Tanh�
while/ctgru/Reshape_2/shape/1Const*
_output_shapes
: *
dtype0*
value	B : 2
while/ctgru/Reshape_2/shape/1�
while/ctgru/Reshape_2/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
while/ctgru/Reshape_2/shape/2�
while/ctgru/Reshape_2/shapePack"while/ctgru/strided_slice:output:0&while/ctgru/Reshape_2/shape/1:output:0&while/ctgru/Reshape_2/shape/2:output:0*
N*
T0*
_output_shapes
:2
while/ctgru/Reshape_2/shape�
while/ctgru/Reshape_2Reshapewhile/ctgru/dense_1/Tanh:y:0$while/ctgru/Reshape_2/shape:output:0*
T0*#
_output_shapes
:� 2
while/ctgru/Reshape_2�
)while/ctgru/dense_2/MatMul/ReadVariableOpReadVariableOp4while_ctgru_dense_2_matmul_readvariableop_resource_0*
_output_shapes
:	(�*
dtype02+
)while/ctgru/dense_2/MatMul/ReadVariableOp�
while/ctgru/dense_2/MatMulMatMulwhile/ctgru/concat:output:01while/ctgru/dense_2/MatMul/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��2
while/ctgru/dense_2/MatMul�
*while/ctgru/dense_2/BiasAdd/ReadVariableOpReadVariableOp5while_ctgru_dense_2_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype02,
*while/ctgru/dense_2/BiasAdd/ReadVariableOp�
while/ctgru/dense_2/BiasAddBiasAdd$while/ctgru/dense_2/MatMul:product:02while/ctgru/dense_2/BiasAdd/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��2
while/ctgru/dense_2/BiasAdd�
while/ctgru/Reshape_3/shape/1Const*
_output_shapes
: *
dtype0*
value	B : 2
while/ctgru/Reshape_3/shape/1�
while/ctgru/Reshape_3/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
while/ctgru/Reshape_3/shape/2�
while/ctgru/Reshape_3/shapePack"while/ctgru/strided_slice:output:0&while/ctgru/Reshape_3/shape/1:output:0&while/ctgru/Reshape_3/shape/2:output:0*
N*
T0*
_output_shapes
:2
while/ctgru/Reshape_3/shape�
while/ctgru/Reshape_3Reshape$while/ctgru/dense_2/BiasAdd:output:0$while/ctgru/Reshape_3/shape:output:0*
T0*#
_output_shapes
:� 2
while/ctgru/Reshape_3�
while/ctgru/sub_1/yConst*
_output_shapes
:*
dtype0*5
value,B*"     �]�?�]@U]@�]�@�4�@U�@�� A2
while/ctgru/sub_1/y�
while/ctgru/sub_1Subwhile/ctgru/Reshape_3:output:0while/ctgru/sub_1/y:output:0*
T0*#
_output_shapes
:� 2
while/ctgru/sub_1{
while/ctgru/Square_1Squarewhile/ctgru/sub_1:z:0*
T0*#
_output_shapes
:� 2
while/ctgru/Square_1u
while/ctgru/Neg_1Negwhile/ctgru/Square_1:y:0*
T0*#
_output_shapes
:� 2
while/ctgru/Neg_1~
while/ctgru/Softmax_1Softmaxwhile/ctgru/Neg_1:y:0*
T0*#
_output_shapes
:� 2
while/ctgru/Softmax_1o
while/ctgru/sub_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
while/ctgru/sub_2/x�
while/ctgru/sub_2Subwhile/ctgru/sub_2/x:output:0while/ctgru/Softmax_1:softmax:0*
T0*#
_output_shapes
:� 2
while/ctgru/sub_2�
while/ctgru/mul_1Mulwhile/ctgru/sub_2:z:0while/ctgru/Reshape:output:0*
T0*#
_output_shapes
:� 2
while/ctgru/mul_1�
while/ctgru/mul_2Mulwhile/ctgru/Softmax_1:softmax:0while/ctgru/Reshape_2:output:0*
T0*#
_output_shapes
:� 2
while/ctgru/mul_2�
while/ctgru/addAddV2while/ctgru/mul_1:z:0while/ctgru/mul_2:z:0*
T0*#
_output_shapes
:� 2
while/ctgru/add�
while/ctgru/Exp/xConst*
_output_shapes
:*
dtype0*U
valueLBJ"@      �IHb=Կ��������q:�N�0��y�G�z����3���i�����MbP�*���k�4�2
while/ctgru/Exp/xj
while/ctgru/ExpExpwhile/ctgru/Exp/x:output:0*
T0*
_output_shapes
:2
while/ctgru/Exp�
while/ctgru/Reshape_4/shapeConst*
_output_shapes
:*
dtype0*!
valueB"����      2
while/ctgru/Reshape_4/shape�
while/ctgru/Reshape_4Reshapewhile/ctgru/Exp:y:0$while/ctgru/Reshape_4/shape:output:0*
T0*"
_output_shapes
:2
while/ctgru/Reshape_4�
while/ctgru/CastCastwhile/ctgru/Reshape_4:output:0*

DstT0*

SrcT0*"
_output_shapes
:2
while/ctgru/Cast�
while/ctgru/mul_3Mulwhile/ctgru/add:z:0while/ctgru/Cast:y:0*
T0*#
_output_shapes
:� 2
while/ctgru/mul_3�
#while/ctgru/Sum_2/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/ctgru/Sum_2/reduction_indices�
while/ctgru/Sum_2Sumwhile/ctgru/mul_3:z:0,while/ctgru/Sum_2/reduction_indices:output:0*
T0*
_output_shapes
:	� 2
while/ctgru/Sum_2�
while/ctgru/Reshape_5/shape/1Const*
_output_shapes
: *
dtype0*
value
B :�2
while/ctgru/Reshape_5/shape/1�
while/ctgru/Reshape_5/shapePack"while/ctgru/strided_slice:output:0&while/ctgru/Reshape_5/shape/1:output:0*
N*
T0*
_output_shapes
:2
while/ctgru/Reshape_5/shape�
while/ctgru/Reshape_5Reshapewhile/ctgru/mul_3:z:0$while/ctgru/Reshape_5/shape:output:0*
T0* 
_output_shapes
:
��2
while/ctgru/Reshape_5�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/ctgru/Sum_2:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1�
while/IdentityIdentitywhile/add_1:z:0)^while/ctgru/dense/BiasAdd/ReadVariableOp(^while/ctgru/dense/MatMul/ReadVariableOp+^while/ctgru/dense_1/BiasAdd/ReadVariableOp*^while/ctgru/dense_1/MatMul/ReadVariableOp+^while/ctgru/dense_2/BiasAdd/ReadVariableOp*^while/ctgru/dense_2/MatMul/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity�
while/Identity_1Identitywhile_while_maximum_iterations)^while/ctgru/dense/BiasAdd/ReadVariableOp(^while/ctgru/dense/MatMul/ReadVariableOp+^while/ctgru/dense_1/BiasAdd/ReadVariableOp*^while/ctgru/dense_1/MatMul/ReadVariableOp+^while/ctgru/dense_2/BiasAdd/ReadVariableOp*^while/ctgru/dense_2/MatMul/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1�
while/Identity_2Identitywhile/add:z:0)^while/ctgru/dense/BiasAdd/ReadVariableOp(^while/ctgru/dense/MatMul/ReadVariableOp+^while/ctgru/dense_1/BiasAdd/ReadVariableOp*^while/ctgru/dense_1/MatMul/ReadVariableOp+^while/ctgru/dense_2/BiasAdd/ReadVariableOp*^while/ctgru/dense_2/MatMul/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^while/ctgru/dense/BiasAdd/ReadVariableOp(^while/ctgru/dense/MatMul/ReadVariableOp+^while/ctgru/dense_1/BiasAdd/ReadVariableOp*^while/ctgru/dense_1/MatMul/ReadVariableOp+^while/ctgru/dense_2/BiasAdd/ReadVariableOp*^while/ctgru/dense_2/MatMul/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identitywhile/ctgru/Reshape_5:output:0)^while/ctgru/dense/BiasAdd/ReadVariableOp(^while/ctgru/dense/MatMul/ReadVariableOp+^while/ctgru/dense_1/BiasAdd/ReadVariableOp*^while/ctgru/dense_1/MatMul/ReadVariableOp+^while/ctgru/dense_2/BiasAdd/ReadVariableOp*^while/ctgru/dense_2/MatMul/ReadVariableOp*
T0* 
_output_shapes
:
��2
while/Identity_4"l
3while_ctgru_dense_1_biasadd_readvariableop_resource5while_ctgru_dense_1_biasadd_readvariableop_resource_0"j
2while_ctgru_dense_1_matmul_readvariableop_resource4while_ctgru_dense_1_matmul_readvariableop_resource_0"l
3while_ctgru_dense_2_biasadd_readvariableop_resource5while_ctgru_dense_2_biasadd_readvariableop_resource_0"j
2while_ctgru_dense_2_matmul_readvariableop_resource4while_ctgru_dense_2_matmul_readvariableop_resource_0"h
1while_ctgru_dense_biasadd_readvariableop_resource3while_ctgru_dense_biasadd_readvariableop_resource_0"f
0while_ctgru_dense_matmul_readvariableop_resource2while_ctgru_dense_matmul_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*C
_input_shapes2
0: : : : :
��: : ::::::2T
(while/ctgru/dense/BiasAdd/ReadVariableOp(while/ctgru/dense/BiasAdd/ReadVariableOp2R
'while/ctgru/dense/MatMul/ReadVariableOp'while/ctgru/dense/MatMul/ReadVariableOp2X
*while/ctgru/dense_1/BiasAdd/ReadVariableOp*while/ctgru/dense_1/BiasAdd/ReadVariableOp2V
)while/ctgru/dense_1/MatMul/ReadVariableOp)while/ctgru/dense_1/MatMul/ReadVariableOp2X
*while/ctgru/dense_2/BiasAdd/ReadVariableOp*while/ctgru/dense_2/BiasAdd/ReadVariableOp2V
)while/ctgru/dense_2/MatMul/ReadVariableOp)while/ctgru/dense_2/MatMul/ReadVariableOp: 
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
: :&"
 
_output_shapes
:
��:

_output_shapes
: :

_output_shapes
: 
�R
�
A__inference_ctgru_layer_call_and_return_conditional_losses_159668

inputs

states(
$dense_matmul_readvariableop_resource)
%dense_biasadd_readvariableop_resource*
&dense_1_matmul_readvariableop_resource+
'dense_1_biasadd_readvariableop_resource*
&dense_2_matmul_readvariableop_resource+
'dense_2_biasadd_readvariableop_resource
identity

identity_1��dense/BiasAdd/ReadVariableOp�dense/MatMul/ReadVariableOp�dense_1/BiasAdd/ReadVariableOp�dense_1/MatMul/ReadVariableOp�dense_2/BiasAdd/ReadVariableOp�dense_2/MatMul/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
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
strided_slice/stack_2�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliced
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B : 2
Reshape/shape/1d
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/2�
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape/shapes
ReshapeReshapestatesReshape/shape:output:0*
T0*+
_output_shapes
:��������� 2	
Reshapep
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Sum/reduction_indicesu
SumSumReshape:output:0Sum/reduction_indices:output:0*
T0*'
_output_shapes
:��������� 2
Sume
concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
���������2
concat/axis�
concatConcatV2inputsSum:output:0concat/axis:output:0*
N*
T0*'
_output_shapes
:���������(2
concat�
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	(�*
dtype02
dense/MatMul/ReadVariableOp�
dense/MatMulMatMulconcat:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
dense/MatMul�
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
dense/BiasAdd/ReadVariableOp�
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
dense/BiasAddh
Reshape_1/shape/1Const*
_output_shapes
: *
dtype0*
value	B : 2
Reshape_1/shape/1h
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape_1/shape/2�
Reshape_1/shapePackstrided_slice:output:0Reshape_1/shape/1:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape_1/shape�
	Reshape_1Reshapedense/BiasAdd:output:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:��������� 2
	Reshape_1w
sub/yConst*
_output_shapes
:*
dtype0*5
value,B*"     �]�?�]@U]@�]�@�4�@U�@�� A2
sub/yk
subSubReshape_1:output:0sub/y:output:0*
T0*+
_output_shapes
:��������� 2
subY
SquareSquaresub:z:0*
T0*+
_output_shapes
:��������� 2
SquareS
NegNeg
Square:y:0*
T0*+
_output_shapes
:��������� 2
Neg\
SoftmaxSoftmaxNeg:y:0*
T0*+
_output_shapes
:��������� 2	
Softmaxl
mulMulSoftmax:softmax:0Reshape:output:0*
T0*+
_output_shapes
:��������� 2
mult
Sum_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Sum_1/reduction_indicesr
Sum_1Summul:z:0 Sum_1/reduction_indices:output:0*
T0*'
_output_shapes
:��������� 2
Sum_1`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat_1/axis�
concat_1ConcatV2inputsSum_1:output:0concat_1/axis:output:0*
N*
T0*'
_output_shapes
:���������(2

concat_1�
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes

:( *
dtype02
dense_1/MatMul/ReadVariableOp�
dense_1/MatMulMatMulconcat_1:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� 2
dense_1/MatMul�
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02 
dense_1/BiasAdd/ReadVariableOp�
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� 2
dense_1/BiasAddp
dense_1/TanhTanhdense_1/BiasAdd:output:0*
T0*'
_output_shapes
:��������� 2
dense_1/Tanhh
Reshape_2/shape/1Const*
_output_shapes
: *
dtype0*
value	B : 2
Reshape_2/shape/1h
Reshape_2/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape_2/shape/2�
Reshape_2/shapePackstrided_slice:output:0Reshape_2/shape/1:output:0Reshape_2/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape_2/shape�
	Reshape_2Reshapedense_1/Tanh:y:0Reshape_2/shape:output:0*
T0*+
_output_shapes
:��������� 2
	Reshape_2�
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes
:	(�*
dtype02
dense_2/MatMul/ReadVariableOp�
dense_2/MatMulMatMulconcat:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
dense_2/MatMul�
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02 
dense_2/BiasAdd/ReadVariableOp�
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
dense_2/BiasAddh
Reshape_3/shape/1Const*
_output_shapes
: *
dtype0*
value	B : 2
Reshape_3/shape/1h
Reshape_3/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape_3/shape/2�
Reshape_3/shapePackstrided_slice:output:0Reshape_3/shape/1:output:0Reshape_3/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape_3/shape�
	Reshape_3Reshapedense_2/BiasAdd:output:0Reshape_3/shape:output:0*
T0*+
_output_shapes
:��������� 2
	Reshape_3{
sub_1/yConst*
_output_shapes
:*
dtype0*5
value,B*"     �]�?�]@U]@�]�@�4�@U�@�� A2	
sub_1/yq
sub_1SubReshape_3:output:0sub_1/y:output:0*
T0*+
_output_shapes
:��������� 2
sub_1_
Square_1Square	sub_1:z:0*
T0*+
_output_shapes
:��������� 2

Square_1Y
Neg_1NegSquare_1:y:0*
T0*+
_output_shapes
:��������� 2
Neg_1b
	Softmax_1Softmax	Neg_1:y:0*
T0*+
_output_shapes
:��������� 2
	Softmax_1W
sub_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2	
sub_2/xr
sub_2Subsub_2/x:output:0Softmax_1:softmax:0*
T0*+
_output_shapes
:��������� 2
sub_2h
mul_1Mul	sub_2:z:0Reshape:output:0*
T0*+
_output_shapes
:��������� 2
mul_1t
mul_2MulSoftmax_1:softmax:0Reshape_2:output:0*
T0*+
_output_shapes
:��������� 2
mul_2_
addAddV2	mul_1:z:0	mul_2:z:0*
T0*+
_output_shapes
:��������� 2
add�
Exp/xConst*
_output_shapes
:*
dtype0*U
valueLBJ"@      �IHb=Կ��������q:�N�0��y�G�z����3���i�����MbP�*���k�4�2
Exp/xF
ExpExpExp/x:output:0*
T0*
_output_shapes
:2
Expw
Reshape_4/shapeConst*
_output_shapes
:*
dtype0*!
valueB"����      2
Reshape_4/shapeq
	Reshape_4ReshapeExp:y:0Reshape_4/shape:output:0*
T0*"
_output_shapes
:2
	Reshape_4d
CastCastReshape_4:output:0*

DstT0*

SrcT0*"
_output_shapes
:2
Cast^
mul_3Muladd:z:0Cast:y:0*
T0*+
_output_shapes
:��������� 2
mul_3t
Sum_2/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Sum_2/reduction_indicest
Sum_2Sum	mul_3:z:0 Sum_2/reduction_indices:output:0*
T0*'
_output_shapes
:��������� 2
Sum_2i
Reshape_5/shape/1Const*
_output_shapes
: *
dtype0*
value
B :�2
Reshape_5/shape/1�
Reshape_5/shapePackstrided_slice:output:0Reshape_5/shape/1:output:0*
N*
T0*
_output_shapes
:2
Reshape_5/shapey
	Reshape_5Reshape	mul_3:z:0Reshape_5/shape:output:0*
T0*(
_output_shapes
:����������2
	Reshape_5�
IdentityIdentitySum_2:output:0^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*
T0*'
_output_shapes
:��������� 2

Identity�

Identity_1IdentityReshape_5:output:0^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*
T0*(
_output_shapes
:����������2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*R
_input_shapesA
?:���������:����������::::::2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:PL
(
_output_shapes
:����������
 
_user_specified_namestates
��
�
while_body_161567
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_06
2while_ctgru_dense_matmul_readvariableop_resource_07
3while_ctgru_dense_biasadd_readvariableop_resource_08
4while_ctgru_dense_1_matmul_readvariableop_resource_09
5while_ctgru_dense_1_biasadd_readvariableop_resource_08
4while_ctgru_dense_2_matmul_readvariableop_resource_09
5while_ctgru_dense_2_biasadd_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor4
0while_ctgru_dense_matmul_readvariableop_resource5
1while_ctgru_dense_biasadd_readvariableop_resource6
2while_ctgru_dense_1_matmul_readvariableop_resource7
3while_ctgru_dense_1_biasadd_readvariableop_resource6
2while_ctgru_dense_2_matmul_readvariableop_resource7
3while_ctgru_dense_2_biasadd_readvariableop_resource��(while/ctgru/dense/BiasAdd/ReadVariableOp�'while/ctgru/dense/MatMul/ReadVariableOp�*while/ctgru/dense_1/BiasAdd/ReadVariableOp�)while/ctgru/dense_1/MatMul/ReadVariableOp�*while/ctgru/dense_2/BiasAdd/ReadVariableOp�)while/ctgru/dense_2/MatMul/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem�
while/ctgru/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2
while/ctgru/Shape�
while/ctgru/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2!
while/ctgru/strided_slice/stack�
!while/ctgru/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2#
!while/ctgru/strided_slice/stack_1�
!while/ctgru/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!while/ctgru/strided_slice/stack_2�
while/ctgru/strided_sliceStridedSlicewhile/ctgru/Shape:output:0(while/ctgru/strided_slice/stack:output:0*while/ctgru/strided_slice/stack_1:output:0*while/ctgru/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
while/ctgru/strided_slice|
while/ctgru/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B : 2
while/ctgru/Reshape/shape/1|
while/ctgru/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
while/ctgru/Reshape/shape/2�
while/ctgru/Reshape/shapePack"while/ctgru/strided_slice:output:0$while/ctgru/Reshape/shape/1:output:0$while/ctgru/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
while/ctgru/Reshape/shape�
while/ctgru/ReshapeReshapewhile_placeholder_2"while/ctgru/Reshape/shape:output:0*
T0*+
_output_shapes
:��������� 2
while/ctgru/Reshape�
!while/ctgru/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/ctgru/Sum/reduction_indices�
while/ctgru/SumSumwhile/ctgru/Reshape:output:0*while/ctgru/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:��������� 2
while/ctgru/Sum}
while/ctgru/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
���������2
while/ctgru/concat/axis�
while/ctgru/concatConcatV20while/TensorArrayV2Read/TensorListGetItem:item:0while/ctgru/Sum:output:0 while/ctgru/concat/axis:output:0*
N*
T0*'
_output_shapes
:���������(2
while/ctgru/concat�
'while/ctgru/dense/MatMul/ReadVariableOpReadVariableOp2while_ctgru_dense_matmul_readvariableop_resource_0*
_output_shapes
:	(�*
dtype02)
'while/ctgru/dense/MatMul/ReadVariableOp�
while/ctgru/dense/MatMulMatMulwhile/ctgru/concat:output:0/while/ctgru/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/ctgru/dense/MatMul�
(while/ctgru/dense/BiasAdd/ReadVariableOpReadVariableOp3while_ctgru_dense_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype02*
(while/ctgru/dense/BiasAdd/ReadVariableOp�
while/ctgru/dense/BiasAddBiasAdd"while/ctgru/dense/MatMul:product:00while/ctgru/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/ctgru/dense/BiasAdd�
while/ctgru/Reshape_1/shape/1Const*
_output_shapes
: *
dtype0*
value	B : 2
while/ctgru/Reshape_1/shape/1�
while/ctgru/Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
while/ctgru/Reshape_1/shape/2�
while/ctgru/Reshape_1/shapePack"while/ctgru/strided_slice:output:0&while/ctgru/Reshape_1/shape/1:output:0&while/ctgru/Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:2
while/ctgru/Reshape_1/shape�
while/ctgru/Reshape_1Reshape"while/ctgru/dense/BiasAdd:output:0$while/ctgru/Reshape_1/shape:output:0*
T0*+
_output_shapes
:��������� 2
while/ctgru/Reshape_1�
while/ctgru/sub/yConst*
_output_shapes
:*
dtype0*5
value,B*"     �]�?�]@U]@�]�@�4�@U�@�� A2
while/ctgru/sub/y�
while/ctgru/subSubwhile/ctgru/Reshape_1:output:0while/ctgru/sub/y:output:0*
T0*+
_output_shapes
:��������� 2
while/ctgru/sub}
while/ctgru/SquareSquarewhile/ctgru/sub:z:0*
T0*+
_output_shapes
:��������� 2
while/ctgru/Squarew
while/ctgru/NegNegwhile/ctgru/Square:y:0*
T0*+
_output_shapes
:��������� 2
while/ctgru/Neg�
while/ctgru/SoftmaxSoftmaxwhile/ctgru/Neg:y:0*
T0*+
_output_shapes
:��������� 2
while/ctgru/Softmax�
while/ctgru/mulMulwhile/ctgru/Softmax:softmax:0while/ctgru/Reshape:output:0*
T0*+
_output_shapes
:��������� 2
while/ctgru/mul�
#while/ctgru/Sum_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/ctgru/Sum_1/reduction_indices�
while/ctgru/Sum_1Sumwhile/ctgru/mul:z:0,while/ctgru/Sum_1/reduction_indices:output:0*
T0*'
_output_shapes
:��������� 2
while/ctgru/Sum_1x
while/ctgru/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :2
while/ctgru/concat_1/axis�
while/ctgru/concat_1ConcatV20while/TensorArrayV2Read/TensorListGetItem:item:0while/ctgru/Sum_1:output:0"while/ctgru/concat_1/axis:output:0*
N*
T0*'
_output_shapes
:���������(2
while/ctgru/concat_1�
)while/ctgru/dense_1/MatMul/ReadVariableOpReadVariableOp4while_ctgru_dense_1_matmul_readvariableop_resource_0*
_output_shapes

:( *
dtype02+
)while/ctgru/dense_1/MatMul/ReadVariableOp�
while/ctgru/dense_1/MatMulMatMulwhile/ctgru/concat_1:output:01while/ctgru/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� 2
while/ctgru/dense_1/MatMul�
*while/ctgru/dense_1/BiasAdd/ReadVariableOpReadVariableOp5while_ctgru_dense_1_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype02,
*while/ctgru/dense_1/BiasAdd/ReadVariableOp�
while/ctgru/dense_1/BiasAddBiasAdd$while/ctgru/dense_1/MatMul:product:02while/ctgru/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� 2
while/ctgru/dense_1/BiasAdd�
while/ctgru/dense_1/TanhTanh$while/ctgru/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:��������� 2
while/ctgru/dense_1/Tanh�
while/ctgru/Reshape_2/shape/1Const*
_output_shapes
: *
dtype0*
value	B : 2
while/ctgru/Reshape_2/shape/1�
while/ctgru/Reshape_2/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
while/ctgru/Reshape_2/shape/2�
while/ctgru/Reshape_2/shapePack"while/ctgru/strided_slice:output:0&while/ctgru/Reshape_2/shape/1:output:0&while/ctgru/Reshape_2/shape/2:output:0*
N*
T0*
_output_shapes
:2
while/ctgru/Reshape_2/shape�
while/ctgru/Reshape_2Reshapewhile/ctgru/dense_1/Tanh:y:0$while/ctgru/Reshape_2/shape:output:0*
T0*+
_output_shapes
:��������� 2
while/ctgru/Reshape_2�
)while/ctgru/dense_2/MatMul/ReadVariableOpReadVariableOp4while_ctgru_dense_2_matmul_readvariableop_resource_0*
_output_shapes
:	(�*
dtype02+
)while/ctgru/dense_2/MatMul/ReadVariableOp�
while/ctgru/dense_2/MatMulMatMulwhile/ctgru/concat:output:01while/ctgru/dense_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/ctgru/dense_2/MatMul�
*while/ctgru/dense_2/BiasAdd/ReadVariableOpReadVariableOp5while_ctgru_dense_2_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype02,
*while/ctgru/dense_2/BiasAdd/ReadVariableOp�
while/ctgru/dense_2/BiasAddBiasAdd$while/ctgru/dense_2/MatMul:product:02while/ctgru/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/ctgru/dense_2/BiasAdd�
while/ctgru/Reshape_3/shape/1Const*
_output_shapes
: *
dtype0*
value	B : 2
while/ctgru/Reshape_3/shape/1�
while/ctgru/Reshape_3/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
while/ctgru/Reshape_3/shape/2�
while/ctgru/Reshape_3/shapePack"while/ctgru/strided_slice:output:0&while/ctgru/Reshape_3/shape/1:output:0&while/ctgru/Reshape_3/shape/2:output:0*
N*
T0*
_output_shapes
:2
while/ctgru/Reshape_3/shape�
while/ctgru/Reshape_3Reshape$while/ctgru/dense_2/BiasAdd:output:0$while/ctgru/Reshape_3/shape:output:0*
T0*+
_output_shapes
:��������� 2
while/ctgru/Reshape_3�
while/ctgru/sub_1/yConst*
_output_shapes
:*
dtype0*5
value,B*"     �]�?�]@U]@�]�@�4�@U�@�� A2
while/ctgru/sub_1/y�
while/ctgru/sub_1Subwhile/ctgru/Reshape_3:output:0while/ctgru/sub_1/y:output:0*
T0*+
_output_shapes
:��������� 2
while/ctgru/sub_1�
while/ctgru/Square_1Squarewhile/ctgru/sub_1:z:0*
T0*+
_output_shapes
:��������� 2
while/ctgru/Square_1}
while/ctgru/Neg_1Negwhile/ctgru/Square_1:y:0*
T0*+
_output_shapes
:��������� 2
while/ctgru/Neg_1�
while/ctgru/Softmax_1Softmaxwhile/ctgru/Neg_1:y:0*
T0*+
_output_shapes
:��������� 2
while/ctgru/Softmax_1o
while/ctgru/sub_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
while/ctgru/sub_2/x�
while/ctgru/sub_2Subwhile/ctgru/sub_2/x:output:0while/ctgru/Softmax_1:softmax:0*
T0*+
_output_shapes
:��������� 2
while/ctgru/sub_2�
while/ctgru/mul_1Mulwhile/ctgru/sub_2:z:0while/ctgru/Reshape:output:0*
T0*+
_output_shapes
:��������� 2
while/ctgru/mul_1�
while/ctgru/mul_2Mulwhile/ctgru/Softmax_1:softmax:0while/ctgru/Reshape_2:output:0*
T0*+
_output_shapes
:��������� 2
while/ctgru/mul_2�
while/ctgru/addAddV2while/ctgru/mul_1:z:0while/ctgru/mul_2:z:0*
T0*+
_output_shapes
:��������� 2
while/ctgru/add�
while/ctgru/Exp/xConst*
_output_shapes
:*
dtype0*U
valueLBJ"@      �IHb=Կ��������q:�N�0��y�G�z����3���i�����MbP�*���k�4�2
while/ctgru/Exp/xj
while/ctgru/ExpExpwhile/ctgru/Exp/x:output:0*
T0*
_output_shapes
:2
while/ctgru/Exp�
while/ctgru/Reshape_4/shapeConst*
_output_shapes
:*
dtype0*!
valueB"����      2
while/ctgru/Reshape_4/shape�
while/ctgru/Reshape_4Reshapewhile/ctgru/Exp:y:0$while/ctgru/Reshape_4/shape:output:0*
T0*"
_output_shapes
:2
while/ctgru/Reshape_4�
while/ctgru/CastCastwhile/ctgru/Reshape_4:output:0*

DstT0*

SrcT0*"
_output_shapes
:2
while/ctgru/Cast�
while/ctgru/mul_3Mulwhile/ctgru/add:z:0while/ctgru/Cast:y:0*
T0*+
_output_shapes
:��������� 2
while/ctgru/mul_3�
#while/ctgru/Sum_2/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/ctgru/Sum_2/reduction_indices�
while/ctgru/Sum_2Sumwhile/ctgru/mul_3:z:0,while/ctgru/Sum_2/reduction_indices:output:0*
T0*'
_output_shapes
:��������� 2
while/ctgru/Sum_2�
while/ctgru/Reshape_5/shape/1Const*
_output_shapes
: *
dtype0*
value
B :�2
while/ctgru/Reshape_5/shape/1�
while/ctgru/Reshape_5/shapePack"while/ctgru/strided_slice:output:0&while/ctgru/Reshape_5/shape/1:output:0*
N*
T0*
_output_shapes
:2
while/ctgru/Reshape_5/shape�
while/ctgru/Reshape_5Reshapewhile/ctgru/mul_3:z:0$while/ctgru/Reshape_5/shape:output:0*
T0*(
_output_shapes
:����������2
while/ctgru/Reshape_5�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/ctgru/Sum_2:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1�
while/IdentityIdentitywhile/add_1:z:0)^while/ctgru/dense/BiasAdd/ReadVariableOp(^while/ctgru/dense/MatMul/ReadVariableOp+^while/ctgru/dense_1/BiasAdd/ReadVariableOp*^while/ctgru/dense_1/MatMul/ReadVariableOp+^while/ctgru/dense_2/BiasAdd/ReadVariableOp*^while/ctgru/dense_2/MatMul/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity�
while/Identity_1Identitywhile_while_maximum_iterations)^while/ctgru/dense/BiasAdd/ReadVariableOp(^while/ctgru/dense/MatMul/ReadVariableOp+^while/ctgru/dense_1/BiasAdd/ReadVariableOp*^while/ctgru/dense_1/MatMul/ReadVariableOp+^while/ctgru/dense_2/BiasAdd/ReadVariableOp*^while/ctgru/dense_2/MatMul/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1�
while/Identity_2Identitywhile/add:z:0)^while/ctgru/dense/BiasAdd/ReadVariableOp(^while/ctgru/dense/MatMul/ReadVariableOp+^while/ctgru/dense_1/BiasAdd/ReadVariableOp*^while/ctgru/dense_1/MatMul/ReadVariableOp+^while/ctgru/dense_2/BiasAdd/ReadVariableOp*^while/ctgru/dense_2/MatMul/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^while/ctgru/dense/BiasAdd/ReadVariableOp(^while/ctgru/dense/MatMul/ReadVariableOp+^while/ctgru/dense_1/BiasAdd/ReadVariableOp*^while/ctgru/dense_1/MatMul/ReadVariableOp+^while/ctgru/dense_2/BiasAdd/ReadVariableOp*^while/ctgru/dense_2/MatMul/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identitywhile/ctgru/Reshape_5:output:0)^while/ctgru/dense/BiasAdd/ReadVariableOp(^while/ctgru/dense/MatMul/ReadVariableOp+^while/ctgru/dense_1/BiasAdd/ReadVariableOp*^while/ctgru/dense_1/MatMul/ReadVariableOp+^while/ctgru/dense_2/BiasAdd/ReadVariableOp*^while/ctgru/dense_2/MatMul/ReadVariableOp*
T0*(
_output_shapes
:����������2
while/Identity_4"l
3while_ctgru_dense_1_biasadd_readvariableop_resource5while_ctgru_dense_1_biasadd_readvariableop_resource_0"j
2while_ctgru_dense_1_matmul_readvariableop_resource4while_ctgru_dense_1_matmul_readvariableop_resource_0"l
3while_ctgru_dense_2_biasadd_readvariableop_resource5while_ctgru_dense_2_biasadd_readvariableop_resource_0"j
2while_ctgru_dense_2_matmul_readvariableop_resource4while_ctgru_dense_2_matmul_readvariableop_resource_0"h
1while_ctgru_dense_biasadd_readvariableop_resource3while_ctgru_dense_biasadd_readvariableop_resource_0"f
0while_ctgru_dense_matmul_readvariableop_resource2while_ctgru_dense_matmul_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*K
_input_shapes:
8: : : : :����������: : ::::::2T
(while/ctgru/dense/BiasAdd/ReadVariableOp(while/ctgru/dense/BiasAdd/ReadVariableOp2R
'while/ctgru/dense/MatMul/ReadVariableOp'while/ctgru/dense/MatMul/ReadVariableOp2X
*while/ctgru/dense_1/BiasAdd/ReadVariableOp*while/ctgru/dense_1/BiasAdd/ReadVariableOp2V
)while/ctgru/dense_1/MatMul/ReadVariableOp)while/ctgru/dense_1/MatMul/ReadVariableOp2X
*while/ctgru/dense_2/BiasAdd/ReadVariableOp*while/ctgru/dense_2/BiasAdd/ReadVariableOp2V
)while/ctgru/dense_2/MatMul/ReadVariableOp)while/ctgru/dense_2/MatMul/ReadVariableOp: 
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
: :.*
(
_output_shapes
:����������:

_output_shapes
: :

_output_shapes
: 
͍
�
?__inference_rnn_layer_call_and_return_conditional_losses_160440

inputs.
*ctgru_dense_matmul_readvariableop_resource/
+ctgru_dense_biasadd_readvariableop_resource0
,ctgru_dense_1_matmul_readvariableop_resource1
-ctgru_dense_1_biasadd_readvariableop_resource0
,ctgru_dense_2_matmul_readvariableop_resource1
-ctgru_dense_2_biasadd_readvariableop_resource
identity��"ctgru/dense/BiasAdd/ReadVariableOp�!ctgru/dense/MatMul/ReadVariableOp�$ctgru/dense_1/BiasAdd/ReadVariableOp�#ctgru/dense_1/MatMul/ReadVariableOp�$ctgru/dense_2/BiasAdd/ReadVariableOp�#ctgru/dense_2/MatMul/ReadVariableOp�whilec
ShapeConst*
_output_shapes
:*
dtype0*!
valueB"�   b      2
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
strided_slice/stack_2�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :�2
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
B :�2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :�2
zeros/packed/1�
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
zeros/Constn
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0* 
_output_shapes
:
��2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permr
	transpose	Transposeinputstranspose/perm:output:0*
T0*#
_output_shapes
:b�2
	transposeg
Shape_1Const*
_output_shapes
:*
dtype0*!
valueB"b   �      2	
Shape_1x
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
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"�      27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	�*
shrink_axis_mask2
strided_slice_2k
ctgru/ShapeConst*
_output_shapes
:*
dtype0*
valueB"�      2
ctgru/Shape�
ctgru/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
ctgru/strided_slice/stack�
ctgru/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
ctgru/strided_slice/stack_1�
ctgru/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
ctgru/strided_slice/stack_2�
ctgru/strided_sliceStridedSlicectgru/Shape:output:0"ctgru/strided_slice/stack:output:0$ctgru/strided_slice/stack_1:output:0$ctgru/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
ctgru/strided_slicep
ctgru/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B : 2
ctgru/Reshape/shape/1p
ctgru/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
ctgru/Reshape/shape/2�
ctgru/Reshape/shapePackctgru/strided_slice:output:0ctgru/Reshape/shape/1:output:0ctgru/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
ctgru/Reshape/shape�
ctgru/ReshapeReshapezeros:output:0ctgru/Reshape/shape:output:0*
T0*#
_output_shapes
:� 2
ctgru/Reshape|
ctgru/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
ctgru/Sum/reduction_indices�
	ctgru/SumSumctgru/Reshape:output:0$ctgru/Sum/reduction_indices:output:0*
T0*
_output_shapes
:	� 2
	ctgru/Sumq
ctgru/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
���������2
ctgru/concat/axis�
ctgru/concatConcatV2strided_slice_2:output:0ctgru/Sum:output:0ctgru/concat/axis:output:0*
N*
T0*
_output_shapes
:	�(2
ctgru/concat�
!ctgru/dense/MatMul/ReadVariableOpReadVariableOp*ctgru_dense_matmul_readvariableop_resource*
_output_shapes
:	(�*
dtype02#
!ctgru/dense/MatMul/ReadVariableOp�
ctgru/dense/MatMulMatMulctgru/concat:output:0)ctgru/dense/MatMul/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��2
ctgru/dense/MatMul�
"ctgru/dense/BiasAdd/ReadVariableOpReadVariableOp+ctgru_dense_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02$
"ctgru/dense/BiasAdd/ReadVariableOp�
ctgru/dense/BiasAddBiasAddctgru/dense/MatMul:product:0*ctgru/dense/BiasAdd/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��2
ctgru/dense/BiasAddt
ctgru/Reshape_1/shape/1Const*
_output_shapes
: *
dtype0*
value	B : 2
ctgru/Reshape_1/shape/1t
ctgru/Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
ctgru/Reshape_1/shape/2�
ctgru/Reshape_1/shapePackctgru/strided_slice:output:0 ctgru/Reshape_1/shape/1:output:0 ctgru/Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:2
ctgru/Reshape_1/shape�
ctgru/Reshape_1Reshapectgru/dense/BiasAdd:output:0ctgru/Reshape_1/shape:output:0*
T0*#
_output_shapes
:� 2
ctgru/Reshape_1�
ctgru/sub/yConst*
_output_shapes
:*
dtype0*5
value,B*"     �]�?�]@U]@�]�@�4�@U�@�� A2
ctgru/sub/y{
	ctgru/subSubctgru/Reshape_1:output:0ctgru/sub/y:output:0*
T0*#
_output_shapes
:� 2
	ctgru/subc
ctgru/SquareSquarectgru/sub:z:0*
T0*#
_output_shapes
:� 2
ctgru/Square]
	ctgru/NegNegctgru/Square:y:0*
T0*#
_output_shapes
:� 2
	ctgru/Negf
ctgru/SoftmaxSoftmaxctgru/Neg:y:0*
T0*#
_output_shapes
:� 2
ctgru/Softmax|
	ctgru/mulMulctgru/Softmax:softmax:0ctgru/Reshape:output:0*
T0*#
_output_shapes
:� 2
	ctgru/mul�
ctgru/Sum_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
ctgru/Sum_1/reduction_indices�
ctgru/Sum_1Sumctgru/mul:z:0&ctgru/Sum_1/reduction_indices:output:0*
T0*
_output_shapes
:	� 2
ctgru/Sum_1l
ctgru/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :2
ctgru/concat_1/axis�
ctgru/concat_1ConcatV2strided_slice_2:output:0ctgru/Sum_1:output:0ctgru/concat_1/axis:output:0*
N*
T0*
_output_shapes
:	�(2
ctgru/concat_1�
#ctgru/dense_1/MatMul/ReadVariableOpReadVariableOp,ctgru_dense_1_matmul_readvariableop_resource*
_output_shapes

:( *
dtype02%
#ctgru/dense_1/MatMul/ReadVariableOp�
ctgru/dense_1/MatMulMatMulctgru/concat_1:output:0+ctgru/dense_1/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	� 2
ctgru/dense_1/MatMul�
$ctgru/dense_1/BiasAdd/ReadVariableOpReadVariableOp-ctgru_dense_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02&
$ctgru/dense_1/BiasAdd/ReadVariableOp�
ctgru/dense_1/BiasAddBiasAddctgru/dense_1/MatMul:product:0,ctgru/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	� 2
ctgru/dense_1/BiasAddz
ctgru/dense_1/TanhTanhctgru/dense_1/BiasAdd:output:0*
T0*
_output_shapes
:	� 2
ctgru/dense_1/Tanht
ctgru/Reshape_2/shape/1Const*
_output_shapes
: *
dtype0*
value	B : 2
ctgru/Reshape_2/shape/1t
ctgru/Reshape_2/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
ctgru/Reshape_2/shape/2�
ctgru/Reshape_2/shapePackctgru/strided_slice:output:0 ctgru/Reshape_2/shape/1:output:0 ctgru/Reshape_2/shape/2:output:0*
N*
T0*
_output_shapes
:2
ctgru/Reshape_2/shape�
ctgru/Reshape_2Reshapectgru/dense_1/Tanh:y:0ctgru/Reshape_2/shape:output:0*
T0*#
_output_shapes
:� 2
ctgru/Reshape_2�
#ctgru/dense_2/MatMul/ReadVariableOpReadVariableOp,ctgru_dense_2_matmul_readvariableop_resource*
_output_shapes
:	(�*
dtype02%
#ctgru/dense_2/MatMul/ReadVariableOp�
ctgru/dense_2/MatMulMatMulctgru/concat:output:0+ctgru/dense_2/MatMul/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��2
ctgru/dense_2/MatMul�
$ctgru/dense_2/BiasAdd/ReadVariableOpReadVariableOp-ctgru_dense_2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02&
$ctgru/dense_2/BiasAdd/ReadVariableOp�
ctgru/dense_2/BiasAddBiasAddctgru/dense_2/MatMul:product:0,ctgru/dense_2/BiasAdd/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��2
ctgru/dense_2/BiasAddt
ctgru/Reshape_3/shape/1Const*
_output_shapes
: *
dtype0*
value	B : 2
ctgru/Reshape_3/shape/1t
ctgru/Reshape_3/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
ctgru/Reshape_3/shape/2�
ctgru/Reshape_3/shapePackctgru/strided_slice:output:0 ctgru/Reshape_3/shape/1:output:0 ctgru/Reshape_3/shape/2:output:0*
N*
T0*
_output_shapes
:2
ctgru/Reshape_3/shape�
ctgru/Reshape_3Reshapectgru/dense_2/BiasAdd:output:0ctgru/Reshape_3/shape:output:0*
T0*#
_output_shapes
:� 2
ctgru/Reshape_3�
ctgru/sub_1/yConst*
_output_shapes
:*
dtype0*5
value,B*"     �]�?�]@U]@�]�@�4�@U�@�� A2
ctgru/sub_1/y�
ctgru/sub_1Subctgru/Reshape_3:output:0ctgru/sub_1/y:output:0*
T0*#
_output_shapes
:� 2
ctgru/sub_1i
ctgru/Square_1Squarectgru/sub_1:z:0*
T0*#
_output_shapes
:� 2
ctgru/Square_1c
ctgru/Neg_1Negctgru/Square_1:y:0*
T0*#
_output_shapes
:� 2
ctgru/Neg_1l
ctgru/Softmax_1Softmaxctgru/Neg_1:y:0*
T0*#
_output_shapes
:� 2
ctgru/Softmax_1c
ctgru/sub_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
ctgru/sub_2/x�
ctgru/sub_2Subctgru/sub_2/x:output:0ctgru/Softmax_1:softmax:0*
T0*#
_output_shapes
:� 2
ctgru/sub_2x
ctgru/mul_1Mulctgru/sub_2:z:0ctgru/Reshape:output:0*
T0*#
_output_shapes
:� 2
ctgru/mul_1�
ctgru/mul_2Mulctgru/Softmax_1:softmax:0ctgru/Reshape_2:output:0*
T0*#
_output_shapes
:� 2
ctgru/mul_2o
	ctgru/addAddV2ctgru/mul_1:z:0ctgru/mul_2:z:0*
T0*#
_output_shapes
:� 2
	ctgru/add�
ctgru/Exp/xConst*
_output_shapes
:*
dtype0*U
valueLBJ"@      �IHb=Կ��������q:�N�0��y�G�z����3���i�����MbP�*���k�4�2
ctgru/Exp/xX
	ctgru/ExpExpctgru/Exp/x:output:0*
T0*
_output_shapes
:2
	ctgru/Exp�
ctgru/Reshape_4/shapeConst*
_output_shapes
:*
dtype0*!
valueB"����      2
ctgru/Reshape_4/shape�
ctgru/Reshape_4Reshapectgru/Exp:y:0ctgru/Reshape_4/shape:output:0*
T0*"
_output_shapes
:2
ctgru/Reshape_4v

ctgru/CastCastctgru/Reshape_4:output:0*

DstT0*

SrcT0*"
_output_shapes
:2

ctgru/Castn
ctgru/mul_3Mulctgru/add:z:0ctgru/Cast:y:0*
T0*#
_output_shapes
:� 2
ctgru/mul_3�
ctgru/Sum_2/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
ctgru/Sum_2/reduction_indices�
ctgru/Sum_2Sumctgru/mul_3:z:0&ctgru/Sum_2/reduction_indices:output:0*
T0*
_output_shapes
:	� 2
ctgru/Sum_2u
ctgru/Reshape_5/shape/1Const*
_output_shapes
: *
dtype0*
value
B :�2
ctgru/Reshape_5/shape/1�
ctgru/Reshape_5/shapePackctgru/strided_slice:output:0 ctgru/Reshape_5/shape/1:output:0*
N*
T0*
_output_shapes
:2
ctgru/Reshape_5/shape�
ctgru/Reshape_5Reshapectgru/mul_3:z:0ctgru/Reshape_5/shape:output:0*
T0* 
_output_shapes
:
��2
ctgru/Reshape_5�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"�       2
TensorArrayV2_1/element_shape�
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
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
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*ctgru_dense_matmul_readvariableop_resource+ctgru_dense_biasadd_readvariableop_resource,ctgru_dense_1_matmul_readvariableop_resource-ctgru_dense_1_biasadd_readvariableop_resource,ctgru_dense_2_matmul_readvariableop_resource-ctgru_dense_2_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*8
_output_shapes&
$: : : : :
��: : : : : : : : *(
_read_only_resource_inputs

	
*
bodyR
while_body_160304*
condR
while_cond_160303*7
output_shapes&
$: : : : :
��: : : : : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"�       22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*#
_output_shapes
:b� *
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
:	� *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*#
_output_shapes
:�b 2
transpose_1�
IdentityIdentitystrided_slice_3:output:0#^ctgru/dense/BiasAdd/ReadVariableOp"^ctgru/dense/MatMul/ReadVariableOp%^ctgru/dense_1/BiasAdd/ReadVariableOp$^ctgru/dense_1/MatMul/ReadVariableOp%^ctgru/dense_2/BiasAdd/ReadVariableOp$^ctgru/dense_2/MatMul/ReadVariableOp^while*
T0*
_output_shapes
:	� 2

Identity"
identityIdentity:output:0*:
_input_shapes)
':�b::::::2H
"ctgru/dense/BiasAdd/ReadVariableOp"ctgru/dense/BiasAdd/ReadVariableOp2F
!ctgru/dense/MatMul/ReadVariableOp!ctgru/dense/MatMul/ReadVariableOp2L
$ctgru/dense_1/BiasAdd/ReadVariableOp$ctgru/dense_1/BiasAdd/ReadVariableOp2J
#ctgru/dense_1/MatMul/ReadVariableOp#ctgru/dense_1/MatMul/ReadVariableOp2L
$ctgru/dense_2/BiasAdd/ReadVariableOp$ctgru/dense_2/BiasAdd/ReadVariableOp2J
#ctgru/dense_2/MatMul/ReadVariableOp#ctgru/dense_2/MatMul/ReadVariableOp2
whilewhile:K G
#
_output_shapes
:�b
 
_user_specified_nameinputs
��
�
B__inference_ct_gru_layer_call_and_return_conditional_losses_161413
inputs_0
inputs_12
.rnn_ctgru_dense_matmul_readvariableop_resource3
/rnn_ctgru_dense_biasadd_readvariableop_resource4
0rnn_ctgru_dense_1_matmul_readvariableop_resource5
1rnn_ctgru_dense_1_biasadd_readvariableop_resource4
0rnn_ctgru_dense_2_matmul_readvariableop_resource5
1rnn_ctgru_dense_2_biasadd_readvariableop_resource(
$dense_matmul_readvariableop_resource)
%dense_biasadd_readvariableop_resource
identity��dense/BiasAdd/ReadVariableOp�dense/MatMul/ReadVariableOp�&rnn/ctgru/dense/BiasAdd/ReadVariableOp�%rnn/ctgru/dense/MatMul/ReadVariableOp�(rnn/ctgru/dense_1/BiasAdd/ReadVariableOp�'rnn/ctgru/dense_1/MatMul/ReadVariableOp�(rnn/ctgru/dense_2/BiasAdd/ReadVariableOp�'rnn/ctgru/dense_2/MatMul/ReadVariableOp�	rnn/whilek
	rnn/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"�   b      2
	rnn/Shape|
rnn/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
rnn/strided_slice/stack�
rnn/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
rnn/strided_slice/stack_1�
rnn/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
rnn/strided_slice/stack_2�
rnn/strided_sliceStridedSlicernn/Shape:output:0 rnn/strided_slice/stack:output:0"rnn/strided_slice/stack_1:output:0"rnn/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
rnn/strided_slicee
rnn/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :�2
rnn/zeros/mul/y|
rnn/zeros/mulMulrnn/strided_slice:output:0rnn/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
rnn/zeros/mulg
rnn/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2
rnn/zeros/Less/yw
rnn/zeros/LessLessrnn/zeros/mul:z:0rnn/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
rnn/zeros/Lessk
rnn/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :�2
rnn/zeros/packed/1�
rnn/zeros/packedPackrnn/strided_slice:output:0rnn/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
rnn/zeros/packedg
rnn/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
rnn/zeros/Const~
	rnn/zerosFillrnn/zeros/packed:output:0rnn/zeros/Const:output:0*
T0* 
_output_shapes
:
��2
	rnn/zeros}
rnn/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
rnn/transpose/perm�
rnn/transpose	Transposeinputs_0rnn/transpose/perm:output:0*
T0*#
_output_shapes
:b�2
rnn/transposeo
rnn/Shape_1Const*
_output_shapes
:*
dtype0*!
valueB"b   �      2
rnn/Shape_1�
rnn/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
rnn/strided_slice_1/stack�
rnn/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
rnn/strided_slice_1/stack_1�
rnn/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
rnn/strided_slice_1/stack_2�
rnn/strided_slice_1StridedSlicernn/Shape_1:output:0"rnn/strided_slice_1/stack:output:0$rnn/strided_slice_1/stack_1:output:0$rnn/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
rnn/strided_slice_1�
rnn/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2!
rnn/TensorArrayV2/element_shape�
rnn/TensorArrayV2TensorListReserve(rnn/TensorArrayV2/element_shape:output:0rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
rnn/TensorArrayV2�
9rnn/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"�      2;
9rnn/TensorArrayUnstack/TensorListFromTensor/element_shape�
+rnn/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorrnn/transpose:y:0Brnn/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02-
+rnn/TensorArrayUnstack/TensorListFromTensor�
rnn/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
rnn/strided_slice_2/stack�
rnn/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
rnn/strided_slice_2/stack_1�
rnn/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
rnn/strided_slice_2/stack_2�
rnn/strided_slice_2StridedSlicernn/transpose:y:0"rnn/strided_slice_2/stack:output:0$rnn/strided_slice_2/stack_1:output:0$rnn/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	�*
shrink_axis_mask2
rnn/strided_slice_2s
rnn/ctgru/ShapeConst*
_output_shapes
:*
dtype0*
valueB"�      2
rnn/ctgru/Shape�
rnn/ctgru/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
rnn/ctgru/strided_slice/stack�
rnn/ctgru/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
rnn/ctgru/strided_slice/stack_1�
rnn/ctgru/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
rnn/ctgru/strided_slice/stack_2�
rnn/ctgru/strided_sliceStridedSlicernn/ctgru/Shape:output:0&rnn/ctgru/strided_slice/stack:output:0(rnn/ctgru/strided_slice/stack_1:output:0(rnn/ctgru/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
rnn/ctgru/strided_slicex
rnn/ctgru/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B : 2
rnn/ctgru/Reshape/shape/1x
rnn/ctgru/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
rnn/ctgru/Reshape/shape/2�
rnn/ctgru/Reshape/shapePack rnn/ctgru/strided_slice:output:0"rnn/ctgru/Reshape/shape/1:output:0"rnn/ctgru/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
rnn/ctgru/Reshape/shape�
rnn/ctgru/ReshapeReshapernn/zeros:output:0 rnn/ctgru/Reshape/shape:output:0*
T0*#
_output_shapes
:� 2
rnn/ctgru/Reshape�
rnn/ctgru/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2!
rnn/ctgru/Sum/reduction_indices�
rnn/ctgru/SumSumrnn/ctgru/Reshape:output:0(rnn/ctgru/Sum/reduction_indices:output:0*
T0*
_output_shapes
:	� 2
rnn/ctgru/Sumy
rnn/ctgru/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
���������2
rnn/ctgru/concat/axis�
rnn/ctgru/concatConcatV2rnn/strided_slice_2:output:0rnn/ctgru/Sum:output:0rnn/ctgru/concat/axis:output:0*
N*
T0*
_output_shapes
:	�(2
rnn/ctgru/concat�
%rnn/ctgru/dense/MatMul/ReadVariableOpReadVariableOp.rnn_ctgru_dense_matmul_readvariableop_resource*
_output_shapes
:	(�*
dtype02'
%rnn/ctgru/dense/MatMul/ReadVariableOp�
rnn/ctgru/dense/MatMulMatMulrnn/ctgru/concat:output:0-rnn/ctgru/dense/MatMul/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��2
rnn/ctgru/dense/MatMul�
&rnn/ctgru/dense/BiasAdd/ReadVariableOpReadVariableOp/rnn_ctgru_dense_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02(
&rnn/ctgru/dense/BiasAdd/ReadVariableOp�
rnn/ctgru/dense/BiasAddBiasAdd rnn/ctgru/dense/MatMul:product:0.rnn/ctgru/dense/BiasAdd/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��2
rnn/ctgru/dense/BiasAdd|
rnn/ctgru/Reshape_1/shape/1Const*
_output_shapes
: *
dtype0*
value	B : 2
rnn/ctgru/Reshape_1/shape/1|
rnn/ctgru/Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
rnn/ctgru/Reshape_1/shape/2�
rnn/ctgru/Reshape_1/shapePack rnn/ctgru/strided_slice:output:0$rnn/ctgru/Reshape_1/shape/1:output:0$rnn/ctgru/Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:2
rnn/ctgru/Reshape_1/shape�
rnn/ctgru/Reshape_1Reshape rnn/ctgru/dense/BiasAdd:output:0"rnn/ctgru/Reshape_1/shape:output:0*
T0*#
_output_shapes
:� 2
rnn/ctgru/Reshape_1�
rnn/ctgru/sub/yConst*
_output_shapes
:*
dtype0*5
value,B*"     �]�?�]@U]@�]�@�4�@U�@�� A2
rnn/ctgru/sub/y�
rnn/ctgru/subSubrnn/ctgru/Reshape_1:output:0rnn/ctgru/sub/y:output:0*
T0*#
_output_shapes
:� 2
rnn/ctgru/subo
rnn/ctgru/SquareSquarernn/ctgru/sub:z:0*
T0*#
_output_shapes
:� 2
rnn/ctgru/Squarei
rnn/ctgru/NegNegrnn/ctgru/Square:y:0*
T0*#
_output_shapes
:� 2
rnn/ctgru/Negr
rnn/ctgru/SoftmaxSoftmaxrnn/ctgru/Neg:y:0*
T0*#
_output_shapes
:� 2
rnn/ctgru/Softmax�
rnn/ctgru/mulMulrnn/ctgru/Softmax:softmax:0rnn/ctgru/Reshape:output:0*
T0*#
_output_shapes
:� 2
rnn/ctgru/mul�
!rnn/ctgru/Sum_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2#
!rnn/ctgru/Sum_1/reduction_indices�
rnn/ctgru/Sum_1Sumrnn/ctgru/mul:z:0*rnn/ctgru/Sum_1/reduction_indices:output:0*
T0*
_output_shapes
:	� 2
rnn/ctgru/Sum_1t
rnn/ctgru/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :2
rnn/ctgru/concat_1/axis�
rnn/ctgru/concat_1ConcatV2rnn/strided_slice_2:output:0rnn/ctgru/Sum_1:output:0 rnn/ctgru/concat_1/axis:output:0*
N*
T0*
_output_shapes
:	�(2
rnn/ctgru/concat_1�
'rnn/ctgru/dense_1/MatMul/ReadVariableOpReadVariableOp0rnn_ctgru_dense_1_matmul_readvariableop_resource*
_output_shapes

:( *
dtype02)
'rnn/ctgru/dense_1/MatMul/ReadVariableOp�
rnn/ctgru/dense_1/MatMulMatMulrnn/ctgru/concat_1:output:0/rnn/ctgru/dense_1/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	� 2
rnn/ctgru/dense_1/MatMul�
(rnn/ctgru/dense_1/BiasAdd/ReadVariableOpReadVariableOp1rnn_ctgru_dense_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02*
(rnn/ctgru/dense_1/BiasAdd/ReadVariableOp�
rnn/ctgru/dense_1/BiasAddBiasAdd"rnn/ctgru/dense_1/MatMul:product:00rnn/ctgru/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	� 2
rnn/ctgru/dense_1/BiasAdd�
rnn/ctgru/dense_1/TanhTanh"rnn/ctgru/dense_1/BiasAdd:output:0*
T0*
_output_shapes
:	� 2
rnn/ctgru/dense_1/Tanh|
rnn/ctgru/Reshape_2/shape/1Const*
_output_shapes
: *
dtype0*
value	B : 2
rnn/ctgru/Reshape_2/shape/1|
rnn/ctgru/Reshape_2/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
rnn/ctgru/Reshape_2/shape/2�
rnn/ctgru/Reshape_2/shapePack rnn/ctgru/strided_slice:output:0$rnn/ctgru/Reshape_2/shape/1:output:0$rnn/ctgru/Reshape_2/shape/2:output:0*
N*
T0*
_output_shapes
:2
rnn/ctgru/Reshape_2/shape�
rnn/ctgru/Reshape_2Reshapernn/ctgru/dense_1/Tanh:y:0"rnn/ctgru/Reshape_2/shape:output:0*
T0*#
_output_shapes
:� 2
rnn/ctgru/Reshape_2�
'rnn/ctgru/dense_2/MatMul/ReadVariableOpReadVariableOp0rnn_ctgru_dense_2_matmul_readvariableop_resource*
_output_shapes
:	(�*
dtype02)
'rnn/ctgru/dense_2/MatMul/ReadVariableOp�
rnn/ctgru/dense_2/MatMulMatMulrnn/ctgru/concat:output:0/rnn/ctgru/dense_2/MatMul/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��2
rnn/ctgru/dense_2/MatMul�
(rnn/ctgru/dense_2/BiasAdd/ReadVariableOpReadVariableOp1rnn_ctgru_dense_2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02*
(rnn/ctgru/dense_2/BiasAdd/ReadVariableOp�
rnn/ctgru/dense_2/BiasAddBiasAdd"rnn/ctgru/dense_2/MatMul:product:00rnn/ctgru/dense_2/BiasAdd/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��2
rnn/ctgru/dense_2/BiasAdd|
rnn/ctgru/Reshape_3/shape/1Const*
_output_shapes
: *
dtype0*
value	B : 2
rnn/ctgru/Reshape_3/shape/1|
rnn/ctgru/Reshape_3/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
rnn/ctgru/Reshape_3/shape/2�
rnn/ctgru/Reshape_3/shapePack rnn/ctgru/strided_slice:output:0$rnn/ctgru/Reshape_3/shape/1:output:0$rnn/ctgru/Reshape_3/shape/2:output:0*
N*
T0*
_output_shapes
:2
rnn/ctgru/Reshape_3/shape�
rnn/ctgru/Reshape_3Reshape"rnn/ctgru/dense_2/BiasAdd:output:0"rnn/ctgru/Reshape_3/shape:output:0*
T0*#
_output_shapes
:� 2
rnn/ctgru/Reshape_3�
rnn/ctgru/sub_1/yConst*
_output_shapes
:*
dtype0*5
value,B*"     �]�?�]@U]@�]�@�4�@U�@�� A2
rnn/ctgru/sub_1/y�
rnn/ctgru/sub_1Subrnn/ctgru/Reshape_3:output:0rnn/ctgru/sub_1/y:output:0*
T0*#
_output_shapes
:� 2
rnn/ctgru/sub_1u
rnn/ctgru/Square_1Squarernn/ctgru/sub_1:z:0*
T0*#
_output_shapes
:� 2
rnn/ctgru/Square_1o
rnn/ctgru/Neg_1Negrnn/ctgru/Square_1:y:0*
T0*#
_output_shapes
:� 2
rnn/ctgru/Neg_1x
rnn/ctgru/Softmax_1Softmaxrnn/ctgru/Neg_1:y:0*
T0*#
_output_shapes
:� 2
rnn/ctgru/Softmax_1k
rnn/ctgru/sub_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
rnn/ctgru/sub_2/x�
rnn/ctgru/sub_2Subrnn/ctgru/sub_2/x:output:0rnn/ctgru/Softmax_1:softmax:0*
T0*#
_output_shapes
:� 2
rnn/ctgru/sub_2�
rnn/ctgru/mul_1Mulrnn/ctgru/sub_2:z:0rnn/ctgru/Reshape:output:0*
T0*#
_output_shapes
:� 2
rnn/ctgru/mul_1�
rnn/ctgru/mul_2Mulrnn/ctgru/Softmax_1:softmax:0rnn/ctgru/Reshape_2:output:0*
T0*#
_output_shapes
:� 2
rnn/ctgru/mul_2
rnn/ctgru/addAddV2rnn/ctgru/mul_1:z:0rnn/ctgru/mul_2:z:0*
T0*#
_output_shapes
:� 2
rnn/ctgru/add�
rnn/ctgru/Exp/xConst*
_output_shapes
:*
dtype0*U
valueLBJ"@      �IHb=Կ��������q:�N�0��y�G�z����3���i�����MbP�*���k�4�2
rnn/ctgru/Exp/xd
rnn/ctgru/ExpExprnn/ctgru/Exp/x:output:0*
T0*
_output_shapes
:2
rnn/ctgru/Exp�
rnn/ctgru/Reshape_4/shapeConst*
_output_shapes
:*
dtype0*!
valueB"����      2
rnn/ctgru/Reshape_4/shape�
rnn/ctgru/Reshape_4Reshapernn/ctgru/Exp:y:0"rnn/ctgru/Reshape_4/shape:output:0*
T0*"
_output_shapes
:2
rnn/ctgru/Reshape_4�
rnn/ctgru/CastCastrnn/ctgru/Reshape_4:output:0*

DstT0*

SrcT0*"
_output_shapes
:2
rnn/ctgru/Cast~
rnn/ctgru/mul_3Mulrnn/ctgru/add:z:0rnn/ctgru/Cast:y:0*
T0*#
_output_shapes
:� 2
rnn/ctgru/mul_3�
!rnn/ctgru/Sum_2/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2#
!rnn/ctgru/Sum_2/reduction_indices�
rnn/ctgru/Sum_2Sumrnn/ctgru/mul_3:z:0*rnn/ctgru/Sum_2/reduction_indices:output:0*
T0*
_output_shapes
:	� 2
rnn/ctgru/Sum_2}
rnn/ctgru/Reshape_5/shape/1Const*
_output_shapes
: *
dtype0*
value
B :�2
rnn/ctgru/Reshape_5/shape/1�
rnn/ctgru/Reshape_5/shapePack rnn/ctgru/strided_slice:output:0$rnn/ctgru/Reshape_5/shape/1:output:0*
N*
T0*
_output_shapes
:2
rnn/ctgru/Reshape_5/shape�
rnn/ctgru/Reshape_5Reshapernn/ctgru/mul_3:z:0"rnn/ctgru/Reshape_5/shape:output:0*
T0* 
_output_shapes
:
��2
rnn/ctgru/Reshape_5�
!rnn/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"�       2#
!rnn/TensorArrayV2_1/element_shape�
rnn/TensorArrayV2_1TensorListReserve*rnn/TensorArrayV2_1/element_shape:output:0rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
rnn/TensorArrayV2_1V
rnn/timeConst*
_output_shapes
: *
dtype0*
value	B : 2

rnn/time�
rnn/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������2
rnn/while/maximum_iterationsr
rnn/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
rnn/while/loop_counter�
	rnn/whileWhilernn/while/loop_counter:output:0%rnn/while/maximum_iterations:output:0rnn/time:output:0rnn/TensorArrayV2_1:handle:0rnn/zeros:output:0rnn/strided_slice_1:output:0;rnn/TensorArrayUnstack/TensorListFromTensor:output_handle:0.rnn_ctgru_dense_matmul_readvariableop_resource/rnn_ctgru_dense_biasadd_readvariableop_resource0rnn_ctgru_dense_1_matmul_readvariableop_resource1rnn_ctgru_dense_1_biasadd_readvariableop_resource0rnn_ctgru_dense_2_matmul_readvariableop_resource1rnn_ctgru_dense_2_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*8
_output_shapes&
$: : : : :
��: : : : : : : : *(
_read_only_resource_inputs

	
*!
bodyR
rnn_while_body_161271*!
condR
rnn_while_cond_161270*7
output_shapes&
$: : : : :
��: : : : : : : : *
parallel_iterations 2
	rnn/while�
4rnn/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"�       26
4rnn/TensorArrayV2Stack/TensorListStack/element_shape�
&rnn/TensorArrayV2Stack/TensorListStackTensorListStackrnn/while:output:3=rnn/TensorArrayV2Stack/TensorListStack/element_shape:output:0*#
_output_shapes
:b� *
element_dtype02(
&rnn/TensorArrayV2Stack/TensorListStack�
rnn/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
rnn/strided_slice_3/stack�
rnn/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
rnn/strided_slice_3/stack_1�
rnn/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
rnn/strided_slice_3/stack_2�
rnn/strided_slice_3StridedSlice/rnn/TensorArrayV2Stack/TensorListStack:tensor:0"rnn/strided_slice_3/stack:output:0$rnn/strided_slice_3/stack_1:output:0$rnn/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
:	� *
shrink_axis_mask2
rnn/strided_slice_3�
rnn/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
rnn/transpose_1/perm�
rnn/transpose_1	Transpose/rnn/TensorArrayV2Stack/TensorListStack:tensor:0rnn/transpose_1/perm:output:0*
T0*#
_output_shapes
:�b 2
rnn/transpose_1�
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes

: 
*
dtype02
dense/MatMul/ReadVariableOp�
dense/MatMulMatMulrnn/strided_slice_3:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	�
2
dense/MatMul�
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
dense/BiasAdd/ReadVariableOp�
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	�
2
dense/BiasAdd�
IdentityIdentitydense/BiasAdd:output:0^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp'^rnn/ctgru/dense/BiasAdd/ReadVariableOp&^rnn/ctgru/dense/MatMul/ReadVariableOp)^rnn/ctgru/dense_1/BiasAdd/ReadVariableOp(^rnn/ctgru/dense_1/MatMul/ReadVariableOp)^rnn/ctgru/dense_2/BiasAdd/ReadVariableOp(^rnn/ctgru/dense_2/MatMul/ReadVariableOp
^rnn/while*
T0*
_output_shapes
:	�
2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:�b:�b::::::::2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2P
&rnn/ctgru/dense/BiasAdd/ReadVariableOp&rnn/ctgru/dense/BiasAdd/ReadVariableOp2N
%rnn/ctgru/dense/MatMul/ReadVariableOp%rnn/ctgru/dense/MatMul/ReadVariableOp2T
(rnn/ctgru/dense_1/BiasAdd/ReadVariableOp(rnn/ctgru/dense_1/BiasAdd/ReadVariableOp2R
'rnn/ctgru/dense_1/MatMul/ReadVariableOp'rnn/ctgru/dense_1/MatMul/ReadVariableOp2T
(rnn/ctgru/dense_2/BiasAdd/ReadVariableOp(rnn/ctgru/dense_2/BiasAdd/ReadVariableOp2R
'rnn/ctgru/dense_2/MatMul/ReadVariableOp'rnn/ctgru/dense_2/MatMul/ReadVariableOp2
	rnn/while	rnn/while:M I
#
_output_shapes
:�b
"
_user_specified_name
inputs/0:MI
#
_output_shapes
:�b
"
_user_specified_name
inputs/1
͍
�
?__inference_rnn_layer_call_and_return_conditional_losses_160686

inputs.
*ctgru_dense_matmul_readvariableop_resource/
+ctgru_dense_biasadd_readvariableop_resource0
,ctgru_dense_1_matmul_readvariableop_resource1
-ctgru_dense_1_biasadd_readvariableop_resource0
,ctgru_dense_2_matmul_readvariableop_resource1
-ctgru_dense_2_biasadd_readvariableop_resource
identity��"ctgru/dense/BiasAdd/ReadVariableOp�!ctgru/dense/MatMul/ReadVariableOp�$ctgru/dense_1/BiasAdd/ReadVariableOp�#ctgru/dense_1/MatMul/ReadVariableOp�$ctgru/dense_2/BiasAdd/ReadVariableOp�#ctgru/dense_2/MatMul/ReadVariableOp�whilec
ShapeConst*
_output_shapes
:*
dtype0*!
valueB"�   b      2
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
strided_slice/stack_2�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :�2
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
B :�2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :�2
zeros/packed/1�
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
zeros/Constn
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0* 
_output_shapes
:
��2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permr
	transpose	Transposeinputstranspose/perm:output:0*
T0*#
_output_shapes
:b�2
	transposeg
Shape_1Const*
_output_shapes
:*
dtype0*!
valueB"b   �      2	
Shape_1x
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
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"�      27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	�*
shrink_axis_mask2
strided_slice_2k
ctgru/ShapeConst*
_output_shapes
:*
dtype0*
valueB"�      2
ctgru/Shape�
ctgru/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
ctgru/strided_slice/stack�
ctgru/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
ctgru/strided_slice/stack_1�
ctgru/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
ctgru/strided_slice/stack_2�
ctgru/strided_sliceStridedSlicectgru/Shape:output:0"ctgru/strided_slice/stack:output:0$ctgru/strided_slice/stack_1:output:0$ctgru/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
ctgru/strided_slicep
ctgru/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B : 2
ctgru/Reshape/shape/1p
ctgru/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
ctgru/Reshape/shape/2�
ctgru/Reshape/shapePackctgru/strided_slice:output:0ctgru/Reshape/shape/1:output:0ctgru/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
ctgru/Reshape/shape�
ctgru/ReshapeReshapezeros:output:0ctgru/Reshape/shape:output:0*
T0*#
_output_shapes
:� 2
ctgru/Reshape|
ctgru/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
ctgru/Sum/reduction_indices�
	ctgru/SumSumctgru/Reshape:output:0$ctgru/Sum/reduction_indices:output:0*
T0*
_output_shapes
:	� 2
	ctgru/Sumq
ctgru/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
���������2
ctgru/concat/axis�
ctgru/concatConcatV2strided_slice_2:output:0ctgru/Sum:output:0ctgru/concat/axis:output:0*
N*
T0*
_output_shapes
:	�(2
ctgru/concat�
!ctgru/dense/MatMul/ReadVariableOpReadVariableOp*ctgru_dense_matmul_readvariableop_resource*
_output_shapes
:	(�*
dtype02#
!ctgru/dense/MatMul/ReadVariableOp�
ctgru/dense/MatMulMatMulctgru/concat:output:0)ctgru/dense/MatMul/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��2
ctgru/dense/MatMul�
"ctgru/dense/BiasAdd/ReadVariableOpReadVariableOp+ctgru_dense_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02$
"ctgru/dense/BiasAdd/ReadVariableOp�
ctgru/dense/BiasAddBiasAddctgru/dense/MatMul:product:0*ctgru/dense/BiasAdd/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��2
ctgru/dense/BiasAddt
ctgru/Reshape_1/shape/1Const*
_output_shapes
: *
dtype0*
value	B : 2
ctgru/Reshape_1/shape/1t
ctgru/Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
ctgru/Reshape_1/shape/2�
ctgru/Reshape_1/shapePackctgru/strided_slice:output:0 ctgru/Reshape_1/shape/1:output:0 ctgru/Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:2
ctgru/Reshape_1/shape�
ctgru/Reshape_1Reshapectgru/dense/BiasAdd:output:0ctgru/Reshape_1/shape:output:0*
T0*#
_output_shapes
:� 2
ctgru/Reshape_1�
ctgru/sub/yConst*
_output_shapes
:*
dtype0*5
value,B*"     �]�?�]@U]@�]�@�4�@U�@�� A2
ctgru/sub/y{
	ctgru/subSubctgru/Reshape_1:output:0ctgru/sub/y:output:0*
T0*#
_output_shapes
:� 2
	ctgru/subc
ctgru/SquareSquarectgru/sub:z:0*
T0*#
_output_shapes
:� 2
ctgru/Square]
	ctgru/NegNegctgru/Square:y:0*
T0*#
_output_shapes
:� 2
	ctgru/Negf
ctgru/SoftmaxSoftmaxctgru/Neg:y:0*
T0*#
_output_shapes
:� 2
ctgru/Softmax|
	ctgru/mulMulctgru/Softmax:softmax:0ctgru/Reshape:output:0*
T0*#
_output_shapes
:� 2
	ctgru/mul�
ctgru/Sum_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
ctgru/Sum_1/reduction_indices�
ctgru/Sum_1Sumctgru/mul:z:0&ctgru/Sum_1/reduction_indices:output:0*
T0*
_output_shapes
:	� 2
ctgru/Sum_1l
ctgru/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :2
ctgru/concat_1/axis�
ctgru/concat_1ConcatV2strided_slice_2:output:0ctgru/Sum_1:output:0ctgru/concat_1/axis:output:0*
N*
T0*
_output_shapes
:	�(2
ctgru/concat_1�
#ctgru/dense_1/MatMul/ReadVariableOpReadVariableOp,ctgru_dense_1_matmul_readvariableop_resource*
_output_shapes

:( *
dtype02%
#ctgru/dense_1/MatMul/ReadVariableOp�
ctgru/dense_1/MatMulMatMulctgru/concat_1:output:0+ctgru/dense_1/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	� 2
ctgru/dense_1/MatMul�
$ctgru/dense_1/BiasAdd/ReadVariableOpReadVariableOp-ctgru_dense_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02&
$ctgru/dense_1/BiasAdd/ReadVariableOp�
ctgru/dense_1/BiasAddBiasAddctgru/dense_1/MatMul:product:0,ctgru/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	� 2
ctgru/dense_1/BiasAddz
ctgru/dense_1/TanhTanhctgru/dense_1/BiasAdd:output:0*
T0*
_output_shapes
:	� 2
ctgru/dense_1/Tanht
ctgru/Reshape_2/shape/1Const*
_output_shapes
: *
dtype0*
value	B : 2
ctgru/Reshape_2/shape/1t
ctgru/Reshape_2/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
ctgru/Reshape_2/shape/2�
ctgru/Reshape_2/shapePackctgru/strided_slice:output:0 ctgru/Reshape_2/shape/1:output:0 ctgru/Reshape_2/shape/2:output:0*
N*
T0*
_output_shapes
:2
ctgru/Reshape_2/shape�
ctgru/Reshape_2Reshapectgru/dense_1/Tanh:y:0ctgru/Reshape_2/shape:output:0*
T0*#
_output_shapes
:� 2
ctgru/Reshape_2�
#ctgru/dense_2/MatMul/ReadVariableOpReadVariableOp,ctgru_dense_2_matmul_readvariableop_resource*
_output_shapes
:	(�*
dtype02%
#ctgru/dense_2/MatMul/ReadVariableOp�
ctgru/dense_2/MatMulMatMulctgru/concat:output:0+ctgru/dense_2/MatMul/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��2
ctgru/dense_2/MatMul�
$ctgru/dense_2/BiasAdd/ReadVariableOpReadVariableOp-ctgru_dense_2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02&
$ctgru/dense_2/BiasAdd/ReadVariableOp�
ctgru/dense_2/BiasAddBiasAddctgru/dense_2/MatMul:product:0,ctgru/dense_2/BiasAdd/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��2
ctgru/dense_2/BiasAddt
ctgru/Reshape_3/shape/1Const*
_output_shapes
: *
dtype0*
value	B : 2
ctgru/Reshape_3/shape/1t
ctgru/Reshape_3/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
ctgru/Reshape_3/shape/2�
ctgru/Reshape_3/shapePackctgru/strided_slice:output:0 ctgru/Reshape_3/shape/1:output:0 ctgru/Reshape_3/shape/2:output:0*
N*
T0*
_output_shapes
:2
ctgru/Reshape_3/shape�
ctgru/Reshape_3Reshapectgru/dense_2/BiasAdd:output:0ctgru/Reshape_3/shape:output:0*
T0*#
_output_shapes
:� 2
ctgru/Reshape_3�
ctgru/sub_1/yConst*
_output_shapes
:*
dtype0*5
value,B*"     �]�?�]@U]@�]�@�4�@U�@�� A2
ctgru/sub_1/y�
ctgru/sub_1Subctgru/Reshape_3:output:0ctgru/sub_1/y:output:0*
T0*#
_output_shapes
:� 2
ctgru/sub_1i
ctgru/Square_1Squarectgru/sub_1:z:0*
T0*#
_output_shapes
:� 2
ctgru/Square_1c
ctgru/Neg_1Negctgru/Square_1:y:0*
T0*#
_output_shapes
:� 2
ctgru/Neg_1l
ctgru/Softmax_1Softmaxctgru/Neg_1:y:0*
T0*#
_output_shapes
:� 2
ctgru/Softmax_1c
ctgru/sub_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
ctgru/sub_2/x�
ctgru/sub_2Subctgru/sub_2/x:output:0ctgru/Softmax_1:softmax:0*
T0*#
_output_shapes
:� 2
ctgru/sub_2x
ctgru/mul_1Mulctgru/sub_2:z:0ctgru/Reshape:output:0*
T0*#
_output_shapes
:� 2
ctgru/mul_1�
ctgru/mul_2Mulctgru/Softmax_1:softmax:0ctgru/Reshape_2:output:0*
T0*#
_output_shapes
:� 2
ctgru/mul_2o
	ctgru/addAddV2ctgru/mul_1:z:0ctgru/mul_2:z:0*
T0*#
_output_shapes
:� 2
	ctgru/add�
ctgru/Exp/xConst*
_output_shapes
:*
dtype0*U
valueLBJ"@      �IHb=Կ��������q:�N�0��y�G�z����3���i�����MbP�*���k�4�2
ctgru/Exp/xX
	ctgru/ExpExpctgru/Exp/x:output:0*
T0*
_output_shapes
:2
	ctgru/Exp�
ctgru/Reshape_4/shapeConst*
_output_shapes
:*
dtype0*!
valueB"����      2
ctgru/Reshape_4/shape�
ctgru/Reshape_4Reshapectgru/Exp:y:0ctgru/Reshape_4/shape:output:0*
T0*"
_output_shapes
:2
ctgru/Reshape_4v

ctgru/CastCastctgru/Reshape_4:output:0*

DstT0*

SrcT0*"
_output_shapes
:2

ctgru/Castn
ctgru/mul_3Mulctgru/add:z:0ctgru/Cast:y:0*
T0*#
_output_shapes
:� 2
ctgru/mul_3�
ctgru/Sum_2/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
ctgru/Sum_2/reduction_indices�
ctgru/Sum_2Sumctgru/mul_3:z:0&ctgru/Sum_2/reduction_indices:output:0*
T0*
_output_shapes
:	� 2
ctgru/Sum_2u
ctgru/Reshape_5/shape/1Const*
_output_shapes
: *
dtype0*
value
B :�2
ctgru/Reshape_5/shape/1�
ctgru/Reshape_5/shapePackctgru/strided_slice:output:0 ctgru/Reshape_5/shape/1:output:0*
N*
T0*
_output_shapes
:2
ctgru/Reshape_5/shape�
ctgru/Reshape_5Reshapectgru/mul_3:z:0ctgru/Reshape_5/shape:output:0*
T0* 
_output_shapes
:
��2
ctgru/Reshape_5�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"�       2
TensorArrayV2_1/element_shape�
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
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
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*ctgru_dense_matmul_readvariableop_resource+ctgru_dense_biasadd_readvariableop_resource,ctgru_dense_1_matmul_readvariableop_resource-ctgru_dense_1_biasadd_readvariableop_resource,ctgru_dense_2_matmul_readvariableop_resource-ctgru_dense_2_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*8
_output_shapes&
$: : : : :
��: : : : : : : : *(
_read_only_resource_inputs

	
*
bodyR
while_body_160550*
condR
while_cond_160549*7
output_shapes&
$: : : : :
��: : : : : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"�       22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*#
_output_shapes
:b� *
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
:	� *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*#
_output_shapes
:�b 2
transpose_1�
IdentityIdentitystrided_slice_3:output:0#^ctgru/dense/BiasAdd/ReadVariableOp"^ctgru/dense/MatMul/ReadVariableOp%^ctgru/dense_1/BiasAdd/ReadVariableOp$^ctgru/dense_1/MatMul/ReadVariableOp%^ctgru/dense_2/BiasAdd/ReadVariableOp$^ctgru/dense_2/MatMul/ReadVariableOp^while*
T0*
_output_shapes
:	� 2

Identity"
identityIdentity:output:0*:
_input_shapes)
':�b::::::2H
"ctgru/dense/BiasAdd/ReadVariableOp"ctgru/dense/BiasAdd/ReadVariableOp2F
!ctgru/dense/MatMul/ReadVariableOp!ctgru/dense/MatMul/ReadVariableOp2L
$ctgru/dense_1/BiasAdd/ReadVariableOp$ctgru/dense_1/BiasAdd/ReadVariableOp2J
#ctgru/dense_1/MatMul/ReadVariableOp#ctgru/dense_1/MatMul/ReadVariableOp2L
$ctgru/dense_2/BiasAdd/ReadVariableOp$ctgru/dense_2/BiasAdd/ReadVariableOp2J
#ctgru/dense_2/MatMul/ReadVariableOp#ctgru/dense_2/MatMul/ReadVariableOp2
whilewhile:K G
#
_output_shapes
:�b
 
_user_specified_nameinputs
މ
�
while_body_162093
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_06
2while_ctgru_dense_matmul_readvariableop_resource_07
3while_ctgru_dense_biasadd_readvariableop_resource_08
4while_ctgru_dense_1_matmul_readvariableop_resource_09
5while_ctgru_dense_1_biasadd_readvariableop_resource_08
4while_ctgru_dense_2_matmul_readvariableop_resource_09
5while_ctgru_dense_2_biasadd_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor4
0while_ctgru_dense_matmul_readvariableop_resource5
1while_ctgru_dense_biasadd_readvariableop_resource6
2while_ctgru_dense_1_matmul_readvariableop_resource7
3while_ctgru_dense_1_biasadd_readvariableop_resource6
2while_ctgru_dense_2_matmul_readvariableop_resource7
3while_ctgru_dense_2_biasadd_readvariableop_resource��(while/ctgru/dense/BiasAdd/ReadVariableOp�'while/ctgru/dense/MatMul/ReadVariableOp�*while/ctgru/dense_1/BiasAdd/ReadVariableOp�)while/ctgru/dense_1/MatMul/ReadVariableOp�*while/ctgru/dense_2/BiasAdd/ReadVariableOp�)while/ctgru/dense_2/MatMul/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"�      29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes
:	�*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemw
while/ctgru/ShapeConst*
_output_shapes
:*
dtype0*
valueB"�      2
while/ctgru/Shape�
while/ctgru/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2!
while/ctgru/strided_slice/stack�
!while/ctgru/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2#
!while/ctgru/strided_slice/stack_1�
!while/ctgru/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!while/ctgru/strided_slice/stack_2�
while/ctgru/strided_sliceStridedSlicewhile/ctgru/Shape:output:0(while/ctgru/strided_slice/stack:output:0*while/ctgru/strided_slice/stack_1:output:0*while/ctgru/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
while/ctgru/strided_slice|
while/ctgru/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B : 2
while/ctgru/Reshape/shape/1|
while/ctgru/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
while/ctgru/Reshape/shape/2�
while/ctgru/Reshape/shapePack"while/ctgru/strided_slice:output:0$while/ctgru/Reshape/shape/1:output:0$while/ctgru/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
while/ctgru/Reshape/shape�
while/ctgru/ReshapeReshapewhile_placeholder_2"while/ctgru/Reshape/shape:output:0*
T0*#
_output_shapes
:� 2
while/ctgru/Reshape�
!while/ctgru/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/ctgru/Sum/reduction_indices�
while/ctgru/SumSumwhile/ctgru/Reshape:output:0*while/ctgru/Sum/reduction_indices:output:0*
T0*
_output_shapes
:	� 2
while/ctgru/Sum}
while/ctgru/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
���������2
while/ctgru/concat/axis�
while/ctgru/concatConcatV20while/TensorArrayV2Read/TensorListGetItem:item:0while/ctgru/Sum:output:0 while/ctgru/concat/axis:output:0*
N*
T0*
_output_shapes
:	�(2
while/ctgru/concat�
'while/ctgru/dense/MatMul/ReadVariableOpReadVariableOp2while_ctgru_dense_matmul_readvariableop_resource_0*
_output_shapes
:	(�*
dtype02)
'while/ctgru/dense/MatMul/ReadVariableOp�
while/ctgru/dense/MatMulMatMulwhile/ctgru/concat:output:0/while/ctgru/dense/MatMul/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��2
while/ctgru/dense/MatMul�
(while/ctgru/dense/BiasAdd/ReadVariableOpReadVariableOp3while_ctgru_dense_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype02*
(while/ctgru/dense/BiasAdd/ReadVariableOp�
while/ctgru/dense/BiasAddBiasAdd"while/ctgru/dense/MatMul:product:00while/ctgru/dense/BiasAdd/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��2
while/ctgru/dense/BiasAdd�
while/ctgru/Reshape_1/shape/1Const*
_output_shapes
: *
dtype0*
value	B : 2
while/ctgru/Reshape_1/shape/1�
while/ctgru/Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
while/ctgru/Reshape_1/shape/2�
while/ctgru/Reshape_1/shapePack"while/ctgru/strided_slice:output:0&while/ctgru/Reshape_1/shape/1:output:0&while/ctgru/Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:2
while/ctgru/Reshape_1/shape�
while/ctgru/Reshape_1Reshape"while/ctgru/dense/BiasAdd:output:0$while/ctgru/Reshape_1/shape:output:0*
T0*#
_output_shapes
:� 2
while/ctgru/Reshape_1�
while/ctgru/sub/yConst*
_output_shapes
:*
dtype0*5
value,B*"     �]�?�]@U]@�]�@�4�@U�@�� A2
while/ctgru/sub/y�
while/ctgru/subSubwhile/ctgru/Reshape_1:output:0while/ctgru/sub/y:output:0*
T0*#
_output_shapes
:� 2
while/ctgru/subu
while/ctgru/SquareSquarewhile/ctgru/sub:z:0*
T0*#
_output_shapes
:� 2
while/ctgru/Squareo
while/ctgru/NegNegwhile/ctgru/Square:y:0*
T0*#
_output_shapes
:� 2
while/ctgru/Negx
while/ctgru/SoftmaxSoftmaxwhile/ctgru/Neg:y:0*
T0*#
_output_shapes
:� 2
while/ctgru/Softmax�
while/ctgru/mulMulwhile/ctgru/Softmax:softmax:0while/ctgru/Reshape:output:0*
T0*#
_output_shapes
:� 2
while/ctgru/mul�
#while/ctgru/Sum_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/ctgru/Sum_1/reduction_indices�
while/ctgru/Sum_1Sumwhile/ctgru/mul:z:0,while/ctgru/Sum_1/reduction_indices:output:0*
T0*
_output_shapes
:	� 2
while/ctgru/Sum_1x
while/ctgru/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :2
while/ctgru/concat_1/axis�
while/ctgru/concat_1ConcatV20while/TensorArrayV2Read/TensorListGetItem:item:0while/ctgru/Sum_1:output:0"while/ctgru/concat_1/axis:output:0*
N*
T0*
_output_shapes
:	�(2
while/ctgru/concat_1�
)while/ctgru/dense_1/MatMul/ReadVariableOpReadVariableOp4while_ctgru_dense_1_matmul_readvariableop_resource_0*
_output_shapes

:( *
dtype02+
)while/ctgru/dense_1/MatMul/ReadVariableOp�
while/ctgru/dense_1/MatMulMatMulwhile/ctgru/concat_1:output:01while/ctgru/dense_1/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	� 2
while/ctgru/dense_1/MatMul�
*while/ctgru/dense_1/BiasAdd/ReadVariableOpReadVariableOp5while_ctgru_dense_1_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype02,
*while/ctgru/dense_1/BiasAdd/ReadVariableOp�
while/ctgru/dense_1/BiasAddBiasAdd$while/ctgru/dense_1/MatMul:product:02while/ctgru/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	� 2
while/ctgru/dense_1/BiasAdd�
while/ctgru/dense_1/TanhTanh$while/ctgru/dense_1/BiasAdd:output:0*
T0*
_output_shapes
:	� 2
while/ctgru/dense_1/Tanh�
while/ctgru/Reshape_2/shape/1Const*
_output_shapes
: *
dtype0*
value	B : 2
while/ctgru/Reshape_2/shape/1�
while/ctgru/Reshape_2/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
while/ctgru/Reshape_2/shape/2�
while/ctgru/Reshape_2/shapePack"while/ctgru/strided_slice:output:0&while/ctgru/Reshape_2/shape/1:output:0&while/ctgru/Reshape_2/shape/2:output:0*
N*
T0*
_output_shapes
:2
while/ctgru/Reshape_2/shape�
while/ctgru/Reshape_2Reshapewhile/ctgru/dense_1/Tanh:y:0$while/ctgru/Reshape_2/shape:output:0*
T0*#
_output_shapes
:� 2
while/ctgru/Reshape_2�
)while/ctgru/dense_2/MatMul/ReadVariableOpReadVariableOp4while_ctgru_dense_2_matmul_readvariableop_resource_0*
_output_shapes
:	(�*
dtype02+
)while/ctgru/dense_2/MatMul/ReadVariableOp�
while/ctgru/dense_2/MatMulMatMulwhile/ctgru/concat:output:01while/ctgru/dense_2/MatMul/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��2
while/ctgru/dense_2/MatMul�
*while/ctgru/dense_2/BiasAdd/ReadVariableOpReadVariableOp5while_ctgru_dense_2_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype02,
*while/ctgru/dense_2/BiasAdd/ReadVariableOp�
while/ctgru/dense_2/BiasAddBiasAdd$while/ctgru/dense_2/MatMul:product:02while/ctgru/dense_2/BiasAdd/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��2
while/ctgru/dense_2/BiasAdd�
while/ctgru/Reshape_3/shape/1Const*
_output_shapes
: *
dtype0*
value	B : 2
while/ctgru/Reshape_3/shape/1�
while/ctgru/Reshape_3/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
while/ctgru/Reshape_3/shape/2�
while/ctgru/Reshape_3/shapePack"while/ctgru/strided_slice:output:0&while/ctgru/Reshape_3/shape/1:output:0&while/ctgru/Reshape_3/shape/2:output:0*
N*
T0*
_output_shapes
:2
while/ctgru/Reshape_3/shape�
while/ctgru/Reshape_3Reshape$while/ctgru/dense_2/BiasAdd:output:0$while/ctgru/Reshape_3/shape:output:0*
T0*#
_output_shapes
:� 2
while/ctgru/Reshape_3�
while/ctgru/sub_1/yConst*
_output_shapes
:*
dtype0*5
value,B*"     �]�?�]@U]@�]�@�4�@U�@�� A2
while/ctgru/sub_1/y�
while/ctgru/sub_1Subwhile/ctgru/Reshape_3:output:0while/ctgru/sub_1/y:output:0*
T0*#
_output_shapes
:� 2
while/ctgru/sub_1{
while/ctgru/Square_1Squarewhile/ctgru/sub_1:z:0*
T0*#
_output_shapes
:� 2
while/ctgru/Square_1u
while/ctgru/Neg_1Negwhile/ctgru/Square_1:y:0*
T0*#
_output_shapes
:� 2
while/ctgru/Neg_1~
while/ctgru/Softmax_1Softmaxwhile/ctgru/Neg_1:y:0*
T0*#
_output_shapes
:� 2
while/ctgru/Softmax_1o
while/ctgru/sub_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
while/ctgru/sub_2/x�
while/ctgru/sub_2Subwhile/ctgru/sub_2/x:output:0while/ctgru/Softmax_1:softmax:0*
T0*#
_output_shapes
:� 2
while/ctgru/sub_2�
while/ctgru/mul_1Mulwhile/ctgru/sub_2:z:0while/ctgru/Reshape:output:0*
T0*#
_output_shapes
:� 2
while/ctgru/mul_1�
while/ctgru/mul_2Mulwhile/ctgru/Softmax_1:softmax:0while/ctgru/Reshape_2:output:0*
T0*#
_output_shapes
:� 2
while/ctgru/mul_2�
while/ctgru/addAddV2while/ctgru/mul_1:z:0while/ctgru/mul_2:z:0*
T0*#
_output_shapes
:� 2
while/ctgru/add�
while/ctgru/Exp/xConst*
_output_shapes
:*
dtype0*U
valueLBJ"@      �IHb=Կ��������q:�N�0��y�G�z����3���i�����MbP�*���k�4�2
while/ctgru/Exp/xj
while/ctgru/ExpExpwhile/ctgru/Exp/x:output:0*
T0*
_output_shapes
:2
while/ctgru/Exp�
while/ctgru/Reshape_4/shapeConst*
_output_shapes
:*
dtype0*!
valueB"����      2
while/ctgru/Reshape_4/shape�
while/ctgru/Reshape_4Reshapewhile/ctgru/Exp:y:0$while/ctgru/Reshape_4/shape:output:0*
T0*"
_output_shapes
:2
while/ctgru/Reshape_4�
while/ctgru/CastCastwhile/ctgru/Reshape_4:output:0*

DstT0*

SrcT0*"
_output_shapes
:2
while/ctgru/Cast�
while/ctgru/mul_3Mulwhile/ctgru/add:z:0while/ctgru/Cast:y:0*
T0*#
_output_shapes
:� 2
while/ctgru/mul_3�
#while/ctgru/Sum_2/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/ctgru/Sum_2/reduction_indices�
while/ctgru/Sum_2Sumwhile/ctgru/mul_3:z:0,while/ctgru/Sum_2/reduction_indices:output:0*
T0*
_output_shapes
:	� 2
while/ctgru/Sum_2�
while/ctgru/Reshape_5/shape/1Const*
_output_shapes
: *
dtype0*
value
B :�2
while/ctgru/Reshape_5/shape/1�
while/ctgru/Reshape_5/shapePack"while/ctgru/strided_slice:output:0&while/ctgru/Reshape_5/shape/1:output:0*
N*
T0*
_output_shapes
:2
while/ctgru/Reshape_5/shape�
while/ctgru/Reshape_5Reshapewhile/ctgru/mul_3:z:0$while/ctgru/Reshape_5/shape:output:0*
T0* 
_output_shapes
:
��2
while/ctgru/Reshape_5�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/ctgru/Sum_2:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1�
while/IdentityIdentitywhile/add_1:z:0)^while/ctgru/dense/BiasAdd/ReadVariableOp(^while/ctgru/dense/MatMul/ReadVariableOp+^while/ctgru/dense_1/BiasAdd/ReadVariableOp*^while/ctgru/dense_1/MatMul/ReadVariableOp+^while/ctgru/dense_2/BiasAdd/ReadVariableOp*^while/ctgru/dense_2/MatMul/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity�
while/Identity_1Identitywhile_while_maximum_iterations)^while/ctgru/dense/BiasAdd/ReadVariableOp(^while/ctgru/dense/MatMul/ReadVariableOp+^while/ctgru/dense_1/BiasAdd/ReadVariableOp*^while/ctgru/dense_1/MatMul/ReadVariableOp+^while/ctgru/dense_2/BiasAdd/ReadVariableOp*^while/ctgru/dense_2/MatMul/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1�
while/Identity_2Identitywhile/add:z:0)^while/ctgru/dense/BiasAdd/ReadVariableOp(^while/ctgru/dense/MatMul/ReadVariableOp+^while/ctgru/dense_1/BiasAdd/ReadVariableOp*^while/ctgru/dense_1/MatMul/ReadVariableOp+^while/ctgru/dense_2/BiasAdd/ReadVariableOp*^while/ctgru/dense_2/MatMul/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^while/ctgru/dense/BiasAdd/ReadVariableOp(^while/ctgru/dense/MatMul/ReadVariableOp+^while/ctgru/dense_1/BiasAdd/ReadVariableOp*^while/ctgru/dense_1/MatMul/ReadVariableOp+^while/ctgru/dense_2/BiasAdd/ReadVariableOp*^while/ctgru/dense_2/MatMul/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identitywhile/ctgru/Reshape_5:output:0)^while/ctgru/dense/BiasAdd/ReadVariableOp(^while/ctgru/dense/MatMul/ReadVariableOp+^while/ctgru/dense_1/BiasAdd/ReadVariableOp*^while/ctgru/dense_1/MatMul/ReadVariableOp+^while/ctgru/dense_2/BiasAdd/ReadVariableOp*^while/ctgru/dense_2/MatMul/ReadVariableOp*
T0* 
_output_shapes
:
��2
while/Identity_4"l
3while_ctgru_dense_1_biasadd_readvariableop_resource5while_ctgru_dense_1_biasadd_readvariableop_resource_0"j
2while_ctgru_dense_1_matmul_readvariableop_resource4while_ctgru_dense_1_matmul_readvariableop_resource_0"l
3while_ctgru_dense_2_biasadd_readvariableop_resource5while_ctgru_dense_2_biasadd_readvariableop_resource_0"j
2while_ctgru_dense_2_matmul_readvariableop_resource4while_ctgru_dense_2_matmul_readvariableop_resource_0"h
1while_ctgru_dense_biasadd_readvariableop_resource3while_ctgru_dense_biasadd_readvariableop_resource_0"f
0while_ctgru_dense_matmul_readvariableop_resource2while_ctgru_dense_matmul_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*C
_input_shapes2
0: : : : :
��: : ::::::2T
(while/ctgru/dense/BiasAdd/ReadVariableOp(while/ctgru/dense/BiasAdd/ReadVariableOp2R
'while/ctgru/dense/MatMul/ReadVariableOp'while/ctgru/dense/MatMul/ReadVariableOp2X
*while/ctgru/dense_1/BiasAdd/ReadVariableOp*while/ctgru/dense_1/BiasAdd/ReadVariableOp2V
)while/ctgru/dense_1/MatMul/ReadVariableOp)while/ctgru/dense_1/MatMul/ReadVariableOp2X
*while/ctgru/dense_2/BiasAdd/ReadVariableOp*while/ctgru/dense_2/BiasAdd/ReadVariableOp2V
)while/ctgru/dense_2/MatMul/ReadVariableOp)while/ctgru/dense_2/MatMul/ReadVariableOp: 
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
: :&"
 
_output_shapes
:
��:

_output_shapes
: :

_output_shapes
: 
�
�
while_cond_162092
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_162092___redundant_placeholder04
0while_while_cond_162092___redundant_placeholder14
0while_while_cond_162092___redundant_placeholder24
0while_while_cond_162092___redundant_placeholder34
0while_while_cond_162092___redundant_placeholder44
0while_while_cond_162092___redundant_placeholder54
0while_while_cond_162092___redundant_placeholder6
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
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
while_identitywhile/Identity:output:0*E
_input_shapes4
2: : : : :
��: :::::::: 
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
: :&"
 
_output_shapes
:
��:

_output_shapes
: :

_output_shapes
:
��
�
?__inference_rnn_layer_call_and_return_conditional_losses_161703
inputs_0.
*ctgru_dense_matmul_readvariableop_resource/
+ctgru_dense_biasadd_readvariableop_resource0
,ctgru_dense_1_matmul_readvariableop_resource1
-ctgru_dense_1_biasadd_readvariableop_resource0
,ctgru_dense_2_matmul_readvariableop_resource1
-ctgru_dense_2_biasadd_readvariableop_resource
identity��"ctgru/dense/BiasAdd/ReadVariableOp�!ctgru/dense/MatMul/ReadVariableOp�$ctgru/dense_1/BiasAdd/ReadVariableOp�#ctgru/dense_1/MatMul/ReadVariableOp�$ctgru/dense_2/BiasAdd/ReadVariableOp�#ctgru/dense_2/MatMul/ReadVariableOp�whileF
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
strided_slice/stack_2�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :�2
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
B :�2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :�2
zeros/packed/1�
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
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:����������2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm�
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :������������������2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
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
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2
strided_slice_2b
ctgru/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:2
ctgru/Shape�
ctgru/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
ctgru/strided_slice/stack�
ctgru/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
ctgru/strided_slice/stack_1�
ctgru/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
ctgru/strided_slice/stack_2�
ctgru/strided_sliceStridedSlicectgru/Shape:output:0"ctgru/strided_slice/stack:output:0$ctgru/strided_slice/stack_1:output:0$ctgru/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
ctgru/strided_slicep
ctgru/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B : 2
ctgru/Reshape/shape/1p
ctgru/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
ctgru/Reshape/shape/2�
ctgru/Reshape/shapePackctgru/strided_slice:output:0ctgru/Reshape/shape/1:output:0ctgru/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
ctgru/Reshape/shape�
ctgru/ReshapeReshapezeros:output:0ctgru/Reshape/shape:output:0*
T0*+
_output_shapes
:��������� 2
ctgru/Reshape|
ctgru/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
ctgru/Sum/reduction_indices�
	ctgru/SumSumctgru/Reshape:output:0$ctgru/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:��������� 2
	ctgru/Sumq
ctgru/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
���������2
ctgru/concat/axis�
ctgru/concatConcatV2strided_slice_2:output:0ctgru/Sum:output:0ctgru/concat/axis:output:0*
N*
T0*'
_output_shapes
:���������(2
ctgru/concat�
!ctgru/dense/MatMul/ReadVariableOpReadVariableOp*ctgru_dense_matmul_readvariableop_resource*
_output_shapes
:	(�*
dtype02#
!ctgru/dense/MatMul/ReadVariableOp�
ctgru/dense/MatMulMatMulctgru/concat:output:0)ctgru/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
ctgru/dense/MatMul�
"ctgru/dense/BiasAdd/ReadVariableOpReadVariableOp+ctgru_dense_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02$
"ctgru/dense/BiasAdd/ReadVariableOp�
ctgru/dense/BiasAddBiasAddctgru/dense/MatMul:product:0*ctgru/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
ctgru/dense/BiasAddt
ctgru/Reshape_1/shape/1Const*
_output_shapes
: *
dtype0*
value	B : 2
ctgru/Reshape_1/shape/1t
ctgru/Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
ctgru/Reshape_1/shape/2�
ctgru/Reshape_1/shapePackctgru/strided_slice:output:0 ctgru/Reshape_1/shape/1:output:0 ctgru/Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:2
ctgru/Reshape_1/shape�
ctgru/Reshape_1Reshapectgru/dense/BiasAdd:output:0ctgru/Reshape_1/shape:output:0*
T0*+
_output_shapes
:��������� 2
ctgru/Reshape_1�
ctgru/sub/yConst*
_output_shapes
:*
dtype0*5
value,B*"     �]�?�]@U]@�]�@�4�@U�@�� A2
ctgru/sub/y�
	ctgru/subSubctgru/Reshape_1:output:0ctgru/sub/y:output:0*
T0*+
_output_shapes
:��������� 2
	ctgru/subk
ctgru/SquareSquarectgru/sub:z:0*
T0*+
_output_shapes
:��������� 2
ctgru/Squaree
	ctgru/NegNegctgru/Square:y:0*
T0*+
_output_shapes
:��������� 2
	ctgru/Negn
ctgru/SoftmaxSoftmaxctgru/Neg:y:0*
T0*+
_output_shapes
:��������� 2
ctgru/Softmax�
	ctgru/mulMulctgru/Softmax:softmax:0ctgru/Reshape:output:0*
T0*+
_output_shapes
:��������� 2
	ctgru/mul�
ctgru/Sum_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
ctgru/Sum_1/reduction_indices�
ctgru/Sum_1Sumctgru/mul:z:0&ctgru/Sum_1/reduction_indices:output:0*
T0*'
_output_shapes
:��������� 2
ctgru/Sum_1l
ctgru/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :2
ctgru/concat_1/axis�
ctgru/concat_1ConcatV2strided_slice_2:output:0ctgru/Sum_1:output:0ctgru/concat_1/axis:output:0*
N*
T0*'
_output_shapes
:���������(2
ctgru/concat_1�
#ctgru/dense_1/MatMul/ReadVariableOpReadVariableOp,ctgru_dense_1_matmul_readvariableop_resource*
_output_shapes

:( *
dtype02%
#ctgru/dense_1/MatMul/ReadVariableOp�
ctgru/dense_1/MatMulMatMulctgru/concat_1:output:0+ctgru/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� 2
ctgru/dense_1/MatMul�
$ctgru/dense_1/BiasAdd/ReadVariableOpReadVariableOp-ctgru_dense_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02&
$ctgru/dense_1/BiasAdd/ReadVariableOp�
ctgru/dense_1/BiasAddBiasAddctgru/dense_1/MatMul:product:0,ctgru/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� 2
ctgru/dense_1/BiasAdd�
ctgru/dense_1/TanhTanhctgru/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:��������� 2
ctgru/dense_1/Tanht
ctgru/Reshape_2/shape/1Const*
_output_shapes
: *
dtype0*
value	B : 2
ctgru/Reshape_2/shape/1t
ctgru/Reshape_2/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
ctgru/Reshape_2/shape/2�
ctgru/Reshape_2/shapePackctgru/strided_slice:output:0 ctgru/Reshape_2/shape/1:output:0 ctgru/Reshape_2/shape/2:output:0*
N*
T0*
_output_shapes
:2
ctgru/Reshape_2/shape�
ctgru/Reshape_2Reshapectgru/dense_1/Tanh:y:0ctgru/Reshape_2/shape:output:0*
T0*+
_output_shapes
:��������� 2
ctgru/Reshape_2�
#ctgru/dense_2/MatMul/ReadVariableOpReadVariableOp,ctgru_dense_2_matmul_readvariableop_resource*
_output_shapes
:	(�*
dtype02%
#ctgru/dense_2/MatMul/ReadVariableOp�
ctgru/dense_2/MatMulMatMulctgru/concat:output:0+ctgru/dense_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
ctgru/dense_2/MatMul�
$ctgru/dense_2/BiasAdd/ReadVariableOpReadVariableOp-ctgru_dense_2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02&
$ctgru/dense_2/BiasAdd/ReadVariableOp�
ctgru/dense_2/BiasAddBiasAddctgru/dense_2/MatMul:product:0,ctgru/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
ctgru/dense_2/BiasAddt
ctgru/Reshape_3/shape/1Const*
_output_shapes
: *
dtype0*
value	B : 2
ctgru/Reshape_3/shape/1t
ctgru/Reshape_3/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
ctgru/Reshape_3/shape/2�
ctgru/Reshape_3/shapePackctgru/strided_slice:output:0 ctgru/Reshape_3/shape/1:output:0 ctgru/Reshape_3/shape/2:output:0*
N*
T0*
_output_shapes
:2
ctgru/Reshape_3/shape�
ctgru/Reshape_3Reshapectgru/dense_2/BiasAdd:output:0ctgru/Reshape_3/shape:output:0*
T0*+
_output_shapes
:��������� 2
ctgru/Reshape_3�
ctgru/sub_1/yConst*
_output_shapes
:*
dtype0*5
value,B*"     �]�?�]@U]@�]�@�4�@U�@�� A2
ctgru/sub_1/y�
ctgru/sub_1Subctgru/Reshape_3:output:0ctgru/sub_1/y:output:0*
T0*+
_output_shapes
:��������� 2
ctgru/sub_1q
ctgru/Square_1Squarectgru/sub_1:z:0*
T0*+
_output_shapes
:��������� 2
ctgru/Square_1k
ctgru/Neg_1Negctgru/Square_1:y:0*
T0*+
_output_shapes
:��������� 2
ctgru/Neg_1t
ctgru/Softmax_1Softmaxctgru/Neg_1:y:0*
T0*+
_output_shapes
:��������� 2
ctgru/Softmax_1c
ctgru/sub_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
ctgru/sub_2/x�
ctgru/sub_2Subctgru/sub_2/x:output:0ctgru/Softmax_1:softmax:0*
T0*+
_output_shapes
:��������� 2
ctgru/sub_2�
ctgru/mul_1Mulctgru/sub_2:z:0ctgru/Reshape:output:0*
T0*+
_output_shapes
:��������� 2
ctgru/mul_1�
ctgru/mul_2Mulctgru/Softmax_1:softmax:0ctgru/Reshape_2:output:0*
T0*+
_output_shapes
:��������� 2
ctgru/mul_2w
	ctgru/addAddV2ctgru/mul_1:z:0ctgru/mul_2:z:0*
T0*+
_output_shapes
:��������� 2
	ctgru/add�
ctgru/Exp/xConst*
_output_shapes
:*
dtype0*U
valueLBJ"@      �IHb=Կ��������q:�N�0��y�G�z����3���i�����MbP�*���k�4�2
ctgru/Exp/xX
	ctgru/ExpExpctgru/Exp/x:output:0*
T0*
_output_shapes
:2
	ctgru/Exp�
ctgru/Reshape_4/shapeConst*
_output_shapes
:*
dtype0*!
valueB"����      2
ctgru/Reshape_4/shape�
ctgru/Reshape_4Reshapectgru/Exp:y:0ctgru/Reshape_4/shape:output:0*
T0*"
_output_shapes
:2
ctgru/Reshape_4v

ctgru/CastCastctgru/Reshape_4:output:0*

DstT0*

SrcT0*"
_output_shapes
:2

ctgru/Castv
ctgru/mul_3Mulctgru/add:z:0ctgru/Cast:y:0*
T0*+
_output_shapes
:��������� 2
ctgru/mul_3�
ctgru/Sum_2/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
ctgru/Sum_2/reduction_indices�
ctgru/Sum_2Sumctgru/mul_3:z:0&ctgru/Sum_2/reduction_indices:output:0*
T0*'
_output_shapes
:��������� 2
ctgru/Sum_2u
ctgru/Reshape_5/shape/1Const*
_output_shapes
: *
dtype0*
value
B :�2
ctgru/Reshape_5/shape/1�
ctgru/Reshape_5/shapePackctgru/strided_slice:output:0 ctgru/Reshape_5/shape/1:output:0*
N*
T0*
_output_shapes
:2
ctgru/Reshape_5/shape�
ctgru/Reshape_5Reshapectgru/mul_3:z:0ctgru/Reshape_5/shape:output:0*
T0*(
_output_shapes
:����������2
ctgru/Reshape_5�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    2
TensorArrayV2_1/element_shape�
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
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
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*ctgru_dense_matmul_readvariableop_resource+ctgru_dense_biasadd_readvariableop_resource,ctgru_dense_1_matmul_readvariableop_resource-ctgru_dense_1_biasadd_readvariableop_resource,ctgru_dense_2_matmul_readvariableop_resource-ctgru_dense_2_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*@
_output_shapes.
,: : : : :����������: : : : : : : : *(
_read_only_resource_inputs

	
*
bodyR
while_body_161567*
condR
while_cond_161566*?
output_shapes.
,: : : : :����������: : : : : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������ *
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:��������� *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������ 2
transpose_1�
IdentityIdentitystrided_slice_3:output:0#^ctgru/dense/BiasAdd/ReadVariableOp"^ctgru/dense/MatMul/ReadVariableOp%^ctgru/dense_1/BiasAdd/ReadVariableOp$^ctgru/dense_1/MatMul/ReadVariableOp%^ctgru/dense_2/BiasAdd/ReadVariableOp$^ctgru/dense_2/MatMul/ReadVariableOp^while*
T0*'
_output_shapes
:��������� 2

Identity"
identityIdentity:output:0*K
_input_shapes:
8:������������������::::::2H
"ctgru/dense/BiasAdd/ReadVariableOp"ctgru/dense/BiasAdd/ReadVariableOp2F
!ctgru/dense/MatMul/ReadVariableOp!ctgru/dense/MatMul/ReadVariableOp2L
$ctgru/dense_1/BiasAdd/ReadVariableOp$ctgru/dense_1/BiasAdd/ReadVariableOp2J
#ctgru/dense_1/MatMul/ReadVariableOp#ctgru/dense_1/MatMul/ReadVariableOp2L
$ctgru/dense_2/BiasAdd/ReadVariableOp$ctgru/dense_2/BiasAdd/ReadVariableOp2J
#ctgru/dense_2/MatMul/ReadVariableOp#ctgru/dense_2/MatMul/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs/0
�
�
A__inference_dense_layer_call_and_return_conditional_losses_162519

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: 
*
dtype02
MatMul/ReadVariableOpk
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	�
2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	�
2	
BiasAdd�
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*
_output_shapes
:	�
2

Identity"
identityIdentity:output:0*&
_input_shapes
:	� ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:G C

_output_shapes
:	� 
 
_user_specified_nameinputs
�
{
&__inference_dense_layer_call_fn_162528

inputs
unknown
	unknown_0
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:	�
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_1607442
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*
_output_shapes
:	�
2

Identity"
identityIdentity:output:0*&
_input_shapes
:	� ::22
StatefulPartitionedCallStatefulPartitionedCall:G C

_output_shapes
:	� 
 
_user_specified_nameinputs
��
�
!__inference__wrapped_model_159555
input_1
input_29
5ct_gru_rnn_ctgru_dense_matmul_readvariableop_resource:
6ct_gru_rnn_ctgru_dense_biasadd_readvariableop_resource;
7ct_gru_rnn_ctgru_dense_1_matmul_readvariableop_resource<
8ct_gru_rnn_ctgru_dense_1_biasadd_readvariableop_resource;
7ct_gru_rnn_ctgru_dense_2_matmul_readvariableop_resource<
8ct_gru_rnn_ctgru_dense_2_biasadd_readvariableop_resource/
+ct_gru_dense_matmul_readvariableop_resource0
,ct_gru_dense_biasadd_readvariableop_resource
identity��#ct_gru/dense/BiasAdd/ReadVariableOp�"ct_gru/dense/MatMul/ReadVariableOp�-ct_gru/rnn/ctgru/dense/BiasAdd/ReadVariableOp�,ct_gru/rnn/ctgru/dense/MatMul/ReadVariableOp�/ct_gru/rnn/ctgru/dense_1/BiasAdd/ReadVariableOp�.ct_gru/rnn/ctgru/dense_1/MatMul/ReadVariableOp�/ct_gru/rnn/ctgru/dense_2/BiasAdd/ReadVariableOp�.ct_gru/rnn/ctgru/dense_2/MatMul/ReadVariableOp�ct_gru/rnn/whiley
ct_gru/rnn/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"�   b      2
ct_gru/rnn/Shape�
ct_gru/rnn/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
ct_gru/rnn/strided_slice/stack�
 ct_gru/rnn/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 ct_gru/rnn/strided_slice/stack_1�
 ct_gru/rnn/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 ct_gru/rnn/strided_slice/stack_2�
ct_gru/rnn/strided_sliceStridedSlicect_gru/rnn/Shape:output:0'ct_gru/rnn/strided_slice/stack:output:0)ct_gru/rnn/strided_slice/stack_1:output:0)ct_gru/rnn/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
ct_gru/rnn/strided_slices
ct_gru/rnn/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :�2
ct_gru/rnn/zeros/mul/y�
ct_gru/rnn/zeros/mulMul!ct_gru/rnn/strided_slice:output:0ct_gru/rnn/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
ct_gru/rnn/zeros/mulu
ct_gru/rnn/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2
ct_gru/rnn/zeros/Less/y�
ct_gru/rnn/zeros/LessLessct_gru/rnn/zeros/mul:z:0 ct_gru/rnn/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
ct_gru/rnn/zeros/Lessy
ct_gru/rnn/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :�2
ct_gru/rnn/zeros/packed/1�
ct_gru/rnn/zeros/packedPack!ct_gru/rnn/strided_slice:output:0"ct_gru/rnn/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
ct_gru/rnn/zeros/packedu
ct_gru/rnn/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
ct_gru/rnn/zeros/Const�
ct_gru/rnn/zerosFill ct_gru/rnn/zeros/packed:output:0ct_gru/rnn/zeros/Const:output:0*
T0* 
_output_shapes
:
��2
ct_gru/rnn/zeros�
ct_gru/rnn/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
ct_gru/rnn/transpose/perm�
ct_gru/rnn/transpose	Transposeinput_1"ct_gru/rnn/transpose/perm:output:0*
T0*#
_output_shapes
:b�2
ct_gru/rnn/transpose}
ct_gru/rnn/Shape_1Const*
_output_shapes
:*
dtype0*!
valueB"b   �      2
ct_gru/rnn/Shape_1�
 ct_gru/rnn/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2"
 ct_gru/rnn/strided_slice_1/stack�
"ct_gru/rnn/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2$
"ct_gru/rnn/strided_slice_1/stack_1�
"ct_gru/rnn/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"ct_gru/rnn/strided_slice_1/stack_2�
ct_gru/rnn/strided_slice_1StridedSlicect_gru/rnn/Shape_1:output:0)ct_gru/rnn/strided_slice_1/stack:output:0+ct_gru/rnn/strided_slice_1/stack_1:output:0+ct_gru/rnn/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
ct_gru/rnn/strided_slice_1�
&ct_gru/rnn/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2(
&ct_gru/rnn/TensorArrayV2/element_shape�
ct_gru/rnn/TensorArrayV2TensorListReserve/ct_gru/rnn/TensorArrayV2/element_shape:output:0#ct_gru/rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
ct_gru/rnn/TensorArrayV2�
@ct_gru/rnn/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"�      2B
@ct_gru/rnn/TensorArrayUnstack/TensorListFromTensor/element_shape�
2ct_gru/rnn/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorct_gru/rnn/transpose:y:0Ict_gru/rnn/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type024
2ct_gru/rnn/TensorArrayUnstack/TensorListFromTensor�
 ct_gru/rnn/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2"
 ct_gru/rnn/strided_slice_2/stack�
"ct_gru/rnn/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2$
"ct_gru/rnn/strided_slice_2/stack_1�
"ct_gru/rnn/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"ct_gru/rnn/strided_slice_2/stack_2�
ct_gru/rnn/strided_slice_2StridedSlicect_gru/rnn/transpose:y:0)ct_gru/rnn/strided_slice_2/stack:output:0+ct_gru/rnn/strided_slice_2/stack_1:output:0+ct_gru/rnn/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	�*
shrink_axis_mask2
ct_gru/rnn/strided_slice_2�
ct_gru/rnn/ctgru/ShapeConst*
_output_shapes
:*
dtype0*
valueB"�      2
ct_gru/rnn/ctgru/Shape�
$ct_gru/rnn/ctgru/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2&
$ct_gru/rnn/ctgru/strided_slice/stack�
&ct_gru/rnn/ctgru/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2(
&ct_gru/rnn/ctgru/strided_slice/stack_1�
&ct_gru/rnn/ctgru/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2(
&ct_gru/rnn/ctgru/strided_slice/stack_2�
ct_gru/rnn/ctgru/strided_sliceStridedSlicect_gru/rnn/ctgru/Shape:output:0-ct_gru/rnn/ctgru/strided_slice/stack:output:0/ct_gru/rnn/ctgru/strided_slice/stack_1:output:0/ct_gru/rnn/ctgru/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2 
ct_gru/rnn/ctgru/strided_slice�
 ct_gru/rnn/ctgru/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B : 2"
 ct_gru/rnn/ctgru/Reshape/shape/1�
 ct_gru/rnn/ctgru/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2"
 ct_gru/rnn/ctgru/Reshape/shape/2�
ct_gru/rnn/ctgru/Reshape/shapePack'ct_gru/rnn/ctgru/strided_slice:output:0)ct_gru/rnn/ctgru/Reshape/shape/1:output:0)ct_gru/rnn/ctgru/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2 
ct_gru/rnn/ctgru/Reshape/shape�
ct_gru/rnn/ctgru/ReshapeReshapect_gru/rnn/zeros:output:0'ct_gru/rnn/ctgru/Reshape/shape:output:0*
T0*#
_output_shapes
:� 2
ct_gru/rnn/ctgru/Reshape�
&ct_gru/rnn/ctgru/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2(
&ct_gru/rnn/ctgru/Sum/reduction_indices�
ct_gru/rnn/ctgru/SumSum!ct_gru/rnn/ctgru/Reshape:output:0/ct_gru/rnn/ctgru/Sum/reduction_indices:output:0*
T0*
_output_shapes
:	� 2
ct_gru/rnn/ctgru/Sum�
ct_gru/rnn/ctgru/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
���������2
ct_gru/rnn/ctgru/concat/axis�
ct_gru/rnn/ctgru/concatConcatV2#ct_gru/rnn/strided_slice_2:output:0ct_gru/rnn/ctgru/Sum:output:0%ct_gru/rnn/ctgru/concat/axis:output:0*
N*
T0*
_output_shapes
:	�(2
ct_gru/rnn/ctgru/concat�
,ct_gru/rnn/ctgru/dense/MatMul/ReadVariableOpReadVariableOp5ct_gru_rnn_ctgru_dense_matmul_readvariableop_resource*
_output_shapes
:	(�*
dtype02.
,ct_gru/rnn/ctgru/dense/MatMul/ReadVariableOp�
ct_gru/rnn/ctgru/dense/MatMulMatMul ct_gru/rnn/ctgru/concat:output:04ct_gru/rnn/ctgru/dense/MatMul/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��2
ct_gru/rnn/ctgru/dense/MatMul�
-ct_gru/rnn/ctgru/dense/BiasAdd/ReadVariableOpReadVariableOp6ct_gru_rnn_ctgru_dense_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02/
-ct_gru/rnn/ctgru/dense/BiasAdd/ReadVariableOp�
ct_gru/rnn/ctgru/dense/BiasAddBiasAdd'ct_gru/rnn/ctgru/dense/MatMul:product:05ct_gru/rnn/ctgru/dense/BiasAdd/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��2 
ct_gru/rnn/ctgru/dense/BiasAdd�
"ct_gru/rnn/ctgru/Reshape_1/shape/1Const*
_output_shapes
: *
dtype0*
value	B : 2$
"ct_gru/rnn/ctgru/Reshape_1/shape/1�
"ct_gru/rnn/ctgru/Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2$
"ct_gru/rnn/ctgru/Reshape_1/shape/2�
 ct_gru/rnn/ctgru/Reshape_1/shapePack'ct_gru/rnn/ctgru/strided_slice:output:0+ct_gru/rnn/ctgru/Reshape_1/shape/1:output:0+ct_gru/rnn/ctgru/Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:2"
 ct_gru/rnn/ctgru/Reshape_1/shape�
ct_gru/rnn/ctgru/Reshape_1Reshape'ct_gru/rnn/ctgru/dense/BiasAdd:output:0)ct_gru/rnn/ctgru/Reshape_1/shape:output:0*
T0*#
_output_shapes
:� 2
ct_gru/rnn/ctgru/Reshape_1�
ct_gru/rnn/ctgru/sub/yConst*
_output_shapes
:*
dtype0*5
value,B*"     �]�?�]@U]@�]�@�4�@U�@�� A2
ct_gru/rnn/ctgru/sub/y�
ct_gru/rnn/ctgru/subSub#ct_gru/rnn/ctgru/Reshape_1:output:0ct_gru/rnn/ctgru/sub/y:output:0*
T0*#
_output_shapes
:� 2
ct_gru/rnn/ctgru/sub�
ct_gru/rnn/ctgru/SquareSquarect_gru/rnn/ctgru/sub:z:0*
T0*#
_output_shapes
:� 2
ct_gru/rnn/ctgru/Square~
ct_gru/rnn/ctgru/NegNegct_gru/rnn/ctgru/Square:y:0*
T0*#
_output_shapes
:� 2
ct_gru/rnn/ctgru/Neg�
ct_gru/rnn/ctgru/SoftmaxSoftmaxct_gru/rnn/ctgru/Neg:y:0*
T0*#
_output_shapes
:� 2
ct_gru/rnn/ctgru/Softmax�
ct_gru/rnn/ctgru/mulMul"ct_gru/rnn/ctgru/Softmax:softmax:0!ct_gru/rnn/ctgru/Reshape:output:0*
T0*#
_output_shapes
:� 2
ct_gru/rnn/ctgru/mul�
(ct_gru/rnn/ctgru/Sum_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2*
(ct_gru/rnn/ctgru/Sum_1/reduction_indices�
ct_gru/rnn/ctgru/Sum_1Sumct_gru/rnn/ctgru/mul:z:01ct_gru/rnn/ctgru/Sum_1/reduction_indices:output:0*
T0*
_output_shapes
:	� 2
ct_gru/rnn/ctgru/Sum_1�
ct_gru/rnn/ctgru/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :2 
ct_gru/rnn/ctgru/concat_1/axis�
ct_gru/rnn/ctgru/concat_1ConcatV2#ct_gru/rnn/strided_slice_2:output:0ct_gru/rnn/ctgru/Sum_1:output:0'ct_gru/rnn/ctgru/concat_1/axis:output:0*
N*
T0*
_output_shapes
:	�(2
ct_gru/rnn/ctgru/concat_1�
.ct_gru/rnn/ctgru/dense_1/MatMul/ReadVariableOpReadVariableOp7ct_gru_rnn_ctgru_dense_1_matmul_readvariableop_resource*
_output_shapes

:( *
dtype020
.ct_gru/rnn/ctgru/dense_1/MatMul/ReadVariableOp�
ct_gru/rnn/ctgru/dense_1/MatMulMatMul"ct_gru/rnn/ctgru/concat_1:output:06ct_gru/rnn/ctgru/dense_1/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	� 2!
ct_gru/rnn/ctgru/dense_1/MatMul�
/ct_gru/rnn/ctgru/dense_1/BiasAdd/ReadVariableOpReadVariableOp8ct_gru_rnn_ctgru_dense_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype021
/ct_gru/rnn/ctgru/dense_1/BiasAdd/ReadVariableOp�
 ct_gru/rnn/ctgru/dense_1/BiasAddBiasAdd)ct_gru/rnn/ctgru/dense_1/MatMul:product:07ct_gru/rnn/ctgru/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	� 2"
 ct_gru/rnn/ctgru/dense_1/BiasAdd�
ct_gru/rnn/ctgru/dense_1/TanhTanh)ct_gru/rnn/ctgru/dense_1/BiasAdd:output:0*
T0*
_output_shapes
:	� 2
ct_gru/rnn/ctgru/dense_1/Tanh�
"ct_gru/rnn/ctgru/Reshape_2/shape/1Const*
_output_shapes
: *
dtype0*
value	B : 2$
"ct_gru/rnn/ctgru/Reshape_2/shape/1�
"ct_gru/rnn/ctgru/Reshape_2/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2$
"ct_gru/rnn/ctgru/Reshape_2/shape/2�
 ct_gru/rnn/ctgru/Reshape_2/shapePack'ct_gru/rnn/ctgru/strided_slice:output:0+ct_gru/rnn/ctgru/Reshape_2/shape/1:output:0+ct_gru/rnn/ctgru/Reshape_2/shape/2:output:0*
N*
T0*
_output_shapes
:2"
 ct_gru/rnn/ctgru/Reshape_2/shape�
ct_gru/rnn/ctgru/Reshape_2Reshape!ct_gru/rnn/ctgru/dense_1/Tanh:y:0)ct_gru/rnn/ctgru/Reshape_2/shape:output:0*
T0*#
_output_shapes
:� 2
ct_gru/rnn/ctgru/Reshape_2�
.ct_gru/rnn/ctgru/dense_2/MatMul/ReadVariableOpReadVariableOp7ct_gru_rnn_ctgru_dense_2_matmul_readvariableop_resource*
_output_shapes
:	(�*
dtype020
.ct_gru/rnn/ctgru/dense_2/MatMul/ReadVariableOp�
ct_gru/rnn/ctgru/dense_2/MatMulMatMul ct_gru/rnn/ctgru/concat:output:06ct_gru/rnn/ctgru/dense_2/MatMul/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��2!
ct_gru/rnn/ctgru/dense_2/MatMul�
/ct_gru/rnn/ctgru/dense_2/BiasAdd/ReadVariableOpReadVariableOp8ct_gru_rnn_ctgru_dense_2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype021
/ct_gru/rnn/ctgru/dense_2/BiasAdd/ReadVariableOp�
 ct_gru/rnn/ctgru/dense_2/BiasAddBiasAdd)ct_gru/rnn/ctgru/dense_2/MatMul:product:07ct_gru/rnn/ctgru/dense_2/BiasAdd/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��2"
 ct_gru/rnn/ctgru/dense_2/BiasAdd�
"ct_gru/rnn/ctgru/Reshape_3/shape/1Const*
_output_shapes
: *
dtype0*
value	B : 2$
"ct_gru/rnn/ctgru/Reshape_3/shape/1�
"ct_gru/rnn/ctgru/Reshape_3/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2$
"ct_gru/rnn/ctgru/Reshape_3/shape/2�
 ct_gru/rnn/ctgru/Reshape_3/shapePack'ct_gru/rnn/ctgru/strided_slice:output:0+ct_gru/rnn/ctgru/Reshape_3/shape/1:output:0+ct_gru/rnn/ctgru/Reshape_3/shape/2:output:0*
N*
T0*
_output_shapes
:2"
 ct_gru/rnn/ctgru/Reshape_3/shape�
ct_gru/rnn/ctgru/Reshape_3Reshape)ct_gru/rnn/ctgru/dense_2/BiasAdd:output:0)ct_gru/rnn/ctgru/Reshape_3/shape:output:0*
T0*#
_output_shapes
:� 2
ct_gru/rnn/ctgru/Reshape_3�
ct_gru/rnn/ctgru/sub_1/yConst*
_output_shapes
:*
dtype0*5
value,B*"     �]�?�]@U]@�]�@�4�@U�@�� A2
ct_gru/rnn/ctgru/sub_1/y�
ct_gru/rnn/ctgru/sub_1Sub#ct_gru/rnn/ctgru/Reshape_3:output:0!ct_gru/rnn/ctgru/sub_1/y:output:0*
T0*#
_output_shapes
:� 2
ct_gru/rnn/ctgru/sub_1�
ct_gru/rnn/ctgru/Square_1Squarect_gru/rnn/ctgru/sub_1:z:0*
T0*#
_output_shapes
:� 2
ct_gru/rnn/ctgru/Square_1�
ct_gru/rnn/ctgru/Neg_1Negct_gru/rnn/ctgru/Square_1:y:0*
T0*#
_output_shapes
:� 2
ct_gru/rnn/ctgru/Neg_1�
ct_gru/rnn/ctgru/Softmax_1Softmaxct_gru/rnn/ctgru/Neg_1:y:0*
T0*#
_output_shapes
:� 2
ct_gru/rnn/ctgru/Softmax_1y
ct_gru/rnn/ctgru/sub_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
ct_gru/rnn/ctgru/sub_2/x�
ct_gru/rnn/ctgru/sub_2Sub!ct_gru/rnn/ctgru/sub_2/x:output:0$ct_gru/rnn/ctgru/Softmax_1:softmax:0*
T0*#
_output_shapes
:� 2
ct_gru/rnn/ctgru/sub_2�
ct_gru/rnn/ctgru/mul_1Mulct_gru/rnn/ctgru/sub_2:z:0!ct_gru/rnn/ctgru/Reshape:output:0*
T0*#
_output_shapes
:� 2
ct_gru/rnn/ctgru/mul_1�
ct_gru/rnn/ctgru/mul_2Mul$ct_gru/rnn/ctgru/Softmax_1:softmax:0#ct_gru/rnn/ctgru/Reshape_2:output:0*
T0*#
_output_shapes
:� 2
ct_gru/rnn/ctgru/mul_2�
ct_gru/rnn/ctgru/addAddV2ct_gru/rnn/ctgru/mul_1:z:0ct_gru/rnn/ctgru/mul_2:z:0*
T0*#
_output_shapes
:� 2
ct_gru/rnn/ctgru/add�
ct_gru/rnn/ctgru/Exp/xConst*
_output_shapes
:*
dtype0*U
valueLBJ"@      �IHb=Կ��������q:�N�0��y�G�z����3���i�����MbP�*���k�4�2
ct_gru/rnn/ctgru/Exp/xy
ct_gru/rnn/ctgru/ExpExpct_gru/rnn/ctgru/Exp/x:output:0*
T0*
_output_shapes
:2
ct_gru/rnn/ctgru/Exp�
 ct_gru/rnn/ctgru/Reshape_4/shapeConst*
_output_shapes
:*
dtype0*!
valueB"����      2"
 ct_gru/rnn/ctgru/Reshape_4/shape�
ct_gru/rnn/ctgru/Reshape_4Reshapect_gru/rnn/ctgru/Exp:y:0)ct_gru/rnn/ctgru/Reshape_4/shape:output:0*
T0*"
_output_shapes
:2
ct_gru/rnn/ctgru/Reshape_4�
ct_gru/rnn/ctgru/CastCast#ct_gru/rnn/ctgru/Reshape_4:output:0*

DstT0*

SrcT0*"
_output_shapes
:2
ct_gru/rnn/ctgru/Cast�
ct_gru/rnn/ctgru/mul_3Mulct_gru/rnn/ctgru/add:z:0ct_gru/rnn/ctgru/Cast:y:0*
T0*#
_output_shapes
:� 2
ct_gru/rnn/ctgru/mul_3�
(ct_gru/rnn/ctgru/Sum_2/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2*
(ct_gru/rnn/ctgru/Sum_2/reduction_indices�
ct_gru/rnn/ctgru/Sum_2Sumct_gru/rnn/ctgru/mul_3:z:01ct_gru/rnn/ctgru/Sum_2/reduction_indices:output:0*
T0*
_output_shapes
:	� 2
ct_gru/rnn/ctgru/Sum_2�
"ct_gru/rnn/ctgru/Reshape_5/shape/1Const*
_output_shapes
: *
dtype0*
value
B :�2$
"ct_gru/rnn/ctgru/Reshape_5/shape/1�
 ct_gru/rnn/ctgru/Reshape_5/shapePack'ct_gru/rnn/ctgru/strided_slice:output:0+ct_gru/rnn/ctgru/Reshape_5/shape/1:output:0*
N*
T0*
_output_shapes
:2"
 ct_gru/rnn/ctgru/Reshape_5/shape�
ct_gru/rnn/ctgru/Reshape_5Reshapect_gru/rnn/ctgru/mul_3:z:0)ct_gru/rnn/ctgru/Reshape_5/shape:output:0*
T0* 
_output_shapes
:
��2
ct_gru/rnn/ctgru/Reshape_5�
(ct_gru/rnn/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"�       2*
(ct_gru/rnn/TensorArrayV2_1/element_shape�
ct_gru/rnn/TensorArrayV2_1TensorListReserve1ct_gru/rnn/TensorArrayV2_1/element_shape:output:0#ct_gru/rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
ct_gru/rnn/TensorArrayV2_1d
ct_gru/rnn/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
ct_gru/rnn/time�
#ct_gru/rnn/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������2%
#ct_gru/rnn/while/maximum_iterations�
ct_gru/rnn/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
ct_gru/rnn/while/loop_counter�
ct_gru/rnn/whileWhile&ct_gru/rnn/while/loop_counter:output:0,ct_gru/rnn/while/maximum_iterations:output:0ct_gru/rnn/time:output:0#ct_gru/rnn/TensorArrayV2_1:handle:0ct_gru/rnn/zeros:output:0#ct_gru/rnn/strided_slice_1:output:0Bct_gru/rnn/TensorArrayUnstack/TensorListFromTensor:output_handle:05ct_gru_rnn_ctgru_dense_matmul_readvariableop_resource6ct_gru_rnn_ctgru_dense_biasadd_readvariableop_resource7ct_gru_rnn_ctgru_dense_1_matmul_readvariableop_resource8ct_gru_rnn_ctgru_dense_1_biasadd_readvariableop_resource7ct_gru_rnn_ctgru_dense_2_matmul_readvariableop_resource8ct_gru_rnn_ctgru_dense_2_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*8
_output_shapes&
$: : : : :
��: : : : : : : : *(
_read_only_resource_inputs

	
*(
body R
ct_gru_rnn_while_body_159413*(
cond R
ct_gru_rnn_while_cond_159412*7
output_shapes&
$: : : : :
��: : : : : : : : *
parallel_iterations 2
ct_gru/rnn/while�
;ct_gru/rnn/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"�       2=
;ct_gru/rnn/TensorArrayV2Stack/TensorListStack/element_shape�
-ct_gru/rnn/TensorArrayV2Stack/TensorListStackTensorListStackct_gru/rnn/while:output:3Dct_gru/rnn/TensorArrayV2Stack/TensorListStack/element_shape:output:0*#
_output_shapes
:b� *
element_dtype02/
-ct_gru/rnn/TensorArrayV2Stack/TensorListStack�
 ct_gru/rnn/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2"
 ct_gru/rnn/strided_slice_3/stack�
"ct_gru/rnn/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2$
"ct_gru/rnn/strided_slice_3/stack_1�
"ct_gru/rnn/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"ct_gru/rnn/strided_slice_3/stack_2�
ct_gru/rnn/strided_slice_3StridedSlice6ct_gru/rnn/TensorArrayV2Stack/TensorListStack:tensor:0)ct_gru/rnn/strided_slice_3/stack:output:0+ct_gru/rnn/strided_slice_3/stack_1:output:0+ct_gru/rnn/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
:	� *
shrink_axis_mask2
ct_gru/rnn/strided_slice_3�
ct_gru/rnn/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
ct_gru/rnn/transpose_1/perm�
ct_gru/rnn/transpose_1	Transpose6ct_gru/rnn/TensorArrayV2Stack/TensorListStack:tensor:0$ct_gru/rnn/transpose_1/perm:output:0*
T0*#
_output_shapes
:�b 2
ct_gru/rnn/transpose_1�
"ct_gru/dense/MatMul/ReadVariableOpReadVariableOp+ct_gru_dense_matmul_readvariableop_resource*
_output_shapes

: 
*
dtype02$
"ct_gru/dense/MatMul/ReadVariableOp�
ct_gru/dense/MatMulMatMul#ct_gru/rnn/strided_slice_3:output:0*ct_gru/dense/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	�
2
ct_gru/dense/MatMul�
#ct_gru/dense/BiasAdd/ReadVariableOpReadVariableOp,ct_gru_dense_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02%
#ct_gru/dense/BiasAdd/ReadVariableOp�
ct_gru/dense/BiasAddBiasAddct_gru/dense/MatMul:product:0+ct_gru/dense/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	�
2
ct_gru/dense/BiasAdd�
IdentityIdentityct_gru/dense/BiasAdd:output:0$^ct_gru/dense/BiasAdd/ReadVariableOp#^ct_gru/dense/MatMul/ReadVariableOp.^ct_gru/rnn/ctgru/dense/BiasAdd/ReadVariableOp-^ct_gru/rnn/ctgru/dense/MatMul/ReadVariableOp0^ct_gru/rnn/ctgru/dense_1/BiasAdd/ReadVariableOp/^ct_gru/rnn/ctgru/dense_1/MatMul/ReadVariableOp0^ct_gru/rnn/ctgru/dense_2/BiasAdd/ReadVariableOp/^ct_gru/rnn/ctgru/dense_2/MatMul/ReadVariableOp^ct_gru/rnn/while*
T0*
_output_shapes
:	�
2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:�b:�b::::::::2J
#ct_gru/dense/BiasAdd/ReadVariableOp#ct_gru/dense/BiasAdd/ReadVariableOp2H
"ct_gru/dense/MatMul/ReadVariableOp"ct_gru/dense/MatMul/ReadVariableOp2^
-ct_gru/rnn/ctgru/dense/BiasAdd/ReadVariableOp-ct_gru/rnn/ctgru/dense/BiasAdd/ReadVariableOp2\
,ct_gru/rnn/ctgru/dense/MatMul/ReadVariableOp,ct_gru/rnn/ctgru/dense/MatMul/ReadVariableOp2b
/ct_gru/rnn/ctgru/dense_1/BiasAdd/ReadVariableOp/ct_gru/rnn/ctgru/dense_1/BiasAdd/ReadVariableOp2`
.ct_gru/rnn/ctgru/dense_1/MatMul/ReadVariableOp.ct_gru/rnn/ctgru/dense_1/MatMul/ReadVariableOp2b
/ct_gru/rnn/ctgru/dense_2/BiasAdd/ReadVariableOp/ct_gru/rnn/ctgru/dense_2/BiasAdd/ReadVariableOp2`
.ct_gru/rnn/ctgru/dense_2/MatMul/ReadVariableOp.ct_gru/rnn/ctgru/dense_2/MatMul/ReadVariableOp2$
ct_gru/rnn/whilect_gru/rnn/while:L H
#
_output_shapes
:�b
!
_user_specified_name	input_1:LH
#
_output_shapes
:�b
!
_user_specified_name	input_2
�

�
&__inference_ctgru_layer_call_fn_162629

inputs
states_0
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin

2*
Tout
2*
_collective_manager_ids
 *;
_output_shapes)
':��������� :����������*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_ctgru_layer_call_and_return_conditional_losses_1596682
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:��������� 2

Identity�

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*(
_output_shapes
:����������2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*R
_input_shapesA
?:���������:����������::::::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:RN
(
_output_shapes
:����������
"
_user_specified_name
states/0
͍
�
?__inference_rnn_layer_call_and_return_conditional_losses_162475

inputs.
*ctgru_dense_matmul_readvariableop_resource/
+ctgru_dense_biasadd_readvariableop_resource0
,ctgru_dense_1_matmul_readvariableop_resource1
-ctgru_dense_1_biasadd_readvariableop_resource0
,ctgru_dense_2_matmul_readvariableop_resource1
-ctgru_dense_2_biasadd_readvariableop_resource
identity��"ctgru/dense/BiasAdd/ReadVariableOp�!ctgru/dense/MatMul/ReadVariableOp�$ctgru/dense_1/BiasAdd/ReadVariableOp�#ctgru/dense_1/MatMul/ReadVariableOp�$ctgru/dense_2/BiasAdd/ReadVariableOp�#ctgru/dense_2/MatMul/ReadVariableOp�whilec
ShapeConst*
_output_shapes
:*
dtype0*!
valueB"�   b      2
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
strided_slice/stack_2�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :�2
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
B :�2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :�2
zeros/packed/1�
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
zeros/Constn
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0* 
_output_shapes
:
��2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permr
	transpose	Transposeinputstranspose/perm:output:0*
T0*#
_output_shapes
:b�2
	transposeg
Shape_1Const*
_output_shapes
:*
dtype0*!
valueB"b   �      2	
Shape_1x
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
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"�      27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	�*
shrink_axis_mask2
strided_slice_2k
ctgru/ShapeConst*
_output_shapes
:*
dtype0*
valueB"�      2
ctgru/Shape�
ctgru/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
ctgru/strided_slice/stack�
ctgru/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
ctgru/strided_slice/stack_1�
ctgru/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
ctgru/strided_slice/stack_2�
ctgru/strided_sliceStridedSlicectgru/Shape:output:0"ctgru/strided_slice/stack:output:0$ctgru/strided_slice/stack_1:output:0$ctgru/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
ctgru/strided_slicep
ctgru/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B : 2
ctgru/Reshape/shape/1p
ctgru/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
ctgru/Reshape/shape/2�
ctgru/Reshape/shapePackctgru/strided_slice:output:0ctgru/Reshape/shape/1:output:0ctgru/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
ctgru/Reshape/shape�
ctgru/ReshapeReshapezeros:output:0ctgru/Reshape/shape:output:0*
T0*#
_output_shapes
:� 2
ctgru/Reshape|
ctgru/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
ctgru/Sum/reduction_indices�
	ctgru/SumSumctgru/Reshape:output:0$ctgru/Sum/reduction_indices:output:0*
T0*
_output_shapes
:	� 2
	ctgru/Sumq
ctgru/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
���������2
ctgru/concat/axis�
ctgru/concatConcatV2strided_slice_2:output:0ctgru/Sum:output:0ctgru/concat/axis:output:0*
N*
T0*
_output_shapes
:	�(2
ctgru/concat�
!ctgru/dense/MatMul/ReadVariableOpReadVariableOp*ctgru_dense_matmul_readvariableop_resource*
_output_shapes
:	(�*
dtype02#
!ctgru/dense/MatMul/ReadVariableOp�
ctgru/dense/MatMulMatMulctgru/concat:output:0)ctgru/dense/MatMul/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��2
ctgru/dense/MatMul�
"ctgru/dense/BiasAdd/ReadVariableOpReadVariableOp+ctgru_dense_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02$
"ctgru/dense/BiasAdd/ReadVariableOp�
ctgru/dense/BiasAddBiasAddctgru/dense/MatMul:product:0*ctgru/dense/BiasAdd/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��2
ctgru/dense/BiasAddt
ctgru/Reshape_1/shape/1Const*
_output_shapes
: *
dtype0*
value	B : 2
ctgru/Reshape_1/shape/1t
ctgru/Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
ctgru/Reshape_1/shape/2�
ctgru/Reshape_1/shapePackctgru/strided_slice:output:0 ctgru/Reshape_1/shape/1:output:0 ctgru/Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:2
ctgru/Reshape_1/shape�
ctgru/Reshape_1Reshapectgru/dense/BiasAdd:output:0ctgru/Reshape_1/shape:output:0*
T0*#
_output_shapes
:� 2
ctgru/Reshape_1�
ctgru/sub/yConst*
_output_shapes
:*
dtype0*5
value,B*"     �]�?�]@U]@�]�@�4�@U�@�� A2
ctgru/sub/y{
	ctgru/subSubctgru/Reshape_1:output:0ctgru/sub/y:output:0*
T0*#
_output_shapes
:� 2
	ctgru/subc
ctgru/SquareSquarectgru/sub:z:0*
T0*#
_output_shapes
:� 2
ctgru/Square]
	ctgru/NegNegctgru/Square:y:0*
T0*#
_output_shapes
:� 2
	ctgru/Negf
ctgru/SoftmaxSoftmaxctgru/Neg:y:0*
T0*#
_output_shapes
:� 2
ctgru/Softmax|
	ctgru/mulMulctgru/Softmax:softmax:0ctgru/Reshape:output:0*
T0*#
_output_shapes
:� 2
	ctgru/mul�
ctgru/Sum_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
ctgru/Sum_1/reduction_indices�
ctgru/Sum_1Sumctgru/mul:z:0&ctgru/Sum_1/reduction_indices:output:0*
T0*
_output_shapes
:	� 2
ctgru/Sum_1l
ctgru/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :2
ctgru/concat_1/axis�
ctgru/concat_1ConcatV2strided_slice_2:output:0ctgru/Sum_1:output:0ctgru/concat_1/axis:output:0*
N*
T0*
_output_shapes
:	�(2
ctgru/concat_1�
#ctgru/dense_1/MatMul/ReadVariableOpReadVariableOp,ctgru_dense_1_matmul_readvariableop_resource*
_output_shapes

:( *
dtype02%
#ctgru/dense_1/MatMul/ReadVariableOp�
ctgru/dense_1/MatMulMatMulctgru/concat_1:output:0+ctgru/dense_1/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	� 2
ctgru/dense_1/MatMul�
$ctgru/dense_1/BiasAdd/ReadVariableOpReadVariableOp-ctgru_dense_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02&
$ctgru/dense_1/BiasAdd/ReadVariableOp�
ctgru/dense_1/BiasAddBiasAddctgru/dense_1/MatMul:product:0,ctgru/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	� 2
ctgru/dense_1/BiasAddz
ctgru/dense_1/TanhTanhctgru/dense_1/BiasAdd:output:0*
T0*
_output_shapes
:	� 2
ctgru/dense_1/Tanht
ctgru/Reshape_2/shape/1Const*
_output_shapes
: *
dtype0*
value	B : 2
ctgru/Reshape_2/shape/1t
ctgru/Reshape_2/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
ctgru/Reshape_2/shape/2�
ctgru/Reshape_2/shapePackctgru/strided_slice:output:0 ctgru/Reshape_2/shape/1:output:0 ctgru/Reshape_2/shape/2:output:0*
N*
T0*
_output_shapes
:2
ctgru/Reshape_2/shape�
ctgru/Reshape_2Reshapectgru/dense_1/Tanh:y:0ctgru/Reshape_2/shape:output:0*
T0*#
_output_shapes
:� 2
ctgru/Reshape_2�
#ctgru/dense_2/MatMul/ReadVariableOpReadVariableOp,ctgru_dense_2_matmul_readvariableop_resource*
_output_shapes
:	(�*
dtype02%
#ctgru/dense_2/MatMul/ReadVariableOp�
ctgru/dense_2/MatMulMatMulctgru/concat:output:0+ctgru/dense_2/MatMul/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��2
ctgru/dense_2/MatMul�
$ctgru/dense_2/BiasAdd/ReadVariableOpReadVariableOp-ctgru_dense_2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02&
$ctgru/dense_2/BiasAdd/ReadVariableOp�
ctgru/dense_2/BiasAddBiasAddctgru/dense_2/MatMul:product:0,ctgru/dense_2/BiasAdd/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��2
ctgru/dense_2/BiasAddt
ctgru/Reshape_3/shape/1Const*
_output_shapes
: *
dtype0*
value	B : 2
ctgru/Reshape_3/shape/1t
ctgru/Reshape_3/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
ctgru/Reshape_3/shape/2�
ctgru/Reshape_3/shapePackctgru/strided_slice:output:0 ctgru/Reshape_3/shape/1:output:0 ctgru/Reshape_3/shape/2:output:0*
N*
T0*
_output_shapes
:2
ctgru/Reshape_3/shape�
ctgru/Reshape_3Reshapectgru/dense_2/BiasAdd:output:0ctgru/Reshape_3/shape:output:0*
T0*#
_output_shapes
:� 2
ctgru/Reshape_3�
ctgru/sub_1/yConst*
_output_shapes
:*
dtype0*5
value,B*"     �]�?�]@U]@�]�@�4�@U�@�� A2
ctgru/sub_1/y�
ctgru/sub_1Subctgru/Reshape_3:output:0ctgru/sub_1/y:output:0*
T0*#
_output_shapes
:� 2
ctgru/sub_1i
ctgru/Square_1Squarectgru/sub_1:z:0*
T0*#
_output_shapes
:� 2
ctgru/Square_1c
ctgru/Neg_1Negctgru/Square_1:y:0*
T0*#
_output_shapes
:� 2
ctgru/Neg_1l
ctgru/Softmax_1Softmaxctgru/Neg_1:y:0*
T0*#
_output_shapes
:� 2
ctgru/Softmax_1c
ctgru/sub_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
ctgru/sub_2/x�
ctgru/sub_2Subctgru/sub_2/x:output:0ctgru/Softmax_1:softmax:0*
T0*#
_output_shapes
:� 2
ctgru/sub_2x
ctgru/mul_1Mulctgru/sub_2:z:0ctgru/Reshape:output:0*
T0*#
_output_shapes
:� 2
ctgru/mul_1�
ctgru/mul_2Mulctgru/Softmax_1:softmax:0ctgru/Reshape_2:output:0*
T0*#
_output_shapes
:� 2
ctgru/mul_2o
	ctgru/addAddV2ctgru/mul_1:z:0ctgru/mul_2:z:0*
T0*#
_output_shapes
:� 2
	ctgru/add�
ctgru/Exp/xConst*
_output_shapes
:*
dtype0*U
valueLBJ"@      �IHb=Կ��������q:�N�0��y�G�z����3���i�����MbP�*���k�4�2
ctgru/Exp/xX
	ctgru/ExpExpctgru/Exp/x:output:0*
T0*
_output_shapes
:2
	ctgru/Exp�
ctgru/Reshape_4/shapeConst*
_output_shapes
:*
dtype0*!
valueB"����      2
ctgru/Reshape_4/shape�
ctgru/Reshape_4Reshapectgru/Exp:y:0ctgru/Reshape_4/shape:output:0*
T0*"
_output_shapes
:2
ctgru/Reshape_4v

ctgru/CastCastctgru/Reshape_4:output:0*

DstT0*

SrcT0*"
_output_shapes
:2

ctgru/Castn
ctgru/mul_3Mulctgru/add:z:0ctgru/Cast:y:0*
T0*#
_output_shapes
:� 2
ctgru/mul_3�
ctgru/Sum_2/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
ctgru/Sum_2/reduction_indices�
ctgru/Sum_2Sumctgru/mul_3:z:0&ctgru/Sum_2/reduction_indices:output:0*
T0*
_output_shapes
:	� 2
ctgru/Sum_2u
ctgru/Reshape_5/shape/1Const*
_output_shapes
: *
dtype0*
value
B :�2
ctgru/Reshape_5/shape/1�
ctgru/Reshape_5/shapePackctgru/strided_slice:output:0 ctgru/Reshape_5/shape/1:output:0*
N*
T0*
_output_shapes
:2
ctgru/Reshape_5/shape�
ctgru/Reshape_5Reshapectgru/mul_3:z:0ctgru/Reshape_5/shape:output:0*
T0* 
_output_shapes
:
��2
ctgru/Reshape_5�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"�       2
TensorArrayV2_1/element_shape�
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
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
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*ctgru_dense_matmul_readvariableop_resource+ctgru_dense_biasadd_readvariableop_resource,ctgru_dense_1_matmul_readvariableop_resource-ctgru_dense_1_biasadd_readvariableop_resource,ctgru_dense_2_matmul_readvariableop_resource-ctgru_dense_2_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*8
_output_shapes&
$: : : : :
��: : : : : : : : *(
_read_only_resource_inputs

	
*
bodyR
while_body_162339*
condR
while_cond_162338*7
output_shapes&
$: : : : :
��: : : : : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"�       22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*#
_output_shapes
:b� *
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
:	� *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*#
_output_shapes
:�b 2
transpose_1�
IdentityIdentitystrided_slice_3:output:0#^ctgru/dense/BiasAdd/ReadVariableOp"^ctgru/dense/MatMul/ReadVariableOp%^ctgru/dense_1/BiasAdd/ReadVariableOp$^ctgru/dense_1/MatMul/ReadVariableOp%^ctgru/dense_2/BiasAdd/ReadVariableOp$^ctgru/dense_2/MatMul/ReadVariableOp^while*
T0*
_output_shapes
:	� 2

Identity"
identityIdentity:output:0*:
_input_shapes)
':�b::::::2H
"ctgru/dense/BiasAdd/ReadVariableOp"ctgru/dense/BiasAdd/ReadVariableOp2F
!ctgru/dense/MatMul/ReadVariableOp!ctgru/dense/MatMul/ReadVariableOp2L
$ctgru/dense_1/BiasAdd/ReadVariableOp$ctgru/dense_1/BiasAdd/ReadVariableOp2J
#ctgru/dense_1/MatMul/ReadVariableOp#ctgru/dense_1/MatMul/ReadVariableOp2L
$ctgru/dense_2/BiasAdd/ReadVariableOp$ctgru/dense_2/BiasAdd/ReadVariableOp2J
#ctgru/dense_2/MatMul/ReadVariableOp#ctgru/dense_2/MatMul/ReadVariableOp2
whilewhile:K G
#
_output_shapes
:�b
 
_user_specified_nameinputs
͍
�
?__inference_rnn_layer_call_and_return_conditional_losses_162229

inputs.
*ctgru_dense_matmul_readvariableop_resource/
+ctgru_dense_biasadd_readvariableop_resource0
,ctgru_dense_1_matmul_readvariableop_resource1
-ctgru_dense_1_biasadd_readvariableop_resource0
,ctgru_dense_2_matmul_readvariableop_resource1
-ctgru_dense_2_biasadd_readvariableop_resource
identity��"ctgru/dense/BiasAdd/ReadVariableOp�!ctgru/dense/MatMul/ReadVariableOp�$ctgru/dense_1/BiasAdd/ReadVariableOp�#ctgru/dense_1/MatMul/ReadVariableOp�$ctgru/dense_2/BiasAdd/ReadVariableOp�#ctgru/dense_2/MatMul/ReadVariableOp�whilec
ShapeConst*
_output_shapes
:*
dtype0*!
valueB"�   b      2
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
strided_slice/stack_2�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :�2
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
B :�2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :�2
zeros/packed/1�
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
zeros/Constn
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0* 
_output_shapes
:
��2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permr
	transpose	Transposeinputstranspose/perm:output:0*
T0*#
_output_shapes
:b�2
	transposeg
Shape_1Const*
_output_shapes
:*
dtype0*!
valueB"b   �      2	
Shape_1x
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
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"�      27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	�*
shrink_axis_mask2
strided_slice_2k
ctgru/ShapeConst*
_output_shapes
:*
dtype0*
valueB"�      2
ctgru/Shape�
ctgru/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
ctgru/strided_slice/stack�
ctgru/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
ctgru/strided_slice/stack_1�
ctgru/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
ctgru/strided_slice/stack_2�
ctgru/strided_sliceStridedSlicectgru/Shape:output:0"ctgru/strided_slice/stack:output:0$ctgru/strided_slice/stack_1:output:0$ctgru/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
ctgru/strided_slicep
ctgru/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B : 2
ctgru/Reshape/shape/1p
ctgru/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
ctgru/Reshape/shape/2�
ctgru/Reshape/shapePackctgru/strided_slice:output:0ctgru/Reshape/shape/1:output:0ctgru/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
ctgru/Reshape/shape�
ctgru/ReshapeReshapezeros:output:0ctgru/Reshape/shape:output:0*
T0*#
_output_shapes
:� 2
ctgru/Reshape|
ctgru/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
ctgru/Sum/reduction_indices�
	ctgru/SumSumctgru/Reshape:output:0$ctgru/Sum/reduction_indices:output:0*
T0*
_output_shapes
:	� 2
	ctgru/Sumq
ctgru/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
���������2
ctgru/concat/axis�
ctgru/concatConcatV2strided_slice_2:output:0ctgru/Sum:output:0ctgru/concat/axis:output:0*
N*
T0*
_output_shapes
:	�(2
ctgru/concat�
!ctgru/dense/MatMul/ReadVariableOpReadVariableOp*ctgru_dense_matmul_readvariableop_resource*
_output_shapes
:	(�*
dtype02#
!ctgru/dense/MatMul/ReadVariableOp�
ctgru/dense/MatMulMatMulctgru/concat:output:0)ctgru/dense/MatMul/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��2
ctgru/dense/MatMul�
"ctgru/dense/BiasAdd/ReadVariableOpReadVariableOp+ctgru_dense_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02$
"ctgru/dense/BiasAdd/ReadVariableOp�
ctgru/dense/BiasAddBiasAddctgru/dense/MatMul:product:0*ctgru/dense/BiasAdd/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��2
ctgru/dense/BiasAddt
ctgru/Reshape_1/shape/1Const*
_output_shapes
: *
dtype0*
value	B : 2
ctgru/Reshape_1/shape/1t
ctgru/Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
ctgru/Reshape_1/shape/2�
ctgru/Reshape_1/shapePackctgru/strided_slice:output:0 ctgru/Reshape_1/shape/1:output:0 ctgru/Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:2
ctgru/Reshape_1/shape�
ctgru/Reshape_1Reshapectgru/dense/BiasAdd:output:0ctgru/Reshape_1/shape:output:0*
T0*#
_output_shapes
:� 2
ctgru/Reshape_1�
ctgru/sub/yConst*
_output_shapes
:*
dtype0*5
value,B*"     �]�?�]@U]@�]�@�4�@U�@�� A2
ctgru/sub/y{
	ctgru/subSubctgru/Reshape_1:output:0ctgru/sub/y:output:0*
T0*#
_output_shapes
:� 2
	ctgru/subc
ctgru/SquareSquarectgru/sub:z:0*
T0*#
_output_shapes
:� 2
ctgru/Square]
	ctgru/NegNegctgru/Square:y:0*
T0*#
_output_shapes
:� 2
	ctgru/Negf
ctgru/SoftmaxSoftmaxctgru/Neg:y:0*
T0*#
_output_shapes
:� 2
ctgru/Softmax|
	ctgru/mulMulctgru/Softmax:softmax:0ctgru/Reshape:output:0*
T0*#
_output_shapes
:� 2
	ctgru/mul�
ctgru/Sum_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
ctgru/Sum_1/reduction_indices�
ctgru/Sum_1Sumctgru/mul:z:0&ctgru/Sum_1/reduction_indices:output:0*
T0*
_output_shapes
:	� 2
ctgru/Sum_1l
ctgru/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :2
ctgru/concat_1/axis�
ctgru/concat_1ConcatV2strided_slice_2:output:0ctgru/Sum_1:output:0ctgru/concat_1/axis:output:0*
N*
T0*
_output_shapes
:	�(2
ctgru/concat_1�
#ctgru/dense_1/MatMul/ReadVariableOpReadVariableOp,ctgru_dense_1_matmul_readvariableop_resource*
_output_shapes

:( *
dtype02%
#ctgru/dense_1/MatMul/ReadVariableOp�
ctgru/dense_1/MatMulMatMulctgru/concat_1:output:0+ctgru/dense_1/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	� 2
ctgru/dense_1/MatMul�
$ctgru/dense_1/BiasAdd/ReadVariableOpReadVariableOp-ctgru_dense_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02&
$ctgru/dense_1/BiasAdd/ReadVariableOp�
ctgru/dense_1/BiasAddBiasAddctgru/dense_1/MatMul:product:0,ctgru/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	� 2
ctgru/dense_1/BiasAddz
ctgru/dense_1/TanhTanhctgru/dense_1/BiasAdd:output:0*
T0*
_output_shapes
:	� 2
ctgru/dense_1/Tanht
ctgru/Reshape_2/shape/1Const*
_output_shapes
: *
dtype0*
value	B : 2
ctgru/Reshape_2/shape/1t
ctgru/Reshape_2/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
ctgru/Reshape_2/shape/2�
ctgru/Reshape_2/shapePackctgru/strided_slice:output:0 ctgru/Reshape_2/shape/1:output:0 ctgru/Reshape_2/shape/2:output:0*
N*
T0*
_output_shapes
:2
ctgru/Reshape_2/shape�
ctgru/Reshape_2Reshapectgru/dense_1/Tanh:y:0ctgru/Reshape_2/shape:output:0*
T0*#
_output_shapes
:� 2
ctgru/Reshape_2�
#ctgru/dense_2/MatMul/ReadVariableOpReadVariableOp,ctgru_dense_2_matmul_readvariableop_resource*
_output_shapes
:	(�*
dtype02%
#ctgru/dense_2/MatMul/ReadVariableOp�
ctgru/dense_2/MatMulMatMulctgru/concat:output:0+ctgru/dense_2/MatMul/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��2
ctgru/dense_2/MatMul�
$ctgru/dense_2/BiasAdd/ReadVariableOpReadVariableOp-ctgru_dense_2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02&
$ctgru/dense_2/BiasAdd/ReadVariableOp�
ctgru/dense_2/BiasAddBiasAddctgru/dense_2/MatMul:product:0,ctgru/dense_2/BiasAdd/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��2
ctgru/dense_2/BiasAddt
ctgru/Reshape_3/shape/1Const*
_output_shapes
: *
dtype0*
value	B : 2
ctgru/Reshape_3/shape/1t
ctgru/Reshape_3/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
ctgru/Reshape_3/shape/2�
ctgru/Reshape_3/shapePackctgru/strided_slice:output:0 ctgru/Reshape_3/shape/1:output:0 ctgru/Reshape_3/shape/2:output:0*
N*
T0*
_output_shapes
:2
ctgru/Reshape_3/shape�
ctgru/Reshape_3Reshapectgru/dense_2/BiasAdd:output:0ctgru/Reshape_3/shape:output:0*
T0*#
_output_shapes
:� 2
ctgru/Reshape_3�
ctgru/sub_1/yConst*
_output_shapes
:*
dtype0*5
value,B*"     �]�?�]@U]@�]�@�4�@U�@�� A2
ctgru/sub_1/y�
ctgru/sub_1Subctgru/Reshape_3:output:0ctgru/sub_1/y:output:0*
T0*#
_output_shapes
:� 2
ctgru/sub_1i
ctgru/Square_1Squarectgru/sub_1:z:0*
T0*#
_output_shapes
:� 2
ctgru/Square_1c
ctgru/Neg_1Negctgru/Square_1:y:0*
T0*#
_output_shapes
:� 2
ctgru/Neg_1l
ctgru/Softmax_1Softmaxctgru/Neg_1:y:0*
T0*#
_output_shapes
:� 2
ctgru/Softmax_1c
ctgru/sub_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
ctgru/sub_2/x�
ctgru/sub_2Subctgru/sub_2/x:output:0ctgru/Softmax_1:softmax:0*
T0*#
_output_shapes
:� 2
ctgru/sub_2x
ctgru/mul_1Mulctgru/sub_2:z:0ctgru/Reshape:output:0*
T0*#
_output_shapes
:� 2
ctgru/mul_1�
ctgru/mul_2Mulctgru/Softmax_1:softmax:0ctgru/Reshape_2:output:0*
T0*#
_output_shapes
:� 2
ctgru/mul_2o
	ctgru/addAddV2ctgru/mul_1:z:0ctgru/mul_2:z:0*
T0*#
_output_shapes
:� 2
	ctgru/add�
ctgru/Exp/xConst*
_output_shapes
:*
dtype0*U
valueLBJ"@      �IHb=Կ��������q:�N�0��y�G�z����3���i�����MbP�*���k�4�2
ctgru/Exp/xX
	ctgru/ExpExpctgru/Exp/x:output:0*
T0*
_output_shapes
:2
	ctgru/Exp�
ctgru/Reshape_4/shapeConst*
_output_shapes
:*
dtype0*!
valueB"����      2
ctgru/Reshape_4/shape�
ctgru/Reshape_4Reshapectgru/Exp:y:0ctgru/Reshape_4/shape:output:0*
T0*"
_output_shapes
:2
ctgru/Reshape_4v

ctgru/CastCastctgru/Reshape_4:output:0*

DstT0*

SrcT0*"
_output_shapes
:2

ctgru/Castn
ctgru/mul_3Mulctgru/add:z:0ctgru/Cast:y:0*
T0*#
_output_shapes
:� 2
ctgru/mul_3�
ctgru/Sum_2/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
ctgru/Sum_2/reduction_indices�
ctgru/Sum_2Sumctgru/mul_3:z:0&ctgru/Sum_2/reduction_indices:output:0*
T0*
_output_shapes
:	� 2
ctgru/Sum_2u
ctgru/Reshape_5/shape/1Const*
_output_shapes
: *
dtype0*
value
B :�2
ctgru/Reshape_5/shape/1�
ctgru/Reshape_5/shapePackctgru/strided_slice:output:0 ctgru/Reshape_5/shape/1:output:0*
N*
T0*
_output_shapes
:2
ctgru/Reshape_5/shape�
ctgru/Reshape_5Reshapectgru/mul_3:z:0ctgru/Reshape_5/shape:output:0*
T0* 
_output_shapes
:
��2
ctgru/Reshape_5�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"�       2
TensorArrayV2_1/element_shape�
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
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
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*ctgru_dense_matmul_readvariableop_resource+ctgru_dense_biasadd_readvariableop_resource,ctgru_dense_1_matmul_readvariableop_resource-ctgru_dense_1_biasadd_readvariableop_resource,ctgru_dense_2_matmul_readvariableop_resource-ctgru_dense_2_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*8
_output_shapes&
$: : : : :
��: : : : : : : : *(
_read_only_resource_inputs

	
*
bodyR
while_body_162093*
condR
while_cond_162092*7
output_shapes&
$: : : : :
��: : : : : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"�       22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*#
_output_shapes
:b� *
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
:	� *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*#
_output_shapes
:�b 2
transpose_1�
IdentityIdentitystrided_slice_3:output:0#^ctgru/dense/BiasAdd/ReadVariableOp"^ctgru/dense/MatMul/ReadVariableOp%^ctgru/dense_1/BiasAdd/ReadVariableOp$^ctgru/dense_1/MatMul/ReadVariableOp%^ctgru/dense_2/BiasAdd/ReadVariableOp$^ctgru/dense_2/MatMul/ReadVariableOp^while*
T0*
_output_shapes
:	� 2

Identity"
identityIdentity:output:0*:
_input_shapes)
':�b::::::2H
"ctgru/dense/BiasAdd/ReadVariableOp"ctgru/dense/BiasAdd/ReadVariableOp2F
!ctgru/dense/MatMul/ReadVariableOp!ctgru/dense/MatMul/ReadVariableOp2L
$ctgru/dense_1/BiasAdd/ReadVariableOp$ctgru/dense_1/BiasAdd/ReadVariableOp2J
#ctgru/dense_1/MatMul/ReadVariableOp#ctgru/dense_1/MatMul/ReadVariableOp2L
$ctgru/dense_2/BiasAdd/ReadVariableOp$ctgru/dense_2/BiasAdd/ReadVariableOp2J
#ctgru/dense_2/MatMul/ReadVariableOp#ctgru/dense_2/MatMul/ReadVariableOp2
whilewhile:K G
#
_output_shapes
:�b
 
_user_specified_nameinputs
��
�
while_body_161813
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_06
2while_ctgru_dense_matmul_readvariableop_resource_07
3while_ctgru_dense_biasadd_readvariableop_resource_08
4while_ctgru_dense_1_matmul_readvariableop_resource_09
5while_ctgru_dense_1_biasadd_readvariableop_resource_08
4while_ctgru_dense_2_matmul_readvariableop_resource_09
5while_ctgru_dense_2_biasadd_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor4
0while_ctgru_dense_matmul_readvariableop_resource5
1while_ctgru_dense_biasadd_readvariableop_resource6
2while_ctgru_dense_1_matmul_readvariableop_resource7
3while_ctgru_dense_1_biasadd_readvariableop_resource6
2while_ctgru_dense_2_matmul_readvariableop_resource7
3while_ctgru_dense_2_biasadd_readvariableop_resource��(while/ctgru/dense/BiasAdd/ReadVariableOp�'while/ctgru/dense/MatMul/ReadVariableOp�*while/ctgru/dense_1/BiasAdd/ReadVariableOp�)while/ctgru/dense_1/MatMul/ReadVariableOp�*while/ctgru/dense_2/BiasAdd/ReadVariableOp�)while/ctgru/dense_2/MatMul/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem�
while/ctgru/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2
while/ctgru/Shape�
while/ctgru/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2!
while/ctgru/strided_slice/stack�
!while/ctgru/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2#
!while/ctgru/strided_slice/stack_1�
!while/ctgru/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!while/ctgru/strided_slice/stack_2�
while/ctgru/strided_sliceStridedSlicewhile/ctgru/Shape:output:0(while/ctgru/strided_slice/stack:output:0*while/ctgru/strided_slice/stack_1:output:0*while/ctgru/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
while/ctgru/strided_slice|
while/ctgru/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B : 2
while/ctgru/Reshape/shape/1|
while/ctgru/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
while/ctgru/Reshape/shape/2�
while/ctgru/Reshape/shapePack"while/ctgru/strided_slice:output:0$while/ctgru/Reshape/shape/1:output:0$while/ctgru/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
while/ctgru/Reshape/shape�
while/ctgru/ReshapeReshapewhile_placeholder_2"while/ctgru/Reshape/shape:output:0*
T0*+
_output_shapes
:��������� 2
while/ctgru/Reshape�
!while/ctgru/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/ctgru/Sum/reduction_indices�
while/ctgru/SumSumwhile/ctgru/Reshape:output:0*while/ctgru/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:��������� 2
while/ctgru/Sum}
while/ctgru/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
���������2
while/ctgru/concat/axis�
while/ctgru/concatConcatV20while/TensorArrayV2Read/TensorListGetItem:item:0while/ctgru/Sum:output:0 while/ctgru/concat/axis:output:0*
N*
T0*'
_output_shapes
:���������(2
while/ctgru/concat�
'while/ctgru/dense/MatMul/ReadVariableOpReadVariableOp2while_ctgru_dense_matmul_readvariableop_resource_0*
_output_shapes
:	(�*
dtype02)
'while/ctgru/dense/MatMul/ReadVariableOp�
while/ctgru/dense/MatMulMatMulwhile/ctgru/concat:output:0/while/ctgru/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/ctgru/dense/MatMul�
(while/ctgru/dense/BiasAdd/ReadVariableOpReadVariableOp3while_ctgru_dense_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype02*
(while/ctgru/dense/BiasAdd/ReadVariableOp�
while/ctgru/dense/BiasAddBiasAdd"while/ctgru/dense/MatMul:product:00while/ctgru/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/ctgru/dense/BiasAdd�
while/ctgru/Reshape_1/shape/1Const*
_output_shapes
: *
dtype0*
value	B : 2
while/ctgru/Reshape_1/shape/1�
while/ctgru/Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
while/ctgru/Reshape_1/shape/2�
while/ctgru/Reshape_1/shapePack"while/ctgru/strided_slice:output:0&while/ctgru/Reshape_1/shape/1:output:0&while/ctgru/Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:2
while/ctgru/Reshape_1/shape�
while/ctgru/Reshape_1Reshape"while/ctgru/dense/BiasAdd:output:0$while/ctgru/Reshape_1/shape:output:0*
T0*+
_output_shapes
:��������� 2
while/ctgru/Reshape_1�
while/ctgru/sub/yConst*
_output_shapes
:*
dtype0*5
value,B*"     �]�?�]@U]@�]�@�4�@U�@�� A2
while/ctgru/sub/y�
while/ctgru/subSubwhile/ctgru/Reshape_1:output:0while/ctgru/sub/y:output:0*
T0*+
_output_shapes
:��������� 2
while/ctgru/sub}
while/ctgru/SquareSquarewhile/ctgru/sub:z:0*
T0*+
_output_shapes
:��������� 2
while/ctgru/Squarew
while/ctgru/NegNegwhile/ctgru/Square:y:0*
T0*+
_output_shapes
:��������� 2
while/ctgru/Neg�
while/ctgru/SoftmaxSoftmaxwhile/ctgru/Neg:y:0*
T0*+
_output_shapes
:��������� 2
while/ctgru/Softmax�
while/ctgru/mulMulwhile/ctgru/Softmax:softmax:0while/ctgru/Reshape:output:0*
T0*+
_output_shapes
:��������� 2
while/ctgru/mul�
#while/ctgru/Sum_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/ctgru/Sum_1/reduction_indices�
while/ctgru/Sum_1Sumwhile/ctgru/mul:z:0,while/ctgru/Sum_1/reduction_indices:output:0*
T0*'
_output_shapes
:��������� 2
while/ctgru/Sum_1x
while/ctgru/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :2
while/ctgru/concat_1/axis�
while/ctgru/concat_1ConcatV20while/TensorArrayV2Read/TensorListGetItem:item:0while/ctgru/Sum_1:output:0"while/ctgru/concat_1/axis:output:0*
N*
T0*'
_output_shapes
:���������(2
while/ctgru/concat_1�
)while/ctgru/dense_1/MatMul/ReadVariableOpReadVariableOp4while_ctgru_dense_1_matmul_readvariableop_resource_0*
_output_shapes

:( *
dtype02+
)while/ctgru/dense_1/MatMul/ReadVariableOp�
while/ctgru/dense_1/MatMulMatMulwhile/ctgru/concat_1:output:01while/ctgru/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� 2
while/ctgru/dense_1/MatMul�
*while/ctgru/dense_1/BiasAdd/ReadVariableOpReadVariableOp5while_ctgru_dense_1_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype02,
*while/ctgru/dense_1/BiasAdd/ReadVariableOp�
while/ctgru/dense_1/BiasAddBiasAdd$while/ctgru/dense_1/MatMul:product:02while/ctgru/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� 2
while/ctgru/dense_1/BiasAdd�
while/ctgru/dense_1/TanhTanh$while/ctgru/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:��������� 2
while/ctgru/dense_1/Tanh�
while/ctgru/Reshape_2/shape/1Const*
_output_shapes
: *
dtype0*
value	B : 2
while/ctgru/Reshape_2/shape/1�
while/ctgru/Reshape_2/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
while/ctgru/Reshape_2/shape/2�
while/ctgru/Reshape_2/shapePack"while/ctgru/strided_slice:output:0&while/ctgru/Reshape_2/shape/1:output:0&while/ctgru/Reshape_2/shape/2:output:0*
N*
T0*
_output_shapes
:2
while/ctgru/Reshape_2/shape�
while/ctgru/Reshape_2Reshapewhile/ctgru/dense_1/Tanh:y:0$while/ctgru/Reshape_2/shape:output:0*
T0*+
_output_shapes
:��������� 2
while/ctgru/Reshape_2�
)while/ctgru/dense_2/MatMul/ReadVariableOpReadVariableOp4while_ctgru_dense_2_matmul_readvariableop_resource_0*
_output_shapes
:	(�*
dtype02+
)while/ctgru/dense_2/MatMul/ReadVariableOp�
while/ctgru/dense_2/MatMulMatMulwhile/ctgru/concat:output:01while/ctgru/dense_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/ctgru/dense_2/MatMul�
*while/ctgru/dense_2/BiasAdd/ReadVariableOpReadVariableOp5while_ctgru_dense_2_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype02,
*while/ctgru/dense_2/BiasAdd/ReadVariableOp�
while/ctgru/dense_2/BiasAddBiasAdd$while/ctgru/dense_2/MatMul:product:02while/ctgru/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/ctgru/dense_2/BiasAdd�
while/ctgru/Reshape_3/shape/1Const*
_output_shapes
: *
dtype0*
value	B : 2
while/ctgru/Reshape_3/shape/1�
while/ctgru/Reshape_3/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
while/ctgru/Reshape_3/shape/2�
while/ctgru/Reshape_3/shapePack"while/ctgru/strided_slice:output:0&while/ctgru/Reshape_3/shape/1:output:0&while/ctgru/Reshape_3/shape/2:output:0*
N*
T0*
_output_shapes
:2
while/ctgru/Reshape_3/shape�
while/ctgru/Reshape_3Reshape$while/ctgru/dense_2/BiasAdd:output:0$while/ctgru/Reshape_3/shape:output:0*
T0*+
_output_shapes
:��������� 2
while/ctgru/Reshape_3�
while/ctgru/sub_1/yConst*
_output_shapes
:*
dtype0*5
value,B*"     �]�?�]@U]@�]�@�4�@U�@�� A2
while/ctgru/sub_1/y�
while/ctgru/sub_1Subwhile/ctgru/Reshape_3:output:0while/ctgru/sub_1/y:output:0*
T0*+
_output_shapes
:��������� 2
while/ctgru/sub_1�
while/ctgru/Square_1Squarewhile/ctgru/sub_1:z:0*
T0*+
_output_shapes
:��������� 2
while/ctgru/Square_1}
while/ctgru/Neg_1Negwhile/ctgru/Square_1:y:0*
T0*+
_output_shapes
:��������� 2
while/ctgru/Neg_1�
while/ctgru/Softmax_1Softmaxwhile/ctgru/Neg_1:y:0*
T0*+
_output_shapes
:��������� 2
while/ctgru/Softmax_1o
while/ctgru/sub_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
while/ctgru/sub_2/x�
while/ctgru/sub_2Subwhile/ctgru/sub_2/x:output:0while/ctgru/Softmax_1:softmax:0*
T0*+
_output_shapes
:��������� 2
while/ctgru/sub_2�
while/ctgru/mul_1Mulwhile/ctgru/sub_2:z:0while/ctgru/Reshape:output:0*
T0*+
_output_shapes
:��������� 2
while/ctgru/mul_1�
while/ctgru/mul_2Mulwhile/ctgru/Softmax_1:softmax:0while/ctgru/Reshape_2:output:0*
T0*+
_output_shapes
:��������� 2
while/ctgru/mul_2�
while/ctgru/addAddV2while/ctgru/mul_1:z:0while/ctgru/mul_2:z:0*
T0*+
_output_shapes
:��������� 2
while/ctgru/add�
while/ctgru/Exp/xConst*
_output_shapes
:*
dtype0*U
valueLBJ"@      �IHb=Կ��������q:�N�0��y�G�z����3���i�����MbP�*���k�4�2
while/ctgru/Exp/xj
while/ctgru/ExpExpwhile/ctgru/Exp/x:output:0*
T0*
_output_shapes
:2
while/ctgru/Exp�
while/ctgru/Reshape_4/shapeConst*
_output_shapes
:*
dtype0*!
valueB"����      2
while/ctgru/Reshape_4/shape�
while/ctgru/Reshape_4Reshapewhile/ctgru/Exp:y:0$while/ctgru/Reshape_4/shape:output:0*
T0*"
_output_shapes
:2
while/ctgru/Reshape_4�
while/ctgru/CastCastwhile/ctgru/Reshape_4:output:0*

DstT0*

SrcT0*"
_output_shapes
:2
while/ctgru/Cast�
while/ctgru/mul_3Mulwhile/ctgru/add:z:0while/ctgru/Cast:y:0*
T0*+
_output_shapes
:��������� 2
while/ctgru/mul_3�
#while/ctgru/Sum_2/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/ctgru/Sum_2/reduction_indices�
while/ctgru/Sum_2Sumwhile/ctgru/mul_3:z:0,while/ctgru/Sum_2/reduction_indices:output:0*
T0*'
_output_shapes
:��������� 2
while/ctgru/Sum_2�
while/ctgru/Reshape_5/shape/1Const*
_output_shapes
: *
dtype0*
value
B :�2
while/ctgru/Reshape_5/shape/1�
while/ctgru/Reshape_5/shapePack"while/ctgru/strided_slice:output:0&while/ctgru/Reshape_5/shape/1:output:0*
N*
T0*
_output_shapes
:2
while/ctgru/Reshape_5/shape�
while/ctgru/Reshape_5Reshapewhile/ctgru/mul_3:z:0$while/ctgru/Reshape_5/shape:output:0*
T0*(
_output_shapes
:����������2
while/ctgru/Reshape_5�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/ctgru/Sum_2:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1�
while/IdentityIdentitywhile/add_1:z:0)^while/ctgru/dense/BiasAdd/ReadVariableOp(^while/ctgru/dense/MatMul/ReadVariableOp+^while/ctgru/dense_1/BiasAdd/ReadVariableOp*^while/ctgru/dense_1/MatMul/ReadVariableOp+^while/ctgru/dense_2/BiasAdd/ReadVariableOp*^while/ctgru/dense_2/MatMul/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity�
while/Identity_1Identitywhile_while_maximum_iterations)^while/ctgru/dense/BiasAdd/ReadVariableOp(^while/ctgru/dense/MatMul/ReadVariableOp+^while/ctgru/dense_1/BiasAdd/ReadVariableOp*^while/ctgru/dense_1/MatMul/ReadVariableOp+^while/ctgru/dense_2/BiasAdd/ReadVariableOp*^while/ctgru/dense_2/MatMul/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1�
while/Identity_2Identitywhile/add:z:0)^while/ctgru/dense/BiasAdd/ReadVariableOp(^while/ctgru/dense/MatMul/ReadVariableOp+^while/ctgru/dense_1/BiasAdd/ReadVariableOp*^while/ctgru/dense_1/MatMul/ReadVariableOp+^while/ctgru/dense_2/BiasAdd/ReadVariableOp*^while/ctgru/dense_2/MatMul/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^while/ctgru/dense/BiasAdd/ReadVariableOp(^while/ctgru/dense/MatMul/ReadVariableOp+^while/ctgru/dense_1/BiasAdd/ReadVariableOp*^while/ctgru/dense_1/MatMul/ReadVariableOp+^while/ctgru/dense_2/BiasAdd/ReadVariableOp*^while/ctgru/dense_2/MatMul/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identitywhile/ctgru/Reshape_5:output:0)^while/ctgru/dense/BiasAdd/ReadVariableOp(^while/ctgru/dense/MatMul/ReadVariableOp+^while/ctgru/dense_1/BiasAdd/ReadVariableOp*^while/ctgru/dense_1/MatMul/ReadVariableOp+^while/ctgru/dense_2/BiasAdd/ReadVariableOp*^while/ctgru/dense_2/MatMul/ReadVariableOp*
T0*(
_output_shapes
:����������2
while/Identity_4"l
3while_ctgru_dense_1_biasadd_readvariableop_resource5while_ctgru_dense_1_biasadd_readvariableop_resource_0"j
2while_ctgru_dense_1_matmul_readvariableop_resource4while_ctgru_dense_1_matmul_readvariableop_resource_0"l
3while_ctgru_dense_2_biasadd_readvariableop_resource5while_ctgru_dense_2_biasadd_readvariableop_resource_0"j
2while_ctgru_dense_2_matmul_readvariableop_resource4while_ctgru_dense_2_matmul_readvariableop_resource_0"h
1while_ctgru_dense_biasadd_readvariableop_resource3while_ctgru_dense_biasadd_readvariableop_resource_0"f
0while_ctgru_dense_matmul_readvariableop_resource2while_ctgru_dense_matmul_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*K
_input_shapes:
8: : : : :����������: : ::::::2T
(while/ctgru/dense/BiasAdd/ReadVariableOp(while/ctgru/dense/BiasAdd/ReadVariableOp2R
'while/ctgru/dense/MatMul/ReadVariableOp'while/ctgru/dense/MatMul/ReadVariableOp2X
*while/ctgru/dense_1/BiasAdd/ReadVariableOp*while/ctgru/dense_1/BiasAdd/ReadVariableOp2V
)while/ctgru/dense_1/MatMul/ReadVariableOp)while/ctgru/dense_1/MatMul/ReadVariableOp2X
*while/ctgru/dense_2/BiasAdd/ReadVariableOp*while/ctgru/dense_2/BiasAdd/ReadVariableOp2V
)while/ctgru/dense_2/MatMul/ReadVariableOp)while/ctgru/dense_2/MatMul/ReadVariableOp: 
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
: :.*
(
_output_shapes
:����������:

_output_shapes
: :

_output_shapes
: 
�
�
A__inference_dense_layer_call_and_return_conditional_losses_160744

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: 
*
dtype02
MatMul/ReadVariableOpk
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	�
2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	�
2	
BiasAdd�
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*
_output_shapes
:	�
2

Identity"
identityIdentity:output:0*&
_input_shapes
:	� ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:G C

_output_shapes
:	� 
 
_user_specified_nameinputs
�	
�
while_cond_159958
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_159958___redundant_placeholder04
0while_while_cond_159958___redundant_placeholder14
0while_while_cond_159958___redundant_placeholder24
0while_while_cond_159958___redundant_placeholder34
0while_while_cond_159958___redundant_placeholder44
0while_while_cond_159958___redundant_placeholder54
0while_while_cond_159958___redundant_placeholder6
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
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
while_identitywhile/Identity:output:0*M
_input_shapes<
:: : : : :����������: :::::::: 
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
: :.*
(
_output_shapes
:����������:

_output_shapes
: :

_output_shapes
:
�
�
'__inference_ct_gru_layer_call_fn_160875
input_1
input_2
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1input_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2
*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:	�
**
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_ct_gru_layer_call_and_return_conditional_losses_1608562
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*
_output_shapes
:	�
2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:�b:�b::::::::22
StatefulPartitionedCallStatefulPartitionedCall:L H
#
_output_shapes
:�b
!
_user_specified_name	input_1:LH
#
_output_shapes
:�b
!
_user_specified_name	input_2
�<
�
?__inference_rnn_layer_call_and_return_conditional_losses_160175

inputs
ctgru_160082
ctgru_160084
ctgru_160086
ctgru_160088
ctgru_160090
ctgru_160092
identity��ctgru/StatefulPartitionedCall�whileD
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
strided_slice/stack_2�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :�2
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
B :�2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :�2
zeros/packed/1�
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
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:����������2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm�
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :������������������2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
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
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2
strided_slice_2�
ctgru/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0ctgru_160082ctgru_160084ctgru_160086ctgru_160088ctgru_160090ctgru_160092*
Tin

2*
Tout
2*
_collective_manager_ids
 *;
_output_shapes)
':��������� :����������*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_ctgru_layer_call_and_return_conditional_losses_1596682
ctgru/StatefulPartitionedCall�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    2
TensorArrayV2_1/element_shape�
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
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
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0ctgru_160082ctgru_160084ctgru_160086ctgru_160088ctgru_160090ctgru_160092*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*@
_output_shapes.
,: : : : :����������: : : : : : : : *(
_read_only_resource_inputs

	
*
bodyR
while_body_160100*
condR
while_cond_160099*?
output_shapes.
,: : : : :����������: : : : : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������ *
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:��������� *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������ 2
transpose_1�
IdentityIdentitystrided_slice_3:output:0^ctgru/StatefulPartitionedCall^while*
T0*'
_output_shapes
:��������� 2

Identity"
identityIdentity:output:0*K
_input_shapes:
8:������������������::::::2>
ctgru/StatefulPartitionedCallctgru/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�
�
'__inference_ct_gru_layer_call_fn_160830
input_1
input_2
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1input_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2
*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:	�
**
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_ct_gru_layer_call_and_return_conditional_losses_1608112
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*
_output_shapes
:	�
2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:�b:�b::::::::22
StatefulPartitionedCallStatefulPartitionedCall:L H
#
_output_shapes
:�b
!
_user_specified_name	input_1:LH
#
_output_shapes
:�b
!
_user_specified_name	input_2
��
�
B__inference_ct_gru_layer_call_and_return_conditional_losses_161160
inputs_0
inputs_12
.rnn_ctgru_dense_matmul_readvariableop_resource3
/rnn_ctgru_dense_biasadd_readvariableop_resource4
0rnn_ctgru_dense_1_matmul_readvariableop_resource5
1rnn_ctgru_dense_1_biasadd_readvariableop_resource4
0rnn_ctgru_dense_2_matmul_readvariableop_resource5
1rnn_ctgru_dense_2_biasadd_readvariableop_resource(
$dense_matmul_readvariableop_resource)
%dense_biasadd_readvariableop_resource
identity��dense/BiasAdd/ReadVariableOp�dense/MatMul/ReadVariableOp�&rnn/ctgru/dense/BiasAdd/ReadVariableOp�%rnn/ctgru/dense/MatMul/ReadVariableOp�(rnn/ctgru/dense_1/BiasAdd/ReadVariableOp�'rnn/ctgru/dense_1/MatMul/ReadVariableOp�(rnn/ctgru/dense_2/BiasAdd/ReadVariableOp�'rnn/ctgru/dense_2/MatMul/ReadVariableOp�	rnn/whilek
	rnn/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"�   b      2
	rnn/Shape|
rnn/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
rnn/strided_slice/stack�
rnn/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
rnn/strided_slice/stack_1�
rnn/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
rnn/strided_slice/stack_2�
rnn/strided_sliceStridedSlicernn/Shape:output:0 rnn/strided_slice/stack:output:0"rnn/strided_slice/stack_1:output:0"rnn/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
rnn/strided_slicee
rnn/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :�2
rnn/zeros/mul/y|
rnn/zeros/mulMulrnn/strided_slice:output:0rnn/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
rnn/zeros/mulg
rnn/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2
rnn/zeros/Less/yw
rnn/zeros/LessLessrnn/zeros/mul:z:0rnn/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
rnn/zeros/Lessk
rnn/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :�2
rnn/zeros/packed/1�
rnn/zeros/packedPackrnn/strided_slice:output:0rnn/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
rnn/zeros/packedg
rnn/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
rnn/zeros/Const~
	rnn/zerosFillrnn/zeros/packed:output:0rnn/zeros/Const:output:0*
T0* 
_output_shapes
:
��2
	rnn/zeros}
rnn/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
rnn/transpose/perm�
rnn/transpose	Transposeinputs_0rnn/transpose/perm:output:0*
T0*#
_output_shapes
:b�2
rnn/transposeo
rnn/Shape_1Const*
_output_shapes
:*
dtype0*!
valueB"b   �      2
rnn/Shape_1�
rnn/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
rnn/strided_slice_1/stack�
rnn/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
rnn/strided_slice_1/stack_1�
rnn/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
rnn/strided_slice_1/stack_2�
rnn/strided_slice_1StridedSlicernn/Shape_1:output:0"rnn/strided_slice_1/stack:output:0$rnn/strided_slice_1/stack_1:output:0$rnn/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
rnn/strided_slice_1�
rnn/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2!
rnn/TensorArrayV2/element_shape�
rnn/TensorArrayV2TensorListReserve(rnn/TensorArrayV2/element_shape:output:0rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
rnn/TensorArrayV2�
9rnn/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"�      2;
9rnn/TensorArrayUnstack/TensorListFromTensor/element_shape�
+rnn/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorrnn/transpose:y:0Brnn/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02-
+rnn/TensorArrayUnstack/TensorListFromTensor�
rnn/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
rnn/strided_slice_2/stack�
rnn/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
rnn/strided_slice_2/stack_1�
rnn/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
rnn/strided_slice_2/stack_2�
rnn/strided_slice_2StridedSlicernn/transpose:y:0"rnn/strided_slice_2/stack:output:0$rnn/strided_slice_2/stack_1:output:0$rnn/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	�*
shrink_axis_mask2
rnn/strided_slice_2s
rnn/ctgru/ShapeConst*
_output_shapes
:*
dtype0*
valueB"�      2
rnn/ctgru/Shape�
rnn/ctgru/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
rnn/ctgru/strided_slice/stack�
rnn/ctgru/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
rnn/ctgru/strided_slice/stack_1�
rnn/ctgru/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
rnn/ctgru/strided_slice/stack_2�
rnn/ctgru/strided_sliceStridedSlicernn/ctgru/Shape:output:0&rnn/ctgru/strided_slice/stack:output:0(rnn/ctgru/strided_slice/stack_1:output:0(rnn/ctgru/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
rnn/ctgru/strided_slicex
rnn/ctgru/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B : 2
rnn/ctgru/Reshape/shape/1x
rnn/ctgru/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
rnn/ctgru/Reshape/shape/2�
rnn/ctgru/Reshape/shapePack rnn/ctgru/strided_slice:output:0"rnn/ctgru/Reshape/shape/1:output:0"rnn/ctgru/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
rnn/ctgru/Reshape/shape�
rnn/ctgru/ReshapeReshapernn/zeros:output:0 rnn/ctgru/Reshape/shape:output:0*
T0*#
_output_shapes
:� 2
rnn/ctgru/Reshape�
rnn/ctgru/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2!
rnn/ctgru/Sum/reduction_indices�
rnn/ctgru/SumSumrnn/ctgru/Reshape:output:0(rnn/ctgru/Sum/reduction_indices:output:0*
T0*
_output_shapes
:	� 2
rnn/ctgru/Sumy
rnn/ctgru/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
���������2
rnn/ctgru/concat/axis�
rnn/ctgru/concatConcatV2rnn/strided_slice_2:output:0rnn/ctgru/Sum:output:0rnn/ctgru/concat/axis:output:0*
N*
T0*
_output_shapes
:	�(2
rnn/ctgru/concat�
%rnn/ctgru/dense/MatMul/ReadVariableOpReadVariableOp.rnn_ctgru_dense_matmul_readvariableop_resource*
_output_shapes
:	(�*
dtype02'
%rnn/ctgru/dense/MatMul/ReadVariableOp�
rnn/ctgru/dense/MatMulMatMulrnn/ctgru/concat:output:0-rnn/ctgru/dense/MatMul/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��2
rnn/ctgru/dense/MatMul�
&rnn/ctgru/dense/BiasAdd/ReadVariableOpReadVariableOp/rnn_ctgru_dense_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02(
&rnn/ctgru/dense/BiasAdd/ReadVariableOp�
rnn/ctgru/dense/BiasAddBiasAdd rnn/ctgru/dense/MatMul:product:0.rnn/ctgru/dense/BiasAdd/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��2
rnn/ctgru/dense/BiasAdd|
rnn/ctgru/Reshape_1/shape/1Const*
_output_shapes
: *
dtype0*
value	B : 2
rnn/ctgru/Reshape_1/shape/1|
rnn/ctgru/Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
rnn/ctgru/Reshape_1/shape/2�
rnn/ctgru/Reshape_1/shapePack rnn/ctgru/strided_slice:output:0$rnn/ctgru/Reshape_1/shape/1:output:0$rnn/ctgru/Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:2
rnn/ctgru/Reshape_1/shape�
rnn/ctgru/Reshape_1Reshape rnn/ctgru/dense/BiasAdd:output:0"rnn/ctgru/Reshape_1/shape:output:0*
T0*#
_output_shapes
:� 2
rnn/ctgru/Reshape_1�
rnn/ctgru/sub/yConst*
_output_shapes
:*
dtype0*5
value,B*"     �]�?�]@U]@�]�@�4�@U�@�� A2
rnn/ctgru/sub/y�
rnn/ctgru/subSubrnn/ctgru/Reshape_1:output:0rnn/ctgru/sub/y:output:0*
T0*#
_output_shapes
:� 2
rnn/ctgru/subo
rnn/ctgru/SquareSquarernn/ctgru/sub:z:0*
T0*#
_output_shapes
:� 2
rnn/ctgru/Squarei
rnn/ctgru/NegNegrnn/ctgru/Square:y:0*
T0*#
_output_shapes
:� 2
rnn/ctgru/Negr
rnn/ctgru/SoftmaxSoftmaxrnn/ctgru/Neg:y:0*
T0*#
_output_shapes
:� 2
rnn/ctgru/Softmax�
rnn/ctgru/mulMulrnn/ctgru/Softmax:softmax:0rnn/ctgru/Reshape:output:0*
T0*#
_output_shapes
:� 2
rnn/ctgru/mul�
!rnn/ctgru/Sum_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2#
!rnn/ctgru/Sum_1/reduction_indices�
rnn/ctgru/Sum_1Sumrnn/ctgru/mul:z:0*rnn/ctgru/Sum_1/reduction_indices:output:0*
T0*
_output_shapes
:	� 2
rnn/ctgru/Sum_1t
rnn/ctgru/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :2
rnn/ctgru/concat_1/axis�
rnn/ctgru/concat_1ConcatV2rnn/strided_slice_2:output:0rnn/ctgru/Sum_1:output:0 rnn/ctgru/concat_1/axis:output:0*
N*
T0*
_output_shapes
:	�(2
rnn/ctgru/concat_1�
'rnn/ctgru/dense_1/MatMul/ReadVariableOpReadVariableOp0rnn_ctgru_dense_1_matmul_readvariableop_resource*
_output_shapes

:( *
dtype02)
'rnn/ctgru/dense_1/MatMul/ReadVariableOp�
rnn/ctgru/dense_1/MatMulMatMulrnn/ctgru/concat_1:output:0/rnn/ctgru/dense_1/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	� 2
rnn/ctgru/dense_1/MatMul�
(rnn/ctgru/dense_1/BiasAdd/ReadVariableOpReadVariableOp1rnn_ctgru_dense_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02*
(rnn/ctgru/dense_1/BiasAdd/ReadVariableOp�
rnn/ctgru/dense_1/BiasAddBiasAdd"rnn/ctgru/dense_1/MatMul:product:00rnn/ctgru/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	� 2
rnn/ctgru/dense_1/BiasAdd�
rnn/ctgru/dense_1/TanhTanh"rnn/ctgru/dense_1/BiasAdd:output:0*
T0*
_output_shapes
:	� 2
rnn/ctgru/dense_1/Tanh|
rnn/ctgru/Reshape_2/shape/1Const*
_output_shapes
: *
dtype0*
value	B : 2
rnn/ctgru/Reshape_2/shape/1|
rnn/ctgru/Reshape_2/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
rnn/ctgru/Reshape_2/shape/2�
rnn/ctgru/Reshape_2/shapePack rnn/ctgru/strided_slice:output:0$rnn/ctgru/Reshape_2/shape/1:output:0$rnn/ctgru/Reshape_2/shape/2:output:0*
N*
T0*
_output_shapes
:2
rnn/ctgru/Reshape_2/shape�
rnn/ctgru/Reshape_2Reshapernn/ctgru/dense_1/Tanh:y:0"rnn/ctgru/Reshape_2/shape:output:0*
T0*#
_output_shapes
:� 2
rnn/ctgru/Reshape_2�
'rnn/ctgru/dense_2/MatMul/ReadVariableOpReadVariableOp0rnn_ctgru_dense_2_matmul_readvariableop_resource*
_output_shapes
:	(�*
dtype02)
'rnn/ctgru/dense_2/MatMul/ReadVariableOp�
rnn/ctgru/dense_2/MatMulMatMulrnn/ctgru/concat:output:0/rnn/ctgru/dense_2/MatMul/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��2
rnn/ctgru/dense_2/MatMul�
(rnn/ctgru/dense_2/BiasAdd/ReadVariableOpReadVariableOp1rnn_ctgru_dense_2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02*
(rnn/ctgru/dense_2/BiasAdd/ReadVariableOp�
rnn/ctgru/dense_2/BiasAddBiasAdd"rnn/ctgru/dense_2/MatMul:product:00rnn/ctgru/dense_2/BiasAdd/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��2
rnn/ctgru/dense_2/BiasAdd|
rnn/ctgru/Reshape_3/shape/1Const*
_output_shapes
: *
dtype0*
value	B : 2
rnn/ctgru/Reshape_3/shape/1|
rnn/ctgru/Reshape_3/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
rnn/ctgru/Reshape_3/shape/2�
rnn/ctgru/Reshape_3/shapePack rnn/ctgru/strided_slice:output:0$rnn/ctgru/Reshape_3/shape/1:output:0$rnn/ctgru/Reshape_3/shape/2:output:0*
N*
T0*
_output_shapes
:2
rnn/ctgru/Reshape_3/shape�
rnn/ctgru/Reshape_3Reshape"rnn/ctgru/dense_2/BiasAdd:output:0"rnn/ctgru/Reshape_3/shape:output:0*
T0*#
_output_shapes
:� 2
rnn/ctgru/Reshape_3�
rnn/ctgru/sub_1/yConst*
_output_shapes
:*
dtype0*5
value,B*"     �]�?�]@U]@�]�@�4�@U�@�� A2
rnn/ctgru/sub_1/y�
rnn/ctgru/sub_1Subrnn/ctgru/Reshape_3:output:0rnn/ctgru/sub_1/y:output:0*
T0*#
_output_shapes
:� 2
rnn/ctgru/sub_1u
rnn/ctgru/Square_1Squarernn/ctgru/sub_1:z:0*
T0*#
_output_shapes
:� 2
rnn/ctgru/Square_1o
rnn/ctgru/Neg_1Negrnn/ctgru/Square_1:y:0*
T0*#
_output_shapes
:� 2
rnn/ctgru/Neg_1x
rnn/ctgru/Softmax_1Softmaxrnn/ctgru/Neg_1:y:0*
T0*#
_output_shapes
:� 2
rnn/ctgru/Softmax_1k
rnn/ctgru/sub_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
rnn/ctgru/sub_2/x�
rnn/ctgru/sub_2Subrnn/ctgru/sub_2/x:output:0rnn/ctgru/Softmax_1:softmax:0*
T0*#
_output_shapes
:� 2
rnn/ctgru/sub_2�
rnn/ctgru/mul_1Mulrnn/ctgru/sub_2:z:0rnn/ctgru/Reshape:output:0*
T0*#
_output_shapes
:� 2
rnn/ctgru/mul_1�
rnn/ctgru/mul_2Mulrnn/ctgru/Softmax_1:softmax:0rnn/ctgru/Reshape_2:output:0*
T0*#
_output_shapes
:� 2
rnn/ctgru/mul_2
rnn/ctgru/addAddV2rnn/ctgru/mul_1:z:0rnn/ctgru/mul_2:z:0*
T0*#
_output_shapes
:� 2
rnn/ctgru/add�
rnn/ctgru/Exp/xConst*
_output_shapes
:*
dtype0*U
valueLBJ"@      �IHb=Կ��������q:�N�0��y�G�z����3���i�����MbP�*���k�4�2
rnn/ctgru/Exp/xd
rnn/ctgru/ExpExprnn/ctgru/Exp/x:output:0*
T0*
_output_shapes
:2
rnn/ctgru/Exp�
rnn/ctgru/Reshape_4/shapeConst*
_output_shapes
:*
dtype0*!
valueB"����      2
rnn/ctgru/Reshape_4/shape�
rnn/ctgru/Reshape_4Reshapernn/ctgru/Exp:y:0"rnn/ctgru/Reshape_4/shape:output:0*
T0*"
_output_shapes
:2
rnn/ctgru/Reshape_4�
rnn/ctgru/CastCastrnn/ctgru/Reshape_4:output:0*

DstT0*

SrcT0*"
_output_shapes
:2
rnn/ctgru/Cast~
rnn/ctgru/mul_3Mulrnn/ctgru/add:z:0rnn/ctgru/Cast:y:0*
T0*#
_output_shapes
:� 2
rnn/ctgru/mul_3�
!rnn/ctgru/Sum_2/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2#
!rnn/ctgru/Sum_2/reduction_indices�
rnn/ctgru/Sum_2Sumrnn/ctgru/mul_3:z:0*rnn/ctgru/Sum_2/reduction_indices:output:0*
T0*
_output_shapes
:	� 2
rnn/ctgru/Sum_2}
rnn/ctgru/Reshape_5/shape/1Const*
_output_shapes
: *
dtype0*
value
B :�2
rnn/ctgru/Reshape_5/shape/1�
rnn/ctgru/Reshape_5/shapePack rnn/ctgru/strided_slice:output:0$rnn/ctgru/Reshape_5/shape/1:output:0*
N*
T0*
_output_shapes
:2
rnn/ctgru/Reshape_5/shape�
rnn/ctgru/Reshape_5Reshapernn/ctgru/mul_3:z:0"rnn/ctgru/Reshape_5/shape:output:0*
T0* 
_output_shapes
:
��2
rnn/ctgru/Reshape_5�
!rnn/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"�       2#
!rnn/TensorArrayV2_1/element_shape�
rnn/TensorArrayV2_1TensorListReserve*rnn/TensorArrayV2_1/element_shape:output:0rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
rnn/TensorArrayV2_1V
rnn/timeConst*
_output_shapes
: *
dtype0*
value	B : 2

rnn/time�
rnn/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������2
rnn/while/maximum_iterationsr
rnn/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
rnn/while/loop_counter�
	rnn/whileWhilernn/while/loop_counter:output:0%rnn/while/maximum_iterations:output:0rnn/time:output:0rnn/TensorArrayV2_1:handle:0rnn/zeros:output:0rnn/strided_slice_1:output:0;rnn/TensorArrayUnstack/TensorListFromTensor:output_handle:0.rnn_ctgru_dense_matmul_readvariableop_resource/rnn_ctgru_dense_biasadd_readvariableop_resource0rnn_ctgru_dense_1_matmul_readvariableop_resource1rnn_ctgru_dense_1_biasadd_readvariableop_resource0rnn_ctgru_dense_2_matmul_readvariableop_resource1rnn_ctgru_dense_2_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*8
_output_shapes&
$: : : : :
��: : : : : : : : *(
_read_only_resource_inputs

	
*!
bodyR
rnn_while_body_161018*!
condR
rnn_while_cond_161017*7
output_shapes&
$: : : : :
��: : : : : : : : *
parallel_iterations 2
	rnn/while�
4rnn/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"�       26
4rnn/TensorArrayV2Stack/TensorListStack/element_shape�
&rnn/TensorArrayV2Stack/TensorListStackTensorListStackrnn/while:output:3=rnn/TensorArrayV2Stack/TensorListStack/element_shape:output:0*#
_output_shapes
:b� *
element_dtype02(
&rnn/TensorArrayV2Stack/TensorListStack�
rnn/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
rnn/strided_slice_3/stack�
rnn/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
rnn/strided_slice_3/stack_1�
rnn/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
rnn/strided_slice_3/stack_2�
rnn/strided_slice_3StridedSlice/rnn/TensorArrayV2Stack/TensorListStack:tensor:0"rnn/strided_slice_3/stack:output:0$rnn/strided_slice_3/stack_1:output:0$rnn/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
:	� *
shrink_axis_mask2
rnn/strided_slice_3�
rnn/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
rnn/transpose_1/perm�
rnn/transpose_1	Transpose/rnn/TensorArrayV2Stack/TensorListStack:tensor:0rnn/transpose_1/perm:output:0*
T0*#
_output_shapes
:�b 2
rnn/transpose_1�
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes

: 
*
dtype02
dense/MatMul/ReadVariableOp�
dense/MatMulMatMulrnn/strided_slice_3:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	�
2
dense/MatMul�
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
dense/BiasAdd/ReadVariableOp�
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	�
2
dense/BiasAdd�
IdentityIdentitydense/BiasAdd:output:0^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp'^rnn/ctgru/dense/BiasAdd/ReadVariableOp&^rnn/ctgru/dense/MatMul/ReadVariableOp)^rnn/ctgru/dense_1/BiasAdd/ReadVariableOp(^rnn/ctgru/dense_1/MatMul/ReadVariableOp)^rnn/ctgru/dense_2/BiasAdd/ReadVariableOp(^rnn/ctgru/dense_2/MatMul/ReadVariableOp
^rnn/while*
T0*
_output_shapes
:	�
2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:�b:�b::::::::2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2P
&rnn/ctgru/dense/BiasAdd/ReadVariableOp&rnn/ctgru/dense/BiasAdd/ReadVariableOp2N
%rnn/ctgru/dense/MatMul/ReadVariableOp%rnn/ctgru/dense/MatMul/ReadVariableOp2T
(rnn/ctgru/dense_1/BiasAdd/ReadVariableOp(rnn/ctgru/dense_1/BiasAdd/ReadVariableOp2R
'rnn/ctgru/dense_1/MatMul/ReadVariableOp'rnn/ctgru/dense_1/MatMul/ReadVariableOp2T
(rnn/ctgru/dense_2/BiasAdd/ReadVariableOp(rnn/ctgru/dense_2/BiasAdd/ReadVariableOp2R
'rnn/ctgru/dense_2/MatMul/ReadVariableOp'rnn/ctgru/dense_2/MatMul/ReadVariableOp2
	rnn/while	rnn/while:M I
#
_output_shapes
:�b
"
_user_specified_name
inputs/0:MI
#
_output_shapes
:�b
"
_user_specified_name
inputs/1
�
�
$__inference_rnn_layer_call_fn_162492

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:	� *(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_rnn_layer_call_and_return_conditional_losses_1604402
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*
_output_shapes
:	� 2

Identity"
identityIdentity:output:0*:
_input_shapes)
':�b::::::22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:�b
 
_user_specified_nameinputs
�	
�
rnn_while_cond_161270$
 rnn_while_rnn_while_loop_counter*
&rnn_while_rnn_while_maximum_iterations
rnn_while_placeholder
rnn_while_placeholder_1
rnn_while_placeholder_2&
"rnn_while_less_rnn_strided_slice_1<
8rnn_while_rnn_while_cond_161270___redundant_placeholder0<
8rnn_while_rnn_while_cond_161270___redundant_placeholder1<
8rnn_while_rnn_while_cond_161270___redundant_placeholder2<
8rnn_while_rnn_while_cond_161270___redundant_placeholder3<
8rnn_while_rnn_while_cond_161270___redundant_placeholder4<
8rnn_while_rnn_while_cond_161270___redundant_placeholder5<
8rnn_while_rnn_while_cond_161270___redundant_placeholder6
rnn_while_identity
�
rnn/while/LessLessrnn_while_placeholder"rnn_while_less_rnn_strided_slice_1*
T0*
_output_shapes
: 2
rnn/while/Lessi
rnn/while/IdentityIdentityrnn/while/Less:z:0*
T0
*
_output_shapes
: 2
rnn/while/Identity"1
rnn_while_identityrnn/while/Identity:output:0*E
_input_shapes4
2: : : : :
��: :::::::: 
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
: :&"
 
_output_shapes
:
��:

_output_shapes
: :

_output_shapes
:
��
�
ct_gru_rnn_while_body_1594132
.ct_gru_rnn_while_ct_gru_rnn_while_loop_counter8
4ct_gru_rnn_while_ct_gru_rnn_while_maximum_iterations 
ct_gru_rnn_while_placeholder"
ct_gru_rnn_while_placeholder_1"
ct_gru_rnn_while_placeholder_21
-ct_gru_rnn_while_ct_gru_rnn_strided_slice_1_0m
ict_gru_rnn_while_tensorarrayv2read_tensorlistgetitem_ct_gru_rnn_tensorarrayunstack_tensorlistfromtensor_0A
=ct_gru_rnn_while_ctgru_dense_matmul_readvariableop_resource_0B
>ct_gru_rnn_while_ctgru_dense_biasadd_readvariableop_resource_0C
?ct_gru_rnn_while_ctgru_dense_1_matmul_readvariableop_resource_0D
@ct_gru_rnn_while_ctgru_dense_1_biasadd_readvariableop_resource_0C
?ct_gru_rnn_while_ctgru_dense_2_matmul_readvariableop_resource_0D
@ct_gru_rnn_while_ctgru_dense_2_biasadd_readvariableop_resource_0
ct_gru_rnn_while_identity
ct_gru_rnn_while_identity_1
ct_gru_rnn_while_identity_2
ct_gru_rnn_while_identity_3
ct_gru_rnn_while_identity_4/
+ct_gru_rnn_while_ct_gru_rnn_strided_slice_1k
gct_gru_rnn_while_tensorarrayv2read_tensorlistgetitem_ct_gru_rnn_tensorarrayunstack_tensorlistfromtensor?
;ct_gru_rnn_while_ctgru_dense_matmul_readvariableop_resource@
<ct_gru_rnn_while_ctgru_dense_biasadd_readvariableop_resourceA
=ct_gru_rnn_while_ctgru_dense_1_matmul_readvariableop_resourceB
>ct_gru_rnn_while_ctgru_dense_1_biasadd_readvariableop_resourceA
=ct_gru_rnn_while_ctgru_dense_2_matmul_readvariableop_resourceB
>ct_gru_rnn_while_ctgru_dense_2_biasadd_readvariableop_resource��3ct_gru/rnn/while/ctgru/dense/BiasAdd/ReadVariableOp�2ct_gru/rnn/while/ctgru/dense/MatMul/ReadVariableOp�5ct_gru/rnn/while/ctgru/dense_1/BiasAdd/ReadVariableOp�4ct_gru/rnn/while/ctgru/dense_1/MatMul/ReadVariableOp�5ct_gru/rnn/while/ctgru/dense_2/BiasAdd/ReadVariableOp�4ct_gru/rnn/while/ctgru/dense_2/MatMul/ReadVariableOp�
Bct_gru/rnn/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"�      2D
Bct_gru/rnn/while/TensorArrayV2Read/TensorListGetItem/element_shape�
4ct_gru/rnn/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemict_gru_rnn_while_tensorarrayv2read_tensorlistgetitem_ct_gru_rnn_tensorarrayunstack_tensorlistfromtensor_0ct_gru_rnn_while_placeholderKct_gru/rnn/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes
:	�*
element_dtype026
4ct_gru/rnn/while/TensorArrayV2Read/TensorListGetItem�
ct_gru/rnn/while/ctgru/ShapeConst*
_output_shapes
:*
dtype0*
valueB"�      2
ct_gru/rnn/while/ctgru/Shape�
*ct_gru/rnn/while/ctgru/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2,
*ct_gru/rnn/while/ctgru/strided_slice/stack�
,ct_gru/rnn/while/ctgru/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,ct_gru/rnn/while/ctgru/strided_slice/stack_1�
,ct_gru/rnn/while/ctgru/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,ct_gru/rnn/while/ctgru/strided_slice/stack_2�
$ct_gru/rnn/while/ctgru/strided_sliceStridedSlice%ct_gru/rnn/while/ctgru/Shape:output:03ct_gru/rnn/while/ctgru/strided_slice/stack:output:05ct_gru/rnn/while/ctgru/strided_slice/stack_1:output:05ct_gru/rnn/while/ctgru/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2&
$ct_gru/rnn/while/ctgru/strided_slice�
&ct_gru/rnn/while/ctgru/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B : 2(
&ct_gru/rnn/while/ctgru/Reshape/shape/1�
&ct_gru/rnn/while/ctgru/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2(
&ct_gru/rnn/while/ctgru/Reshape/shape/2�
$ct_gru/rnn/while/ctgru/Reshape/shapePack-ct_gru/rnn/while/ctgru/strided_slice:output:0/ct_gru/rnn/while/ctgru/Reshape/shape/1:output:0/ct_gru/rnn/while/ctgru/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2&
$ct_gru/rnn/while/ctgru/Reshape/shape�
ct_gru/rnn/while/ctgru/ReshapeReshapect_gru_rnn_while_placeholder_2-ct_gru/rnn/while/ctgru/Reshape/shape:output:0*
T0*#
_output_shapes
:� 2 
ct_gru/rnn/while/ctgru/Reshape�
,ct_gru/rnn/while/ctgru/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2.
,ct_gru/rnn/while/ctgru/Sum/reduction_indices�
ct_gru/rnn/while/ctgru/SumSum'ct_gru/rnn/while/ctgru/Reshape:output:05ct_gru/rnn/while/ctgru/Sum/reduction_indices:output:0*
T0*
_output_shapes
:	� 2
ct_gru/rnn/while/ctgru/Sum�
"ct_gru/rnn/while/ctgru/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
���������2$
"ct_gru/rnn/while/ctgru/concat/axis�
ct_gru/rnn/while/ctgru/concatConcatV2;ct_gru/rnn/while/TensorArrayV2Read/TensorListGetItem:item:0#ct_gru/rnn/while/ctgru/Sum:output:0+ct_gru/rnn/while/ctgru/concat/axis:output:0*
N*
T0*
_output_shapes
:	�(2
ct_gru/rnn/while/ctgru/concat�
2ct_gru/rnn/while/ctgru/dense/MatMul/ReadVariableOpReadVariableOp=ct_gru_rnn_while_ctgru_dense_matmul_readvariableop_resource_0*
_output_shapes
:	(�*
dtype024
2ct_gru/rnn/while/ctgru/dense/MatMul/ReadVariableOp�
#ct_gru/rnn/while/ctgru/dense/MatMulMatMul&ct_gru/rnn/while/ctgru/concat:output:0:ct_gru/rnn/while/ctgru/dense/MatMul/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��2%
#ct_gru/rnn/while/ctgru/dense/MatMul�
3ct_gru/rnn/while/ctgru/dense/BiasAdd/ReadVariableOpReadVariableOp>ct_gru_rnn_while_ctgru_dense_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype025
3ct_gru/rnn/while/ctgru/dense/BiasAdd/ReadVariableOp�
$ct_gru/rnn/while/ctgru/dense/BiasAddBiasAdd-ct_gru/rnn/while/ctgru/dense/MatMul:product:0;ct_gru/rnn/while/ctgru/dense/BiasAdd/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��2&
$ct_gru/rnn/while/ctgru/dense/BiasAdd�
(ct_gru/rnn/while/ctgru/Reshape_1/shape/1Const*
_output_shapes
: *
dtype0*
value	B : 2*
(ct_gru/rnn/while/ctgru/Reshape_1/shape/1�
(ct_gru/rnn/while/ctgru/Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2*
(ct_gru/rnn/while/ctgru/Reshape_1/shape/2�
&ct_gru/rnn/while/ctgru/Reshape_1/shapePack-ct_gru/rnn/while/ctgru/strided_slice:output:01ct_gru/rnn/while/ctgru/Reshape_1/shape/1:output:01ct_gru/rnn/while/ctgru/Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:2(
&ct_gru/rnn/while/ctgru/Reshape_1/shape�
 ct_gru/rnn/while/ctgru/Reshape_1Reshape-ct_gru/rnn/while/ctgru/dense/BiasAdd:output:0/ct_gru/rnn/while/ctgru/Reshape_1/shape:output:0*
T0*#
_output_shapes
:� 2"
 ct_gru/rnn/while/ctgru/Reshape_1�
ct_gru/rnn/while/ctgru/sub/yConst*
_output_shapes
:*
dtype0*5
value,B*"     �]�?�]@U]@�]�@�4�@U�@�� A2
ct_gru/rnn/while/ctgru/sub/y�
ct_gru/rnn/while/ctgru/subSub)ct_gru/rnn/while/ctgru/Reshape_1:output:0%ct_gru/rnn/while/ctgru/sub/y:output:0*
T0*#
_output_shapes
:� 2
ct_gru/rnn/while/ctgru/sub�
ct_gru/rnn/while/ctgru/SquareSquarect_gru/rnn/while/ctgru/sub:z:0*
T0*#
_output_shapes
:� 2
ct_gru/rnn/while/ctgru/Square�
ct_gru/rnn/while/ctgru/NegNeg!ct_gru/rnn/while/ctgru/Square:y:0*
T0*#
_output_shapes
:� 2
ct_gru/rnn/while/ctgru/Neg�
ct_gru/rnn/while/ctgru/SoftmaxSoftmaxct_gru/rnn/while/ctgru/Neg:y:0*
T0*#
_output_shapes
:� 2 
ct_gru/rnn/while/ctgru/Softmax�
ct_gru/rnn/while/ctgru/mulMul(ct_gru/rnn/while/ctgru/Softmax:softmax:0'ct_gru/rnn/while/ctgru/Reshape:output:0*
T0*#
_output_shapes
:� 2
ct_gru/rnn/while/ctgru/mul�
.ct_gru/rnn/while/ctgru/Sum_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :20
.ct_gru/rnn/while/ctgru/Sum_1/reduction_indices�
ct_gru/rnn/while/ctgru/Sum_1Sumct_gru/rnn/while/ctgru/mul:z:07ct_gru/rnn/while/ctgru/Sum_1/reduction_indices:output:0*
T0*
_output_shapes
:	� 2
ct_gru/rnn/while/ctgru/Sum_1�
$ct_gru/rnn/while/ctgru/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :2&
$ct_gru/rnn/while/ctgru/concat_1/axis�
ct_gru/rnn/while/ctgru/concat_1ConcatV2;ct_gru/rnn/while/TensorArrayV2Read/TensorListGetItem:item:0%ct_gru/rnn/while/ctgru/Sum_1:output:0-ct_gru/rnn/while/ctgru/concat_1/axis:output:0*
N*
T0*
_output_shapes
:	�(2!
ct_gru/rnn/while/ctgru/concat_1�
4ct_gru/rnn/while/ctgru/dense_1/MatMul/ReadVariableOpReadVariableOp?ct_gru_rnn_while_ctgru_dense_1_matmul_readvariableop_resource_0*
_output_shapes

:( *
dtype026
4ct_gru/rnn/while/ctgru/dense_1/MatMul/ReadVariableOp�
%ct_gru/rnn/while/ctgru/dense_1/MatMulMatMul(ct_gru/rnn/while/ctgru/concat_1:output:0<ct_gru/rnn/while/ctgru/dense_1/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	� 2'
%ct_gru/rnn/while/ctgru/dense_1/MatMul�
5ct_gru/rnn/while/ctgru/dense_1/BiasAdd/ReadVariableOpReadVariableOp@ct_gru_rnn_while_ctgru_dense_1_biasadd_readvariableop_resource_0*
_output_shapes
: *
dtype027
5ct_gru/rnn/while/ctgru/dense_1/BiasAdd/ReadVariableOp�
&ct_gru/rnn/while/ctgru/dense_1/BiasAddBiasAdd/ct_gru/rnn/while/ctgru/dense_1/MatMul:product:0=ct_gru/rnn/while/ctgru/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	� 2(
&ct_gru/rnn/while/ctgru/dense_1/BiasAdd�
#ct_gru/rnn/while/ctgru/dense_1/TanhTanh/ct_gru/rnn/while/ctgru/dense_1/BiasAdd:output:0*
T0*
_output_shapes
:	� 2%
#ct_gru/rnn/while/ctgru/dense_1/Tanh�
(ct_gru/rnn/while/ctgru/Reshape_2/shape/1Const*
_output_shapes
: *
dtype0*
value	B : 2*
(ct_gru/rnn/while/ctgru/Reshape_2/shape/1�
(ct_gru/rnn/while/ctgru/Reshape_2/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2*
(ct_gru/rnn/while/ctgru/Reshape_2/shape/2�
&ct_gru/rnn/while/ctgru/Reshape_2/shapePack-ct_gru/rnn/while/ctgru/strided_slice:output:01ct_gru/rnn/while/ctgru/Reshape_2/shape/1:output:01ct_gru/rnn/while/ctgru/Reshape_2/shape/2:output:0*
N*
T0*
_output_shapes
:2(
&ct_gru/rnn/while/ctgru/Reshape_2/shape�
 ct_gru/rnn/while/ctgru/Reshape_2Reshape'ct_gru/rnn/while/ctgru/dense_1/Tanh:y:0/ct_gru/rnn/while/ctgru/Reshape_2/shape:output:0*
T0*#
_output_shapes
:� 2"
 ct_gru/rnn/while/ctgru/Reshape_2�
4ct_gru/rnn/while/ctgru/dense_2/MatMul/ReadVariableOpReadVariableOp?ct_gru_rnn_while_ctgru_dense_2_matmul_readvariableop_resource_0*
_output_shapes
:	(�*
dtype026
4ct_gru/rnn/while/ctgru/dense_2/MatMul/ReadVariableOp�
%ct_gru/rnn/while/ctgru/dense_2/MatMulMatMul&ct_gru/rnn/while/ctgru/concat:output:0<ct_gru/rnn/while/ctgru/dense_2/MatMul/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��2'
%ct_gru/rnn/while/ctgru/dense_2/MatMul�
5ct_gru/rnn/while/ctgru/dense_2/BiasAdd/ReadVariableOpReadVariableOp@ct_gru_rnn_while_ctgru_dense_2_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype027
5ct_gru/rnn/while/ctgru/dense_2/BiasAdd/ReadVariableOp�
&ct_gru/rnn/while/ctgru/dense_2/BiasAddBiasAdd/ct_gru/rnn/while/ctgru/dense_2/MatMul:product:0=ct_gru/rnn/while/ctgru/dense_2/BiasAdd/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��2(
&ct_gru/rnn/while/ctgru/dense_2/BiasAdd�
(ct_gru/rnn/while/ctgru/Reshape_3/shape/1Const*
_output_shapes
: *
dtype0*
value	B : 2*
(ct_gru/rnn/while/ctgru/Reshape_3/shape/1�
(ct_gru/rnn/while/ctgru/Reshape_3/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2*
(ct_gru/rnn/while/ctgru/Reshape_3/shape/2�
&ct_gru/rnn/while/ctgru/Reshape_3/shapePack-ct_gru/rnn/while/ctgru/strided_slice:output:01ct_gru/rnn/while/ctgru/Reshape_3/shape/1:output:01ct_gru/rnn/while/ctgru/Reshape_3/shape/2:output:0*
N*
T0*
_output_shapes
:2(
&ct_gru/rnn/while/ctgru/Reshape_3/shape�
 ct_gru/rnn/while/ctgru/Reshape_3Reshape/ct_gru/rnn/while/ctgru/dense_2/BiasAdd:output:0/ct_gru/rnn/while/ctgru/Reshape_3/shape:output:0*
T0*#
_output_shapes
:� 2"
 ct_gru/rnn/while/ctgru/Reshape_3�
ct_gru/rnn/while/ctgru/sub_1/yConst*
_output_shapes
:*
dtype0*5
value,B*"     �]�?�]@U]@�]�@�4�@U�@�� A2 
ct_gru/rnn/while/ctgru/sub_1/y�
ct_gru/rnn/while/ctgru/sub_1Sub)ct_gru/rnn/while/ctgru/Reshape_3:output:0'ct_gru/rnn/while/ctgru/sub_1/y:output:0*
T0*#
_output_shapes
:� 2
ct_gru/rnn/while/ctgru/sub_1�
ct_gru/rnn/while/ctgru/Square_1Square ct_gru/rnn/while/ctgru/sub_1:z:0*
T0*#
_output_shapes
:� 2!
ct_gru/rnn/while/ctgru/Square_1�
ct_gru/rnn/while/ctgru/Neg_1Neg#ct_gru/rnn/while/ctgru/Square_1:y:0*
T0*#
_output_shapes
:� 2
ct_gru/rnn/while/ctgru/Neg_1�
 ct_gru/rnn/while/ctgru/Softmax_1Softmax ct_gru/rnn/while/ctgru/Neg_1:y:0*
T0*#
_output_shapes
:� 2"
 ct_gru/rnn/while/ctgru/Softmax_1�
ct_gru/rnn/while/ctgru/sub_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2 
ct_gru/rnn/while/ctgru/sub_2/x�
ct_gru/rnn/while/ctgru/sub_2Sub'ct_gru/rnn/while/ctgru/sub_2/x:output:0*ct_gru/rnn/while/ctgru/Softmax_1:softmax:0*
T0*#
_output_shapes
:� 2
ct_gru/rnn/while/ctgru/sub_2�
ct_gru/rnn/while/ctgru/mul_1Mul ct_gru/rnn/while/ctgru/sub_2:z:0'ct_gru/rnn/while/ctgru/Reshape:output:0*
T0*#
_output_shapes
:� 2
ct_gru/rnn/while/ctgru/mul_1�
ct_gru/rnn/while/ctgru/mul_2Mul*ct_gru/rnn/while/ctgru/Softmax_1:softmax:0)ct_gru/rnn/while/ctgru/Reshape_2:output:0*
T0*#
_output_shapes
:� 2
ct_gru/rnn/while/ctgru/mul_2�
ct_gru/rnn/while/ctgru/addAddV2 ct_gru/rnn/while/ctgru/mul_1:z:0 ct_gru/rnn/while/ctgru/mul_2:z:0*
T0*#
_output_shapes
:� 2
ct_gru/rnn/while/ctgru/add�
ct_gru/rnn/while/ctgru/Exp/xConst*
_output_shapes
:*
dtype0*U
valueLBJ"@      �IHb=Կ��������q:�N�0��y�G�z����3���i�����MbP�*���k�4�2
ct_gru/rnn/while/ctgru/Exp/x�
ct_gru/rnn/while/ctgru/ExpExp%ct_gru/rnn/while/ctgru/Exp/x:output:0*
T0*
_output_shapes
:2
ct_gru/rnn/while/ctgru/Exp�
&ct_gru/rnn/while/ctgru/Reshape_4/shapeConst*
_output_shapes
:*
dtype0*!
valueB"����      2(
&ct_gru/rnn/while/ctgru/Reshape_4/shape�
 ct_gru/rnn/while/ctgru/Reshape_4Reshapect_gru/rnn/while/ctgru/Exp:y:0/ct_gru/rnn/while/ctgru/Reshape_4/shape:output:0*
T0*"
_output_shapes
:2"
 ct_gru/rnn/while/ctgru/Reshape_4�
ct_gru/rnn/while/ctgru/CastCast)ct_gru/rnn/while/ctgru/Reshape_4:output:0*

DstT0*

SrcT0*"
_output_shapes
:2
ct_gru/rnn/while/ctgru/Cast�
ct_gru/rnn/while/ctgru/mul_3Mulct_gru/rnn/while/ctgru/add:z:0ct_gru/rnn/while/ctgru/Cast:y:0*
T0*#
_output_shapes
:� 2
ct_gru/rnn/while/ctgru/mul_3�
.ct_gru/rnn/while/ctgru/Sum_2/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :20
.ct_gru/rnn/while/ctgru/Sum_2/reduction_indices�
ct_gru/rnn/while/ctgru/Sum_2Sum ct_gru/rnn/while/ctgru/mul_3:z:07ct_gru/rnn/while/ctgru/Sum_2/reduction_indices:output:0*
T0*
_output_shapes
:	� 2
ct_gru/rnn/while/ctgru/Sum_2�
(ct_gru/rnn/while/ctgru/Reshape_5/shape/1Const*
_output_shapes
: *
dtype0*
value
B :�2*
(ct_gru/rnn/while/ctgru/Reshape_5/shape/1�
&ct_gru/rnn/while/ctgru/Reshape_5/shapePack-ct_gru/rnn/while/ctgru/strided_slice:output:01ct_gru/rnn/while/ctgru/Reshape_5/shape/1:output:0*
N*
T0*
_output_shapes
:2(
&ct_gru/rnn/while/ctgru/Reshape_5/shape�
 ct_gru/rnn/while/ctgru/Reshape_5Reshape ct_gru/rnn/while/ctgru/mul_3:z:0/ct_gru/rnn/while/ctgru/Reshape_5/shape:output:0*
T0* 
_output_shapes
:
��2"
 ct_gru/rnn/while/ctgru/Reshape_5�
5ct_gru/rnn/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemct_gru_rnn_while_placeholder_1ct_gru_rnn_while_placeholder%ct_gru/rnn/while/ctgru/Sum_2:output:0*
_output_shapes
: *
element_dtype027
5ct_gru/rnn/while/TensorArrayV2Write/TensorListSetItemr
ct_gru/rnn/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
ct_gru/rnn/while/add/y�
ct_gru/rnn/while/addAddV2ct_gru_rnn_while_placeholderct_gru/rnn/while/add/y:output:0*
T0*
_output_shapes
: 2
ct_gru/rnn/while/addv
ct_gru/rnn/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
ct_gru/rnn/while/add_1/y�
ct_gru/rnn/while/add_1AddV2.ct_gru_rnn_while_ct_gru_rnn_while_loop_counter!ct_gru/rnn/while/add_1/y:output:0*
T0*
_output_shapes
: 2
ct_gru/rnn/while/add_1�
ct_gru/rnn/while/IdentityIdentityct_gru/rnn/while/add_1:z:04^ct_gru/rnn/while/ctgru/dense/BiasAdd/ReadVariableOp3^ct_gru/rnn/while/ctgru/dense/MatMul/ReadVariableOp6^ct_gru/rnn/while/ctgru/dense_1/BiasAdd/ReadVariableOp5^ct_gru/rnn/while/ctgru/dense_1/MatMul/ReadVariableOp6^ct_gru/rnn/while/ctgru/dense_2/BiasAdd/ReadVariableOp5^ct_gru/rnn/while/ctgru/dense_2/MatMul/ReadVariableOp*
T0*
_output_shapes
: 2
ct_gru/rnn/while/Identity�
ct_gru/rnn/while/Identity_1Identity4ct_gru_rnn_while_ct_gru_rnn_while_maximum_iterations4^ct_gru/rnn/while/ctgru/dense/BiasAdd/ReadVariableOp3^ct_gru/rnn/while/ctgru/dense/MatMul/ReadVariableOp6^ct_gru/rnn/while/ctgru/dense_1/BiasAdd/ReadVariableOp5^ct_gru/rnn/while/ctgru/dense_1/MatMul/ReadVariableOp6^ct_gru/rnn/while/ctgru/dense_2/BiasAdd/ReadVariableOp5^ct_gru/rnn/while/ctgru/dense_2/MatMul/ReadVariableOp*
T0*
_output_shapes
: 2
ct_gru/rnn/while/Identity_1�
ct_gru/rnn/while/Identity_2Identityct_gru/rnn/while/add:z:04^ct_gru/rnn/while/ctgru/dense/BiasAdd/ReadVariableOp3^ct_gru/rnn/while/ctgru/dense/MatMul/ReadVariableOp6^ct_gru/rnn/while/ctgru/dense_1/BiasAdd/ReadVariableOp5^ct_gru/rnn/while/ctgru/dense_1/MatMul/ReadVariableOp6^ct_gru/rnn/while/ctgru/dense_2/BiasAdd/ReadVariableOp5^ct_gru/rnn/while/ctgru/dense_2/MatMul/ReadVariableOp*
T0*
_output_shapes
: 2
ct_gru/rnn/while/Identity_2�
ct_gru/rnn/while/Identity_3IdentityEct_gru/rnn/while/TensorArrayV2Write/TensorListSetItem:output_handle:04^ct_gru/rnn/while/ctgru/dense/BiasAdd/ReadVariableOp3^ct_gru/rnn/while/ctgru/dense/MatMul/ReadVariableOp6^ct_gru/rnn/while/ctgru/dense_1/BiasAdd/ReadVariableOp5^ct_gru/rnn/while/ctgru/dense_1/MatMul/ReadVariableOp6^ct_gru/rnn/while/ctgru/dense_2/BiasAdd/ReadVariableOp5^ct_gru/rnn/while/ctgru/dense_2/MatMul/ReadVariableOp*
T0*
_output_shapes
: 2
ct_gru/rnn/while/Identity_3�
ct_gru/rnn/while/Identity_4Identity)ct_gru/rnn/while/ctgru/Reshape_5:output:04^ct_gru/rnn/while/ctgru/dense/BiasAdd/ReadVariableOp3^ct_gru/rnn/while/ctgru/dense/MatMul/ReadVariableOp6^ct_gru/rnn/while/ctgru/dense_1/BiasAdd/ReadVariableOp5^ct_gru/rnn/while/ctgru/dense_1/MatMul/ReadVariableOp6^ct_gru/rnn/while/ctgru/dense_2/BiasAdd/ReadVariableOp5^ct_gru/rnn/while/ctgru/dense_2/MatMul/ReadVariableOp*
T0* 
_output_shapes
:
��2
ct_gru/rnn/while/Identity_4"\
+ct_gru_rnn_while_ct_gru_rnn_strided_slice_1-ct_gru_rnn_while_ct_gru_rnn_strided_slice_1_0"�
>ct_gru_rnn_while_ctgru_dense_1_biasadd_readvariableop_resource@ct_gru_rnn_while_ctgru_dense_1_biasadd_readvariableop_resource_0"�
=ct_gru_rnn_while_ctgru_dense_1_matmul_readvariableop_resource?ct_gru_rnn_while_ctgru_dense_1_matmul_readvariableop_resource_0"�
>ct_gru_rnn_while_ctgru_dense_2_biasadd_readvariableop_resource@ct_gru_rnn_while_ctgru_dense_2_biasadd_readvariableop_resource_0"�
=ct_gru_rnn_while_ctgru_dense_2_matmul_readvariableop_resource?ct_gru_rnn_while_ctgru_dense_2_matmul_readvariableop_resource_0"~
<ct_gru_rnn_while_ctgru_dense_biasadd_readvariableop_resource>ct_gru_rnn_while_ctgru_dense_biasadd_readvariableop_resource_0"|
;ct_gru_rnn_while_ctgru_dense_matmul_readvariableop_resource=ct_gru_rnn_while_ctgru_dense_matmul_readvariableop_resource_0"?
ct_gru_rnn_while_identity"ct_gru/rnn/while/Identity:output:0"C
ct_gru_rnn_while_identity_1$ct_gru/rnn/while/Identity_1:output:0"C
ct_gru_rnn_while_identity_2$ct_gru/rnn/while/Identity_2:output:0"C
ct_gru_rnn_while_identity_3$ct_gru/rnn/while/Identity_3:output:0"C
ct_gru_rnn_while_identity_4$ct_gru/rnn/while/Identity_4:output:0"�
gct_gru_rnn_while_tensorarrayv2read_tensorlistgetitem_ct_gru_rnn_tensorarrayunstack_tensorlistfromtensorict_gru_rnn_while_tensorarrayv2read_tensorlistgetitem_ct_gru_rnn_tensorarrayunstack_tensorlistfromtensor_0*C
_input_shapes2
0: : : : :
��: : ::::::2j
3ct_gru/rnn/while/ctgru/dense/BiasAdd/ReadVariableOp3ct_gru/rnn/while/ctgru/dense/BiasAdd/ReadVariableOp2h
2ct_gru/rnn/while/ctgru/dense/MatMul/ReadVariableOp2ct_gru/rnn/while/ctgru/dense/MatMul/ReadVariableOp2n
5ct_gru/rnn/while/ctgru/dense_1/BiasAdd/ReadVariableOp5ct_gru/rnn/while/ctgru/dense_1/BiasAdd/ReadVariableOp2l
4ct_gru/rnn/while/ctgru/dense_1/MatMul/ReadVariableOp4ct_gru/rnn/while/ctgru/dense_1/MatMul/ReadVariableOp2n
5ct_gru/rnn/while/ctgru/dense_2/BiasAdd/ReadVariableOp5ct_gru/rnn/while/ctgru/dense_2/BiasAdd/ReadVariableOp2l
4ct_gru/rnn/while/ctgru/dense_2/MatMul/ReadVariableOp4ct_gru/rnn/while/ctgru/dense_2/MatMul/ReadVariableOp: 
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
: :&"
 
_output_shapes
:
��:

_output_shapes
: :

_output_shapes
: 
�
�
$__inference_rnn_layer_call_fn_161966
inputs_0
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_rnn_layer_call_and_return_conditional_losses_1600342
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:��������� 2

Identity"
identityIdentity:output:0*K
_input_shapes:
8:������������������::::::22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs/0
�
�
B__inference_ct_gru_layer_call_and_return_conditional_losses_160856

inputs
inputs_1

rnn_160837

rnn_160839

rnn_160841

rnn_160843

rnn_160845

rnn_160847
dense_160850
dense_160852
identity��dense/StatefulPartitionedCall�rnn/StatefulPartitionedCall�
rnn/StatefulPartitionedCallStatefulPartitionedCallinputs
rnn_160837
rnn_160839
rnn_160841
rnn_160843
rnn_160845
rnn_160847*
Tin
	2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:	� *(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_rnn_layer_call_and_return_conditional_losses_1606862
rnn/StatefulPartitionedCall�
dense/StatefulPartitionedCallStatefulPartitionedCall$rnn/StatefulPartitionedCall:output:0dense_160850dense_160852*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:	�
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_1607442
dense/StatefulPartitionedCall�
IdentityIdentity&dense/StatefulPartitionedCall:output:0^dense/StatefulPartitionedCall^rnn/StatefulPartitionedCall*
T0*
_output_shapes
:	�
2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:�b:�b::::::::2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2:
rnn/StatefulPartitionedCallrnn/StatefulPartitionedCall:K G
#
_output_shapes
:�b
 
_user_specified_nameinputs:KG
#
_output_shapes
:�b
 
_user_specified_nameinputs
�	
�
while_cond_161812
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_161812___redundant_placeholder04
0while_while_cond_161812___redundant_placeholder14
0while_while_cond_161812___redundant_placeholder24
0while_while_cond_161812___redundant_placeholder34
0while_while_cond_161812___redundant_placeholder44
0while_while_cond_161812___redundant_placeholder54
0while_while_cond_161812___redundant_placeholder6
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
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
while_identitywhile/Identity:output:0*M
_input_shapes<
:: : : : :����������: :::::::: 
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
: :.*
(
_output_shapes
:����������:

_output_shapes
: :

_output_shapes
:
�
�
B__inference_ct_gru_layer_call_and_return_conditional_losses_160761
input_1
input_2

rnn_160721

rnn_160723

rnn_160725

rnn_160727

rnn_160729

rnn_160731
dense_160755
dense_160757
identity��dense/StatefulPartitionedCall�rnn/StatefulPartitionedCall�
rnn/StatefulPartitionedCallStatefulPartitionedCallinput_1
rnn_160721
rnn_160723
rnn_160725
rnn_160727
rnn_160729
rnn_160731*
Tin
	2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:	� *(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_rnn_layer_call_and_return_conditional_losses_1604402
rnn/StatefulPartitionedCall�
dense/StatefulPartitionedCallStatefulPartitionedCall$rnn/StatefulPartitionedCall:output:0dense_160755dense_160757*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:	�
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_1607442
dense/StatefulPartitionedCall�
IdentityIdentity&dense/StatefulPartitionedCall:output:0^dense/StatefulPartitionedCall^rnn/StatefulPartitionedCall*
T0*
_output_shapes
:	�
2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:�b:�b::::::::2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2:
rnn/StatefulPartitionedCallrnn/StatefulPartitionedCall:L H
#
_output_shapes
:�b
!
_user_specified_name	input_1:LH
#
_output_shapes
:�b
!
_user_specified_name	input_2
�
�
'__inference_ct_gru_layer_call_fn_161457
inputs_0
inputs_1
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2
*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:	�
**
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_ct_gru_layer_call_and_return_conditional_losses_1608562
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*
_output_shapes
:	�
2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:�b:�b::::::::22
StatefulPartitionedCallStatefulPartitionedCall:M I
#
_output_shapes
:�b
"
_user_specified_name
inputs/0:MI
#
_output_shapes
:�b
"
_user_specified_name
inputs/1
�<
�
?__inference_rnn_layer_call_and_return_conditional_losses_160034

inputs
ctgru_159941
ctgru_159943
ctgru_159945
ctgru_159947
ctgru_159949
ctgru_159951
identity��ctgru/StatefulPartitionedCall�whileD
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
strided_slice/stack_2�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :�2
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
B :�2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :�2
zeros/packed/1�
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
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:����������2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm�
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :������������������2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
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
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2
strided_slice_2�
ctgru/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0ctgru_159941ctgru_159943ctgru_159945ctgru_159947ctgru_159949ctgru_159951*
Tin

2*
Tout
2*
_collective_manager_ids
 *;
_output_shapes)
':��������� :����������*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_ctgru_layer_call_and_return_conditional_losses_1596682
ctgru/StatefulPartitionedCall�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    2
TensorArrayV2_1/element_shape�
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
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
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0ctgru_159941ctgru_159943ctgru_159945ctgru_159947ctgru_159949ctgru_159951*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*@
_output_shapes.
,: : : : :����������: : : : : : : : *(
_read_only_resource_inputs

	
*
bodyR
while_body_159959*
condR
while_cond_159958*?
output_shapes.
,: : : : :����������: : : : : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������ *
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:��������� *
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������ 2
transpose_1�
IdentityIdentitystrided_slice_3:output:0^ctgru/StatefulPartitionedCall^while*
T0*'
_output_shapes
:��������� 2

Identity"
identityIdentity:output:0*K
_input_shapes:
8:������������������::::::2>
ctgru/StatefulPartitionedCallctgru/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�
�
'__inference_ct_gru_layer_call_fn_161435
inputs_0
inputs_1
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2
*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:	�
**
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_ct_gru_layer_call_and_return_conditional_losses_1608112
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*
_output_shapes
:	�
2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:�b:�b::::::::22
StatefulPartitionedCallStatefulPartitionedCall:M I
#
_output_shapes
:�b
"
_user_specified_name
inputs/0:MI
#
_output_shapes
:�b
"
_user_specified_name
inputs/1"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
7
input_1,
serving_default_input_1:0�b
7
input_2,
serving_default_input_2:0�b1
dense(
StatefulPartitionedCall:0	�
tensorflow/serving/predict:��
�%
layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
	optimizer
regularization_losses
trainable_variables
	variables
		keras_api


signatures
t__call__
*u&call_and_return_all_conditional_losses
v_default_save_signature"�"
_tf_keras_network�"{"class_name": "Functional", "name": "ct_gru", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "ct_gru", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [128, 98, 8]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_1"}, "name": "input_1", "inbound_nodes": []}, {"class_name": "RNN", "config": {"name": "rnn", "trainable": true, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "cell": {"class_name": "Custom>CTGRU", "config": {"name": "ctgru", "trainable": true, "dtype": "float32", "units": 32, "M": 8}}}, "name": "rnn", "inbound_nodes": [[["input_1", 0, 0, {}]]]}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [128, 98, 8]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_2"}, "name": "input_2", "inbound_nodes": []}, {"class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 10, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense", "inbound_nodes": [[["rnn", 0, 0, {}]]]}], "input_layers": {"class_name": "__tuple__", "items": [["input_1", 0, 0], ["input_2", 0, 0]]}, "output_layers": [["dense", 0, 0]]}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 98, 8]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}, {"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 98, 8]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "__tuple__", "items": [{"class_name": "TensorShape", "items": [128, 98, 8]}, {"class_name": "TensorShape", "items": [128, 98, 8]}]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "ct_gru", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [128, 98, 8]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_1"}, "name": "input_1", "inbound_nodes": []}, {"class_name": "RNN", "config": {"name": "rnn", "trainable": true, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "cell": {"class_name": "Custom>CTGRU", "config": {"name": "ctgru", "trainable": true, "dtype": "float32", "units": 32, "M": 8}}}, "name": "rnn", "inbound_nodes": [[["input_1", 0, 0, {}]]]}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [128, 98, 8]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_2"}, "name": "input_2", "inbound_nodes": []}, {"class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 10, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense", "inbound_nodes": [[["rnn", 0, 0, {}]]]}], "input_layers": {"class_name": "__tuple__", "items": [["input_1", 0, 0], ["input_2", 0, 0]]}, "output_layers": [["dense", 0, 0]]}}, "training_config": {"loss": {"class_name": "SparseCategoricalCrossentropy", "config": {"reduction": "auto", "name": "sparse_categorical_crossentropy", "from_logits": true}}, "metrics": [[{"class_name": "SparseCategoricalAccuracy", "config": {"name": "sparse_categorical_accuracy", "dtype": "float32"}}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.00010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
�"�
_tf_keras_input_layer�{"class_name": "InputLayer", "name": "input_1", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [128, 98, 8]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [128, 98, 8]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_1"}}
�
cell

state_spec
regularization_losses
trainable_variables
	variables
	keras_api
w__call__
*x&call_and_return_all_conditional_losses"�
_tf_keras_rnn_layer�{"class_name": "RNN", "name": "rnn", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "rnn", "trainable": true, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "cell": {"class_name": "Custom>CTGRU", "config": {"name": "ctgru", "trainable": true, "dtype": "float32", "units": 32, "M": 8}}}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 8]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [128, 98, 8]}}
�"�
_tf_keras_input_layer�{"class_name": "InputLayer", "name": "input_2", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [128, 98, 8]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [128, 98, 8]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_2"}}
�

kernel
bias
regularization_losses
trainable_variables
	variables
	keras_api
y__call__
*z&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"class_name": "Dense", "name": "dense", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 10, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [128, 32]}}
�
iter

beta_1

beta_2
	decay
learning_ratemdmemfmgmhmi mj!mkvlvmvnvovpvq vr!vs"
	optimizer
 "
trackable_list_wrapper
X
0
1
2
3
 4
!5
6
7"
trackable_list_wrapper
X
0
1
2
3
 4
!5
6
7"
trackable_list_wrapper
�
regularization_losses
"layer_metrics
#layer_regularization_losses
trainable_variables
$metrics
	variables

%layers
&non_trainable_variables
t__call__
v_default_save_signature
*u&call_and_return_all_conditional_losses
&u"call_and_return_conditional_losses"
_generic_user_object
,
{serving_default"
signature_map
�
'retrieval_layer
(detect_layer
)update_layer
*regularization_losses
+trainable_variables
,	variables
-	keras_api
|__call__
*}&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"class_name": "Custom>CTGRU", "name": "ctgru", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "ctgru", "trainable": true, "dtype": "float32", "units": 32, "M": 8}}
 "
trackable_list_wrapper
 "
trackable_list_wrapper
J
0
1
2
3
 4
!5"
trackable_list_wrapper
J
0
1
2
3
 4
!5"
trackable_list_wrapper
�

.states
regularization_losses
/layer_metrics
0layer_regularization_losses
trainable_variables
1metrics
	variables

2layers
3non_trainable_variables
w__call__
*x&call_and_return_all_conditional_losses
&x"call_and_return_conditional_losses"
_generic_user_object
: 
2dense/kernel
:
2
dense/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
�
regularization_losses
4layer_metrics
5layer_regularization_losses
trainable_variables
6metrics
	variables

7layers
8non_trainable_variables
y__call__
*z&call_and_return_all_conditional_losses
&z"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
):'	(�2rnn/ctgru/dense/kernel
#:!�2rnn/ctgru/dense/bias
*:(( 2rnn/ctgru/dense_1/kernel
$:" 2rnn/ctgru/dense_1/bias
+:)	(�2rnn/ctgru/dense_2/kernel
%:#�2rnn/ctgru/dense_2/bias
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
90
:1"
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
 "
trackable_list_wrapper
�

kernel
bias
;regularization_losses
<trainable_variables
=	variables
>	keras_api
~__call__
*&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"class_name": "Dense", "name": "dense", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 256, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 40}}}, "build_input_shape": {"class_name": "TensorShape", "items": [128, 40]}}
�

kernel
bias
?regularization_losses
@trainable_variables
A	variables
B	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"class_name": "Dense", "name": "dense_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 32, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 40}}}, "build_input_shape": {"class_name": "TensorShape", "items": [128, 40]}}
�

 kernel
!bias
Cregularization_losses
Dtrainable_variables
E	variables
F	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"class_name": "Dense", "name": "dense_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_2", "trainable": true, "dtype": "float32", "units": 256, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 40}}}, "build_input_shape": {"class_name": "TensorShape", "items": [128, 40]}}
 "
trackable_list_wrapper
J
0
1
2
3
 4
!5"
trackable_list_wrapper
J
0
1
2
3
 4
!5"
trackable_list_wrapper
�
*regularization_losses
Glayer_metrics
Hlayer_regularization_losses
+trainable_variables
Imetrics
,	variables

Jlayers
Knon_trainable_variables
|__call__
*}&call_and_return_all_conditional_losses
&}"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
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
�
	Ltotal
	Mcount
N	variables
O	keras_api"�
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}
�
	Ptotal
	Qcount
R
_fn_kwargs
S	variables
T	keras_api"�
_tf_keras_metric�{"class_name": "SparseCategoricalAccuracy", "name": "sparse_categorical_accuracy", "dtype": "float32", "config": {"name": "sparse_categorical_accuracy", "dtype": "float32"}}
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
�
;regularization_losses
Ulayer_metrics
Vlayer_regularization_losses
<trainable_variables
Wmetrics
=	variables

Xlayers
Ynon_trainable_variables
~__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
�
?regularization_losses
Zlayer_metrics
[layer_regularization_losses
@trainable_variables
\metrics
A	variables

]layers
^non_trainable_variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
 0
!1"
trackable_list_wrapper
.
 0
!1"
trackable_list_wrapper
�
Cregularization_losses
_layer_metrics
`layer_regularization_losses
Dtrainable_variables
ametrics
E	variables

blayers
cnon_trainable_variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
5
'0
(1
)2"
trackable_list_wrapper
 "
trackable_list_wrapper
:  (2total
:  (2count
.
L0
M1"
trackable_list_wrapper
-
N	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
P0
Q1"
trackable_list_wrapper
-
S	variables"
_generic_user_object
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
 "
trackable_list_wrapper
#:! 
2Adam/dense/kernel/m
:
2Adam/dense/bias/m
.:,	(�2Adam/rnn/ctgru/dense/kernel/m
(:&�2Adam/rnn/ctgru/dense/bias/m
/:-( 2Adam/rnn/ctgru/dense_1/kernel/m
):' 2Adam/rnn/ctgru/dense_1/bias/m
0:.	(�2Adam/rnn/ctgru/dense_2/kernel/m
*:(�2Adam/rnn/ctgru/dense_2/bias/m
#:! 
2Adam/dense/kernel/v
:
2Adam/dense/bias/v
.:,	(�2Adam/rnn/ctgru/dense/kernel/v
(:&�2Adam/rnn/ctgru/dense/bias/v
/:-( 2Adam/rnn/ctgru/dense_1/kernel/v
):' 2Adam/rnn/ctgru/dense_1/bias/v
0:.	(�2Adam/rnn/ctgru/dense_2/kernel/v
*:(�2Adam/rnn/ctgru/dense_2/bias/v
�2�
'__inference_ct_gru_layer_call_fn_160875
'__inference_ct_gru_layer_call_fn_161435
'__inference_ct_gru_layer_call_fn_161457
'__inference_ct_gru_layer_call_fn_160830�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
B__inference_ct_gru_layer_call_and_return_conditional_losses_161413
B__inference_ct_gru_layer_call_and_return_conditional_losses_160784
B__inference_ct_gru_layer_call_and_return_conditional_losses_161160
B__inference_ct_gru_layer_call_and_return_conditional_losses_160761�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
!__inference__wrapped_model_159555�
���
FullArgSpec
args� 
varargsjargs
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *F�C
A�>
�
input_1�b
�
input_2�b
�2�
$__inference_rnn_layer_call_fn_162492
$__inference_rnn_layer_call_fn_162509
$__inference_rnn_layer_call_fn_161966
$__inference_rnn_layer_call_fn_161983�
���
FullArgSpecO
argsG�D
jself
jinputs
jmask

jtraining
jinitial_state
j	constants
varargs
 
varkw
 
defaults�

 
p 

 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
?__inference_rnn_layer_call_and_return_conditional_losses_161703
?__inference_rnn_layer_call_and_return_conditional_losses_162475
?__inference_rnn_layer_call_and_return_conditional_losses_162229
?__inference_rnn_layer_call_and_return_conditional_losses_161949�
���
FullArgSpecO
argsG�D
jself
jinputs
jmask

jtraining
jinitial_state
j	constants
varargs
 
varkw
 
defaults�

 
p 

 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
&__inference_dense_layer_call_fn_162528�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
A__inference_dense_layer_call_and_return_conditional_losses_162519�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
$__inference_signature_wrapper_160907input_1input_2"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
&__inference_ctgru_layer_call_fn_162629�
���
FullArgSpec'
args�
jself
jinputs
jstates
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
A__inference_ctgru_layer_call_and_return_conditional_losses_162609�
���
FullArgSpec'
args�
jself
jinputs
jstates
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 �
!__inference__wrapped_model_159555� !P�M
F�C
A�>
�
input_1�b
�
input_2�b
� "%�"
 
dense�
dense	�
�
B__inference_ct_gru_layer_call_and_return_conditional_losses_160761� !X�U
N�K
A�>
�
input_1�b
�
input_2�b
p

 
� "�
�
0	�

� �
B__inference_ct_gru_layer_call_and_return_conditional_losses_160784� !X�U
N�K
A�>
�
input_1�b
�
input_2�b
p 

 
� "�
�
0	�

� �
B__inference_ct_gru_layer_call_and_return_conditional_losses_161160� !Z�W
P�M
C�@
�
inputs/0�b
�
inputs/1�b
p

 
� "�
�
0	�

� �
B__inference_ct_gru_layer_call_and_return_conditional_losses_161413� !Z�W
P�M
C�@
�
inputs/0�b
�
inputs/1�b
p 

 
� "�
�
0	�

� �
'__inference_ct_gru_layer_call_fn_160830v !X�U
N�K
A�>
�
input_1�b
�
input_2�b
p

 
� "�	�
�
'__inference_ct_gru_layer_call_fn_160875v !X�U
N�K
A�>
�
input_1�b
�
input_2�b
p 

 
� "�	�
�
'__inference_ct_gru_layer_call_fn_161435x !Z�W
P�M
C�@
�
inputs/0�b
�
inputs/1�b
p

 
� "�	�
�
'__inference_ct_gru_layer_call_fn_161457x !Z�W
P�M
C�@
�
inputs/0�b
�
inputs/1�b
p 

 
� "�	�
�
A__inference_ctgru_layer_call_and_return_conditional_losses_162609� !Y�V
O�L
 �
inputs���������
(�%
#� 
states/0����������
� "S�P
I�F
�
0/0��������� 
%�"
 �
0/1/0����������
� �
&__inference_ctgru_layer_call_fn_162629� !Y�V
O�L
 �
inputs���������
(�%
#� 
states/0����������
� "E�B
�
0��������� 
#� 
�
1/0�����������
A__inference_dense_layer_call_and_return_conditional_losses_162519L'�$
�
�
inputs	� 
� "�
�
0	�

� i
&__inference_dense_layer_call_fn_162528?'�$
�
�
inputs	� 
� "�	�
�
?__inference_rnn_layer_call_and_return_conditional_losses_161703� !S�P
I�F
4�1
/�,
inputs/0������������������

 
p

 

 
� "%�"
�
0��������� 
� �
?__inference_rnn_layer_call_and_return_conditional_losses_161949� !S�P
I�F
4�1
/�,
inputs/0������������������

 
p 

 

 
� "%�"
�
0��������� 
� �
?__inference_rnn_layer_call_and_return_conditional_losses_162229d !;�8
1�.
�
inputs�b

 
p

 

 
� "�
�
0	� 
� �
?__inference_rnn_layer_call_and_return_conditional_losses_162475d !;�8
1�.
�
inputs�b

 
p 

 

 
� "�
�
0	� 
� �
$__inference_rnn_layer_call_fn_161966w !S�P
I�F
4�1
/�,
inputs/0������������������

 
p

 

 
� "���������� �
$__inference_rnn_layer_call_fn_161983w !S�P
I�F
4�1
/�,
inputs/0������������������

 
p 

 

 
� "���������� 
$__inference_rnn_layer_call_fn_162492W !;�8
1�.
�
inputs�b

 
p

 

 
� "�	� 
$__inference_rnn_layer_call_fn_162509W !;�8
1�.
�
inputs�b

 
p 

 

 
� "�	� �
$__inference_signature_wrapper_160907� !a�^
� 
W�T
(
input_1�
input_1�b
(
input_2�
input_2�b"%�"
 
dense�
dense	�
