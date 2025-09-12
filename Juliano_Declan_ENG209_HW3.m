%Juliano_Declan_ENG209_HW3
%9/12/2025
%ENG 209, HW 3, exercises:


%***************************************question 1********************************
%{ 
The goal is to load a text file and create a plot using the data included.
the text file 'mrna2021.txt' must be located in the same folder
%}

data = load('mrna2021.txt');
data_x=data(:,1);
data_y=data(:,2);

%subplot 1
subplot(1,3,1)
plot(data_x,data_y,'mo')        %plot data as purple circles

%set the title and axis, enable grid
title("shares per month")
xlabel("Months")
ylabel("Shares")
grid on


%***************************************question 5********************************
%{
The goal is to graph the piecewise function following
        𝑥 + 4   for −2 ≤ 𝑥 < 0
𝑓(𝑥) = {4 − 𝑥 2 for 0 ≤ 𝑥 < 1
        3𝑥^2    for 1 ≤ 𝑥 < 2
%}

%defining the 3 sections as 3 variables p1 p2 p3
p1_x = linspace(-2,-0.0001,400);
p1 = p1_x+4;

p2_x = linspace(0,0.9999,400);
p2 = 4-p2_x.^2;

p3_x = linspace(1,1.9999,400);
p3 = 3*p3_x.^2;

%subplot (2)
subplot(1,3,2)
hold on

%plot the 3 sections
plot(p1_x,p1,'m')
plot (p2_x,p2,'m')
plot(p3_x,p3,'m')

%set title and axis, enable grid
title("Piecewise function f(x)")
xlabel("x")
ylabel("y")
grid on
hold off

%***************************************question 7********************************
%{
compute the weight of a 100 kg object at various altitudes above the earth’s surface, 
Then plot the weight as a function of altitude.
%}

t = [0:1:100];                  %time
alt = t*1000;                   %altitude (m)
G = 6.674e-11;                  %gravitational constant (m3/kg/s2)
M1 = 5.972e24;                  %mass of Earth (kg)
M2 = 100;                       %mass of of object (kg)
R = 6371000+alt;                %distance between center of Earth and object (m)
F = (G * (M1 * M2))./( R.^2);   %calculate weight (N)

%convert altitude to km
alt = alt/1000;
%subplot 3
subplot(1,3,3)
plot(alt,F)


%set title and axis,enable grid
title("How altitude affects weight")
xlabel("Altitude (m)")
ylabel("Weight (N)")
grid on 
