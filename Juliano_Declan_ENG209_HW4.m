%Juliano_Declan_ENG209_HW4
%9/18/2025
%ENG 209, HW 4, exercises:

%question 1
t=[0:0.1:30];
x=(1-0.45*cos(65*t)).*cos(t)
y=(1-0.45*cos(65*t)).*sin(t)
z=t+sin(65*t)
plot3(x,y,z)

%question 2
x =linspace(-8*pi,8*pi,200);
y=x;
[X,Y]=meshgrid(x,y);
z=sin(sqrt(X.^2+Y.^2))./sqrt(X.^2+Y.^2);
mesh(X,Y,z)

fd=linspace(40,110,200)
R = linspace(10,40,200)

%question 4
[fd,R] = meshgrid(fd,R)
V=34
L=0.4
C = 12e-6
wd = 2*pi*fd
I=V./(sqrt(R.^2+(wd*L-(1./(wd*C))).^2))

mesh(fd,R,I)

%question 5
