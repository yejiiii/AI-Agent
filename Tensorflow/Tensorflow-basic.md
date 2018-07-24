
# Tensorflow-Basics

- [Jupyter Notebook 버전](./Tensorflow-basic.ipynb)

## Load Packages


```python
import numpy as np
import tensorflow as tf
print ("Load numpy & tensorflow")
```

    Load numpy & tensorflow


## Session


```python
sess = tf.Session()
print ("OPEN SESSION")
```

    OPEN SESSION


## Tensorflow Constant


```python
def print_tf(x):
    print("TYPE IS\n %s" % (type(x)))
    print("VALUE IS\n %s" % (x))
hello = tf.constant("HELLO. IT'S ME. ")
print_tf(hello)
```

    TYPE IS
     <class 'tensorflow.python.framework.ops.Tensor'>
    VALUE IS
     Tensor("Const:0", shape=(), dtype=string)


## Run Session


```python
hello_out = sess.run(hello)
print_tf(hello_out)
```

    TYPE IS
     <class 'bytes'>
    VALUE IS
     b"HELLO. IT'S ME. "


## Several Types of Tensorflow Constants


```python
a = tf.constant(1.5)
b = tf.constant(2.5)
print_tf(a)
print_tf(b)
```

    TYPE IS
     <class 'tensorflow.python.framework.ops.Tensor'>
    VALUE IS
     Tensor("Const_1:0", shape=(), dtype=float32)
    TYPE IS
     <class 'tensorflow.python.framework.ops.Tensor'>
    VALUE IS
     Tensor("Const_2:0", shape=(), dtype=float32)



```python
a_out = sess.run(a)
b_out = sess.run(b)
print_tf(a_out)
print_tf(b_out)
```

    TYPE IS
     <class 'numpy.float32'>
    VALUE IS
     1.5
    TYPE IS
     <class 'numpy.float32'>
    VALUE IS
     2.5


## Tensorflow Operators


```python
a_plus_b = tf.add(a, b)
print_tf(a_plus_b)
```

    TYPE IS
     <class 'tensorflow.python.framework.ops.Tensor'>
    VALUE IS
     Tensor("Add:0", shape=(), dtype=float32)



```python
a_plus_b_out = sess.run(a_plus_b)
print_tf(a_plus_b_out)
```

    TYPE IS
     <class 'numpy.float32'>
    VALUE IS
     4.0



```python
a_mul_b = tf.multiply(a, b)
a_mul_b_out = sess.run(a_mul_b)
print_tf(a_mul_b_out)
```

    TYPE IS
     <class 'numpy.float32'>
    VALUE IS
     3.75


## Variables


```python
weight = tf.Variable(tf.random_normal([5, 2], stddev=0.1))
print_tf(weight)
```

    TYPE IS
     <class 'tensorflow.python.ops.variables.Variable'>
    VALUE IS
     <tf.Variable 'Variable:0' shape=(5, 2) dtype=float32_ref>


## Error occurs


