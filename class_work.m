x =linspace(-8*pi,8*pi,200);
y=x;
[X,Y]=meshgrid(x,y);
z=sin(sqrt(X.^2+Y.^2))./sqrt(X.^2+Y.^2);
mesh(X,Y,z)
title('Graph $$z = \sqrt{x^2+y^2}$$', 'Interpreter',"latex")