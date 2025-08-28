x=[2,4,8];
x(2)

y=[2;3;5];
y(2)
g=exp(x)
x.*y
a=[6,4,3;-3,7,10;5,-2,4]
a(2,3)
X= [0:0.1:10]
A=[2,4,8]
B=[2,3,5]
C=[A,B]
c=reshape(C,3,2)
length(x)

flip(X(end-4:end))
A=randi([1,10],5)
A(2,:)
A(1:2,1:3)
x+y
1+y
1./x
x=[0.5:0.5:2.5]
y=linspace(0.8,3.2,5)

d=x.^2+2*(x.*y);
z=x.*y.*exp(y./x)-nthroot((x.^4.*y.^3+8.5),3)

G = 6.674e-11;             %gravitational constant (m3/kg/s2)
M1 = 5.972e24;              %mass of Earth (kg)
M2 = 90;              %mass of person (kg)
R = 6.38e6+400000;                %radius of Earth + height of man (m)
F = (G * (M1 * M2)) / R^2;    %calculate gravitational force (N)
disp(['Gravitational force between Earth and Moon: ', num2str(F), ' N']);   %display result