```python
weight_out = sess.run(weight)
print_tf(weight_out)
```


    ---------------------------------------------------------------------------

    FailedPreconditionError                   Traceback (most recent call last)

    /anaconda3/envs/tensorflow/lib/python3.6/site-packages/tensorflow/python/client/session.py in _do_call(self, fn, *args)
       1321     try:
    -> 1322       return fn(*args)
       1323     except errors.OpError as e:


    /anaconda3/envs/tensorflow/lib/python3.6/site-packages/tensorflow/python/client/session.py in _run_fn(feed_dict, fetch_list, target_list, options, run_metadata)
       1306       return self._call_tf_sessionrun(
    -> 1307           options, feed_dict, fetch_list, target_list, run_metadata)
       1308 


    /anaconda3/envs/tensorflow/lib/python3.6/site-packages/tensorflow/python/client/session.py in _call_tf_sessionrun(self, options, feed_dict, fetch_list, target_list, run_metadata)
       1408           self._session, options, feed_dict, fetch_list, target_list,
    -> 1409           run_metadata)
       1410     else:


    FailedPreconditionError: Attempting to use uninitialized value Variable
    	 [[Node: _retval_Variable_0_0 = _Retval[T=DT_FLOAT, index=0, _device="/job:localhost/replica:0/task:0/device:CPU:0"](Variable)]]

    
    During handling of the above exception, another exception occurred:


    FailedPreconditionError                   Traceback (most recent call last)

    <ipython-input-11-6f58b8cb3143> in <module>()
    ----> 1 weight_out = sess.run(weight)
          2 print_tf(weight_out)


    /anaconda3/envs/tensorflow/lib/python3.6/site-packages/tensorflow/python/client/session.py in run(self, fetches, feed_dict, options, run_metadata)
        898     try:
        899       result = self._run(None, fetches, feed_dict, options_ptr,
    --> 900                          run_metadata_ptr)
        901       if run_metadata:
        902         proto_data = tf_session.TF_GetBuffer(run_metadata_ptr)


    /anaconda3/envs/tensorflow/lib/python3.6/site-packages/tensorflow/python/client/session.py in _run(self, handle, fetches, feed_dict, options, run_metadata)
       1133     if final_fetches or final_targets or (handle and feed_dict_tensor):
       1134       results = self._do_run(handle, final_targets, final_fetches,
    -> 1135                              feed_dict_tensor, options, run_metadata)
       1136     else:
       1137       results = []


    /anaconda3/envs/tensorflow/lib/python3.6/site-packages/tensorflow/python/client/session.py in _do_run(self, handle, target_list, fetch_list, feed_dict, options, run_metadata)
       1314     if handle is None:
       1315       return self._do_call(_run_fn, feeds, fetches, targets, options,
    -> 1316                            run_metadata)
       1317     else:
       1318       return self._do_call(_prun_fn, handle, feeds, fetches)


    /anaconda3/envs/tensorflow/lib/python3.6/site-packages/tensorflow/python/client/session.py in _do_call(self, fn, *args)
       1333         except KeyError:
       1334           pass
    -> 1335       raise type(e)(node_def, op, message)
       1336 
       1337   def _extend_graph(self):


    FailedPreconditionError: Attempting to use uninitialized value Variable
    	 [[Node: _retval_Variable_0_0 = _Retval[T=DT_FLOAT, index=0, _device="/job:localhost/replica:0/task:0/device:CPU:0"](Variable)]]


## Initialize Global Variables First


```python
init = tf.global_variables_initializer()
sess.run(init)
print ("INITIALIZING ALL VARIALBES")
```

    INITIALIZING ALL VARIALBES



```python
weight_out = sess.run(weight)
print_tf(weight_out)
```

    TYPE IS
     <class 'numpy.ndarray'>
    VALUE IS
     [[ 0.12349879 -0.03283609]
     [ 0.03909633 -0.07609735]
     [-0.07250884 -0.08028158]
     [-0.04671492 -0.23149247]
     [-0.20382212  0.07868107]]


## Tensorflow Placeholders


```python
x = tf.placeholder(tf.float32, [None, 5])
print_tf(x)
```

    TYPE IS
     <class 'tensorflow.python.framework.ops.Tensor'>
    VALUE IS
     Tensor("Placeholder:0", shape=(?, 5), dtype=float32)


## Operation with Variables and Placeholders


```python
oper = tf.matmul(x, weight)
print_tf(oper)
```

    TYPE IS
     <class 'tensorflow.python.framework.ops.Tensor'>
    VALUE IS
     Tensor("MatMul:0", shape=(?, 2), dtype=float32)



```python
data = np.random.rand(1, 5)
oper_out = sess.run(oper, feed_dict={x: data})
print_tf(oper_out)
```

    TYPE IS
     <class 'numpy.ndarray'>
    VALUE IS
     [[-0.02552967 -0.11698866]]



```python
data = np.random.rand(2, 5)
oper_out = sess.run(oper, feed_dict={x: data})
print_tf(oper_out)
```

    TYPE IS
     <class 'numpy.ndarray'>
    VALUE IS
     [[-0.2091423  -0.2565512 ]
     [-0.01020413 -0.2059295 ]]

