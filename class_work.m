p1_x = [-3:0.1:0];
p1 = p1_x+1;

p2_x = [0:0.1:2];
p2 = p2_x*0+1;

p3_x = [2:0.1:3];
p3 = p3_x.^2-3;
subplot(2,2,1)
hold on
grid('on')
title("Piecewise function f(x)")
xlabel("x")
ylabel("y")
plot(p1_x,p1,'m')
plot (p2_x,p2,'m')
plot(p3_x,p3,'m')
hold off
subplot(2,5,3)
t=[0:0.1:10];
alt=t;
G = 6.674e-11;              %gravitational constant (m3/kg/s2)
M1 = 5.972e24;              %mass of Earth (kg)
M2 = 100;                   %mass of of object (kg)
R = 6371+alt*200;               %distance between Earth and object (m)
F = (G * (M1 * M2)) ./ R.^2;  %calculate weight (N)
plot(t,F,t,alt)