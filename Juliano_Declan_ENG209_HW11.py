# Juliano Declan ENG209 HW11
#06/10/2024
#ENG 209, HW 11, exercises:

from mpl_toolkits.mplot3d import *
import  matplotlib.pyplot as plt
import numpy as np
import scipy as sp
from math import *
#***************************************question 1********************************
'''
Make a surface plot and contour plot of the function
𝑧 = 𝑥2 − 𝑦2
for −4 ≤ 𝑥 ≤ 4 and −4 ≤ 𝑦 ≤ 4
'''
# x and y values from -4 to 4, 400 points
x = np.linspace(-4,4,400)
y = x.copy()
X,Y = np.meshgrid(x,y)
Z = X**2 - Y**2
# create figure and 3d surface plot
fig = plt.figure(figsize=(10,8))
ax = fig.add_subplot(1,2,1,projection = '3d')
ax.plot_surface(X,Y,Z,rstride = 10, cstride = 30, cmap='viridis')
ax.set_title(r'$z = x^2 - y^2$ Surface Plot')
ax = fig.add_subplot(1,2,2,projection = '3d')
ax.contour3D(X,Y,Z,rstride = 10, cstride = 30, cmap='viridis')
ax.set_title(r'$z = x^2 - y^2$ Surface Plot')


plt.show()     # show plot