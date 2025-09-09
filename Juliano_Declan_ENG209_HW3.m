%Juliano_Declan_ENG209_HW3
        %question 1
%{ 
the goal is to load a text file and create a plot using the data included.
the text file 'mrna2021.txt' must be located in the same folder
%}
format short
data = load('mrna2021.txt');
data_x=data(:,1)
data_y=data(:,2)

%title("shares per month")
%xlabel("months")
%ylabel("Shares")
%plot(data_x,data_y,'mo')

    %question 5
%{
the goal is to graph the piecewise function following
        𝑥 + 4   for −2 ≤ 𝑥 < 0
𝑓(𝑥) = {4 − 𝑥 2 for 0 ≤ 𝑥 < 1
        3𝑥^2     for 1 ≤ 𝑥 < 2
    %}

    %defining the 3 sections as 3 variables p1 p2 p3

p1_x = [-2:0.1:0];
p1 = p1_x+4;

p2_x = [0:0.1:1];
p2 = 4-p2_x.^2;

p3_x = [1:0.1:2];
p3 = 3*p3_x.^2;
hold on
grid('on')
title("Piecewise function f(x)")
xlabel("x")
ylabel("y")
plot(p1_x,p1,'m')
plot (p2_x,p2,'m')
plot(p3_x,p3,'m')
hold off

    %question 7
%{
compute and graph the weight (in newtons, or N) of a 100 kg object at various altitudes
above the earth’s surface, as a function of altitude, or distance from the earth’s surface (in
kilometers, or km). altitude (km).
%}
t=[0:0.1:10];
alt=t;
G = 6.674e-11;              %gravitational constant (m3/kg/s2)
M1 = 5.972e24;              %mass of Earth (kg)
M2 = 100;                   %mass of of object (kg)
R = 6371+alt*200;               %distance between Earth and object (m)
F = (G * (M1 * M2)) ./ R.^2;  %calculate weight (N)
plot(t,F,t,alt)
