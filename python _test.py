from mpl_toolkits.mplot3d import *
import  matplotlib.pyplot as plt
import numpy as np
import scipy as sp

from math import *
x = np.linspace(-2,2,400)
y=x.copy()
X,Y = np.meshgrid(x,y)
Z = np.exp(-(X**2+Y**2))

fig = plt.figure()
ax = fig.add_subplot(projection = '3d')
ax.plot_surface(X,Y,Z,rstride = 10, cstride = 30, cmap='rainbow')
print(ax.get_zticks())

# f(x) = x lnx
# f'(x) = ln(x)+1
a = 1; b = 2; h = 0.1
n = int(round((b-a)/h)) + 1
x = np.linspace(a,b,n)
xdir = x[0:len(x)-1]
y = x * np.log(x)
yext = 1+np.log(x)
yest = (y[1:n]-y[0:n-1])/h
fig = plt.figure()
fx = fig.add_subplot()
fx.plot(x,yext,label = 'exact deriv')
fx.plot(xdir,yest,label = 'estimated deriv')
fx.legend()

a = 0; b = 6; h = 0.01
n = int(round((b-a)/h)) + 1
x = np.linspace(a,b,n)
y = 0.25 * x ** 2

int_est = h*np.sum(y[1::])
print(int_est)
plt.show()
print(sp.integrate.quad(sin,0,pi))