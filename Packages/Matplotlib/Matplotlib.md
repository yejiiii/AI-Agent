# Matplotlib

- [Jupyter Notebook 버전](./Matplotlib.ipynb)

# Matplotlib - pyplot


```python
import numpy as np
import matplotlib.pyplot as plt
%matplotlib inline
print("Load numpy & matplotlib")
```

    Load numpy & matplotlib



```python
# Compute the x and y coordinates for points on a sine curve
x = np.arange(0, 3 * np.pi, 0.1)
y = np.sin(x)

# Plot the points using matplotlib
plt.plot(x, y)
```




    [<matplotlib.lines.Line2D at 0x11a6efe48>]




![png](output_2_1.png)



```python
y_sin = np.sin(x)
y_cos = np.cos(x)
# Plot the points using matplotlib
plt.plot(x, y_sin)
plt.plot(x, y_cos)
plt.xlabel('x axis label')
plt.ylabel('y axis label')
plt.title('Sine and Cosine')
plt.legend(['Sine', 'Cosine'])

# Show the figure.
plt.show()
```


![png](output_3_0.png)



```python
# Compute the x and y coordinates for points 
# on sine and cosine curves
x = np.arange(0, 3 * np.pi, 0.1)
y_sin = np.sin(x)
y_cos = np.cos(x)

# Set up a subplot grid that has height 2 and width 1,
# and set the first such subplot as active.
plt.subplot(2, 1, 1)

# Make the first plot
plt.plot(x, y_sin)
plt.title('Sine')

# Set the second subplot as active, and make the second plot.
plt.subplot(2, 1, 2)
plt.plot(x, y_cos)
plt.title('Cosine')

# Show the figure.
plt.show()
```


![png](output_4_0.png)

