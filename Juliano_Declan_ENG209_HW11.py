# Juliano Declan ENG209 HW11
#12/12/2025
#ENG 209, HW 11, exercises:

# imports
from mpl_toolkits.mplot3d import *
import  matplotlib.pyplot as plt
from scipy.special import erf
from math import sqrt
import numpy as np
import scipy as sp
from math import *

#***************************************question 1********************************
'''
Make a surface plot and contour plot of the function
𝑧 = 𝑥^2 − 𝑦^2
for −4 ≤ 𝑥 ≤ 4 and −4 ≤ 𝑦 ≤ 4
'''
# x and y values from -4 to 4, 400 points
x = np.linspace(-4,4,400)   # create x values
y = x.copy()                # create y values

# create meshgrid and compute Z values
X,Y = np.meshgrid(x,y)
Z = X**2 - Y**2

# create figure and set size
fig = plt.figure(figsize=(10,8))

# create 3d surface plot in first subplot
ax = fig.add_subplot(1,2,1,projection = '3d')
ax.plot_surface(X,Y,Z,rstride = 10, cstride = 30, cmap='viridis')
ax.set_title(r'$z = x^2 - y^2$ Surface Plot')

# create contour plot in second subplot
ax = fig.add_subplot(1,2,2,projection = '3d')
ax.contour3D(X,Y,Z, cmap='viridis')
ax.set_title(r'$z = x^2 - y^2$ Surface Plot')

plt.show(block = False)     # show plot

#***************************************question 5********************************
'''Solve the following system of equations
𝑥 + 𝑧 + 2𝑤 = 6
𝑦 − 2𝑥 = −3
𝑥 + 2𝑦 − 𝑧 = −2
2𝑥 + 𝑦 + 3𝑧 − 2𝑤 = 0
'''
coef = np.array([[1,0,1,2],[-2,1,0,0],[1,2,-1,0],[2,1,3,0]]) # Coefficient matrix
const = np.array([[6],[-3],[-2],[0]])                        # Constant matrix (solutions to the equations with the coefficients)
inv = np.linalg.inv(coef)           # Inverse of the coefficient matrix
sol = inv@const                     # Matrix multiplication to find solutions 
sol = [float(i[0]) for i in sol]    # Convert solution to list of floats \

# Print solution
print(f'the solution to the system of equations is x = {sol[0]:.2f}, y = {sol[1]:.2f}, z = {sol[2]:.2f}, w = {sol[3]:.2f}')

#***************************************question 6********************************
''' 
using finite difference methods, estimate the first derivative of the function
𝑓(𝑥) = 𝑥2𝑒−
'''

# Modifiables
a = 0   # start value
b = 3   # end value
h = 0.1 # step size

# Function
f = lambda x : (x **2  * np.exp(-x))
# Calculations
x = np.arange(a,b+h,h)  # x values from a to b with step h
y = f(x)                # y values from f(x)

# derivative estimations
yfwd = (y[1:]-y[0:-1])/h        # Forward difference
ycent = (y[2:]-y[0:-2])/(h*2)   # Central difference
y4th = (y[:-4]-8*y[1:-3]+8*y[3:-1]-y[4:])/(12*h)    # 4th order difference
yact = 2*x * np.exp(-x) -1*(x**2) *np.exp(-x)       # Actual derivative

plt.figure()    # New figure

# Plot results
plt.plot(x,yact,label='Actual')             # Actual derivative
plt.plot(x[1:],yfwd,label = 'Forward')      # Forward difference
plt.plot(x[1:-1],ycent,label = 'Central')   # Central difference
plt.plot(x[2:-2],y4th,label = '4th order')  # 4th order difference
plt.title(r'Various first derivative estimations for $x^2e^-x$')    # title
plt.legend()    # Legend

plt.show(block = False)     # Show plot

#***************************************question 8********************************
'''
Using the error function, compute the following probabilities for a standard normal variable X:
a) P(−1 ≤ X ≤ 1)
b) P(0 ≤ X < infinity)
'''

# Function to compute normal interval probability
def normal_interval_probability(a, b):
    """Returns the probability that a standard normal variable X lies in [a, b]."""
    return 0.5 * (erf(b / sqrt(2)) - erf(a / sqrt(2))) * 100  # return as percentage

# Compute and print probabilities
print(f"The probablility of x following P(-1 ≤ X ≤ 1) is a {normal_interval_probability(-1, 1):.4f}% chance")
print(f"The probablility of x following P(0 ≤ X < infinity) is a {normal_interval_probability(0, 6):.4f}% chance")  # 6 is a good approximation for infinity

plt.show()   # Keep plots open
