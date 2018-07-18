
# Numpy

- [Jupyter Notebook 버전](./Numpy.ipynb)

# Load Numpy


```python
import numpy as np
print("Load numpy")
```

    Load numpy


# Print function usages


```python
print("Hello, world")

# Three popular types

# 1. INTEGER
x = 3;
print ("Integer: %01d, %02d, %03d, %04d, %05d" 
       % (x, x, x, x, x))
# 2. FLOAT
x = 123.456;
print ("Float: %.0f, %.1f, %.2f, %1.2f, %2.2f" 
       % (x, x, x, x, x))
# 3. STRING
x = "Hello, world"
print ("String: [%s], [%3s], [%20s]" 
       % (x, x, x))
```

    Hello, world
    Integer: 3, 03, 003, 0003, 00003
    Float: 123, 123.5, 123.46, 123.46, 123.46
    String: [Hello, world], [Hello, world], [        Hello, world]


# For + If / Else


```python
dlmethods = ["ANN", "MLP", "CNN", "RNN", "DAE"]

for alg in dlmethods:
    if alg in ["ANN", "MLP"]:
        print ("We have seen %s" % (alg))
```

    We have seen ANN
    We have seen MLP



```python
dlmethods = ["ANN", "MLP", "CNN", "RNN", "DAE"];
for alg in dlmethods:
    if alg in ["ANN", "MLP", "CNN"]:
        print ("%s is a feed-forward network." % (alg))
    elif alg in ["RNN"]:
        print ("%s is a recurrent network." % (alg))
    else:
        print ("%s is an unsupervised method." % (alg))
```

    ANN is a feed-forward network.
    MLP is a feed-forward network.
    CNN is a feed-forward network.
    RNN is a recurrent network.
    DAE is an unsupervised method.



```python
# Advanced
print("\nFOR loop with index.")
for alg, i in zip(dlmethods, range(len(dlmethods))):
    if alg in ["ANN", "MLP", "CNN"]:
        print ("[%d/%d] %s is a feed-forward network." 
               % (i, len(dlmethods), alg))
    elif alg in ["RNN"]:
        print ("[%d/%d] %s is a recurrent network." 
               % (i, len(dlmethods), alg))
    else:
        print ("[%d/%d] %s is an unsupervised method." 
               % (i, len(dlmethods), alg))
```

    
    FOR loop with index.
    [0/5] ANN is a feed-forward network.
    [1/5] MLP is a feed-forward network.
    [2/5] CNN is a feed-forward network.
    [3/5] RNN is a recurrent network.
    [4/5] DAE is an unsupervised method.


# Print function for Numpy


```python
def print_np(x):
    print ("Type is %s" % (type(x)))
    print ("Shape is %s" % (x.shape,))
    print ("Values are: \n%s" % (x))
    print
```

# Rank 1 Array


```python
x = np.array([1, 2, 3]) # rank 1 array
print_np(x)

x[0] = 5
print_np(x)
```

    Type is <class 'numpy.ndarray'>
    Shape is (3,)
    Values are: 
    [1 2 3]
    Type is <class 'numpy.ndarray'>
    Shape is (3,)
    Values are: 
    [5 2 3]


# Rank 2 Array


```python
y = np.array([[1,2,3], [4,5,6]]) 
print_np(y)
```

    Type is <class 'numpy.ndarray'>
    Shape is (2, 3)
    Values are: 
    [[1 2 3]
     [4 5 6]]


# Zeros


```python
a = np.zeros((3, 2))  
print_np(a)
```

    Type is <class 'numpy.ndarray'>
    Shape is (3, 2)
    Values are: 
    [[0. 0.]
     [0. 0.]
     [0. 0.]]


# Ones


```python
b = np.ones((1, 2))   
print_np(b)
```

    Type is <class 'numpy.ndarray'>
    Shape is (1, 2)
    Values are: 
    [[1. 1.]]


# Identity


```python
c = np.eye(2, 2)   
print_np(c)
```

    Type is <class 'numpy.ndarray'>
    Shape is (2, 2)
    Values are: 
    [[1. 0.]
     [0. 1.]]


# Random (Uniform)


```python
d = np.random.random((2, 2))    
print_np(d)
```

    Type is <class 'numpy.ndarray'>
    Shape is (2, 2)
    Values are: 
    [[0.75244826 0.89121751]
     [0.45432197 0.36453902]]


# Random (Gaussian)


```python
e = np.random.randn(1, 10)    
print_np(e)
```

    Type is <class 'numpy.ndarray'>
    Shape is (1, 10)
    Values are: 
    [[-0.44912084 -0.37443945 -0.65444492 -0.00109311  0.22234935 -0.04107098
      -0.75785218  0.57953826  0.85421762  1.03633175]]


# Array Indexing


```python
# Create the following rank 2 array with shape (3, 4)
# [[ 1  2  3  4]
#  [ 5  6  7  8]
#  [ 9 10 11 12]]
a = np.array([[1,2,3,4], [5,6,7,8], [9,10,11,12]])
print_np(a)

print
# Use slicing to pull out the subarray consisting 
# of the first 2 rows
# and columns 1 and 2; b is the following array 
# of shape (2, 2):
# [[2 3]
#  [6 7]]
b = a[:2, 1:3]
print_np(b)
```

    Type is <class 'numpy.ndarray'>
    Shape is (3, 4)
    Values are: 
    [[ 1  2  3  4]
     [ 5  6  7  8]
     [ 9 10 11 12]]
    Type is <class 'numpy.ndarray'>
    Shape is (2, 2)
    Values are: 
    [[2 3]
     [6 7]]


# Get Row


