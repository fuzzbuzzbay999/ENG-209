t=-8:0.1:8
x=t
y=t
[X, Y] = meshgrid(x,y)
z=X.^2+Y.^2
mesh(x,y,z)