
# Juliano_Declan_ENG209_HW10.py
#12/9/2025
#ENG 209, HW 10, exercises:

# import all of math
from math import *
import numpy as n               # numpy for arrays and math functions
import matplotlib.pyplot as plt # matplotlib for plotting
import matplotlib.ticker as tck # matplotlib ticker for setting tick marks

#***************************************question 1********************************
'''
Plot 𝑦 = cos𝑥 for x from 0 to 10π. 
'''
# x values from 0 to 10π, 200 points
x  = n.linspace(0,10*pi,200)

y = n.cos(x)    # y values, cosine of x

# create figure and plot
fig = plt.figure(1)
ax = fig.add_subplot()

# plot cosine function, set color, line width, and line style
ax.plot(x,y,color = 'green',linewidth = '3',linestyle  = 'dashed')
ax.yaxis.set_major_locator(tck.MultipleLocator(0.5))    # Major ticks every 0.5 # set_yticks(n.arange()) is a little clunky
ax.yaxis.set_minor_locator(tck.MultipleLocator(0.1))    # Minor ticks every 0.1 # set_yticks(n.arange(),minor = 'true') is a little clunky

# set title, labels, and grid
ax.set_title(r'$f(x) = \cos(x)$')
ax.set_xlabel('x')
ax.set_ylabel('y')
ax.grid()
plt.show(block = False)     # show plot

#***************************************question 3********************************
'''
make a 2x2 grid of graphs of the folowing functions for 0 < x < 4pi
𝑦1 = sin𝑥 
𝑦2 = sin2 𝑥 
𝑦3 = 𝑥sin𝑥 
𝑦4 = sin𝑥/x

'''
# x values from 0 to 4π, 200 points
x = n.linspace(0,4*pi,200)

# y values for each function
y1 = n.sin(x)
y2 = n.sin(x)**2
y3 = x * n.sin(x)
y4 = n.sin(x)/x

# create figure 2 and subplots, graph and set titles, for each subplot
fig2 = plt.figure(2,figsize=(10,8)) 
fig2.suptitle('Multiple graphs of sin')

bx = fig2.add_subplot(2,2,1)    # subplot 1
bx.plot(x,y1,color = 'yellow', linewidth = '2.5')
bx.set_title(r'$f(x) = \sin(x)$')

bx = fig2.add_subplot(2,2,2)    # subplot 2
bx.plot(x,y2,color = 'yellow', linewidth = '2.5')
bx.set_title(r'$f(x) = \sin(x)^2$')

bx = fig2.add_subplot(2,2,3)    # subplot 3
bx.plot(x,y3,color = 'yellow', linewidth = '2.5')
bx.set_title(r'$f(x) = x * \sin(x)$')

bx = fig2.add_subplot(2,2,4)    # subplot 4
bx.plot(x,y4,color = 'yellow', linewidth = '2.5')
bx.set_title(r'$f(x) = \frac{\sin(x)}{x}$')

#*********************************question 5********************************
'''
Plot the gravitational force between a 90kg object and the earth as a function of distance from the earth's surface.
The distance should range from 0 to 1000km, with a step size of 10km.
'''
# constants
G = 6.674E-11   # gravitational constant
r = 6371 * 1000 # radius of earth in meters
m1 = 5.972E24   # mass of earth kg

# modifiables
m2 = 90     # mass kg
a = 0       # start km
b = 1000    # end km
d = 10      # distance km

r2 = n.arange(a,b,d,dtype='float')  # distance from earth surface in km force 64 bit numbers because numpy and python are absolute pieces of garbage
print(n.square(r+r2*1000))

# function to calculate gravitational force at a given distance from the earth's surface
def grav(R):
    R = R *1000                     # *= doesnt work reliably in numpy (transfers types so if int32 it will remain int32 regardless if the multiple ie 1000.3)
    F = (G * m1 * m2)/((r+R)**2)    # force in newtons
    return F

fig3 = plt.figure(3) # create figure 3
cx = fig3.add_subplot()

# plot force vs distance from earth surface and label axes, add grid, tick marks, and title
cx.plot(r2,grav(r2)) 
cx.set_xlabel('Distance from earth surface (km)')
cx.set_ylabel('Gravitational force orce (N)')
cx.grid()
cx.xaxis.set_major_locator(tck.MultipleLocator(100))
cx.set_title('Gravitational Force vs Distance from Earth Surface')
    
# Arrows showing the altitudes where each of the following atmospheric layers begin: stratosphere, mesosphere, thermosphere, exosphere with astronaut
s = 12      # stratosphere starts at 12 km
m = 50      # mesosphere starts at 50 km
t = 80      # thermosphere starts at 80 km
ex = 700    # exosphere starts at 700 km
cx.annotate('Stratosphere (John Young)',xy = (s,grav(s)), xytext = (s+25,grav(s)), arrowprops=dict(arrowstyle='->',color = 'red'),fontsize = '12')
cx.annotate('Mesosphere (Sally Ride)',xy = (m,grav(m)), xytext = (m+100,grav(m)-20), arrowprops=dict(arrowstyle='->',color = 'red'),fontsize = '12')
cx.annotate('Thermosphere (Mae Jemison)',xy = (t,grav(t)), xytext = (t,grav(t)-150), arrowprops=dict(arrowstyle='->',color = 'red'),fontsize = '12')
cx.annotate('Exosphere (Guion Bluford)',xy = (ex,grav(ex)), xytext = (ex-150,grav(ex)+100), arrowprops=dict(arrowstyle='->',color = 'red'),fontsize = '12')

plt.show() #keep the plots open