```python
a = np.array([[1,2,3,4], [5,6,7,8], [9,10,11,12]])
print_np(a)

row_r1 = a[1, :]    # Rank 1 view of the second row of a  
row_r2 = a[1:2, :]  # Rank 2 view of the second row of a
row_r3 = a[[1], :]  # Rank 2 view of the second row of a

print_np(row_r1)
print_np(row_r2)
print_np(row_r3)
```

    Type is <class 'numpy.ndarray'>
    Shape is (3, 4)
    Values are: 
    [[ 1  2  3  4]
     [ 5  6  7  8]
     [ 9 10 11 12]]
    Type is <class 'numpy.ndarray'>
    Shape is (4,)
    Values are: 
    [5 6 7 8]
    Type is <class 'numpy.ndarray'>
    Shape is (1, 4)
    Values are: 
    [[5 6 7 8]]
    Type is <class 'numpy.ndarray'>
    Shape is (1, 4)
    Values are: 
    [[5 6 7 8]]



```python
a = np.array([[1,2], [3, 4], [5, 6]])
print_np(a)

# An example of integer array indexing.
# The returned array will have shape (3,) and 
b = a[[0, 1, 2], [0, 1, 0]]
print_np(b)

# The above example of integer array indexing 
# is equivalent to this:
c = np.array([a[0, 0], a[1, 1], a[2, 0]])
print_np(c)
```

    Type is <class 'numpy.ndarray'>
    Shape is (3, 2)
    Values are: 
    [[1 2]
     [3 4]
     [5 6]]
    Type is <class 'numpy.ndarray'>
    Shape is (3,)
    Values are: 
    [1 4 5]
    Type is <class 'numpy.ndarray'>
    Shape is (3,)
    Values are: 
    [1 4 5]


# DataTypes


```python
x = np.array([1, 2])  # Let numpy choose the datatype
y = np.array([1.0, 2.0])  # Let numpy choose the datatype
z = np.array([1, 2], dtype=np.int64)  # particular datatype

print_np(x)
print_np(y)
print_np(z)
```

    Type is <class 'numpy.ndarray'>
    Shape is (2,)
    Values are: 
    [1 2]
    Type is <class 'numpy.ndarray'>
    Shape is (2,)
    Values are: 
    [1. 2.]
    Type is <class 'numpy.ndarray'>
    Shape is (2,)
    Values are: 
    [1 2]


# Array Math


```python
x = np.array([[1,2],[3,4]], dtype=np.float64)
y = np.array([[5,6],[7,8]], dtype=np.float64)

# Elementwise sum; both produce the array
print(x + y)
print(np.add(x, y))
```

    [[ 6.  8.]
     [10. 12.]]
    [[ 6.  8.]
     [10. 12.]]



```python
#  Elementwise difference; both produce the array
print(x - y)
print(np.subtract(x, y))
```

    [[-4. -4.]
     [-4. -4.]]
    [[-4. -4.]
     [-4. -4.]]



```python
# Elementwise product; both produce the array
print(x * y)
print(np.multiply(x, y))
```

    [[ 5. 12.]
     [21. 32.]]
    [[ 5. 12.]
     [21. 32.]]



```python
# Elementwise division; both produce the array
# [[ 0.2         0.33333333]
#  [ 0.42857143  0.5       ]]
print(x / y)
print(np.divide(x, y))
```

    [[0.2        0.33333333]
     [0.42857143 0.5       ]]
    [[0.2        0.33333333]
     [0.42857143 0.5       ]]



```python
# Elementwise square root; produces the array
# [[ 1.          1.41421356]
#  [ 1.73205081  2.        ]]
print(np.sqrt(x))
```

    [[1.         1.41421356]
     [1.73205081 2.        ]]



```python
x = np.array([[1,2],[3,4]])
y = np.array([[5,6],[7,8]])
v = np.array([9,10])
w = np.array([11, 12])

print_np(x)
print_np(y)
print_np(v)
print_np(w)

# Inner product of vectors; both produce 219
print(v.dot(w))
print(np.dot(v, w)) # <= v * w'
# Matrix / vector product; both produce the rank 1 array [29 67]
print(x.dot(v))
print(np.dot(x, v)) # <= x * v'
# Matrix / matrix product; both produce the rank 2 array
# [[19 22]
#  [43 50]]
print(x.dot(y))
print(np.dot(x, y))
```

    Type is <class 'numpy.ndarray'>
    Shape is (2, 2)
    Values are: 
    [[1 2]
     [3 4]]
    Type is <class 'numpy.ndarray'>
    Shape is (2, 2)
    Values are: 
    [[5 6]
     [7 8]]
    Type is <class 'numpy.ndarray'>
    Shape is (2,)
    Values are: 
    [ 9 10]
    Type is <class 'numpy.ndarray'>
    Shape is (2,)
    Values are: 
    [11 12]
    219
    219
    [29 67]
    [29 67]
    [[19 22]
     [43 50]]
    [[19 22]
     [43 50]]



```python
x = np.array([[1,2],[3,4]])
print_np(x)
print
print(x)
print(x.T)
print(np.sum(x))  # Compute sum of all elements
print(np.sum(x, axis=0))  # Compute sum of each column
print(np.sum(x, axis=1))  # Compute sum of each row
```

    Type is <class 'numpy.ndarray'>
    Shape is (2, 2)
    Values are: 
    [[1 2]
     [3 4]]
    [[1 2]
     [3 4]]
    [[1 3]
     [2 4]]
    10
    [4 6]
    [3 7]



```python
print(x)
print(x.T)
```

    [[1 2]
     [3 4]]
    [[1 3]
     [2 4]]



```python
v = np.array([1,2,3])
print(v)
print(v.T)
```

    [1 2 3]
    [1 2 3]



```python
v = np.array([[1,2,3]])
print(v)
print(v.T)
```

    [[1 2 3]]
    [[1]
     [2]
     [3]]

