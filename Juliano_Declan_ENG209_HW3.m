%Juliano_Declan_ENG209_HW3
%9/12/2025
%ENG 209, HW 3, exercises:


%***************************************question 1********************************
%{ 
The goal is to load a text file, write it to an xlsx and  create a plot using the included data.
the text file 'mrna2021.txt' must be located in the same folder
%}

%load the text file
data = load('mrna2021.txt');

%set data_x and y to the columns of the text file
month = data(:,1);
share = data(:,2);

%create the heading
disp('Moderna, Inc. Share Prices (2021)');
fprintf('%-10s %-15s\n', 'Month', 'Share Price');
fprintf('%-10s %-15s\n', '-----', '-----------');

%A for loop is required to get the proper formatting, otherwise fprint freaks out.
%{ 
for i = 1:length(month)
       fprintf('%-10d %-15.2f\n', month(i), share(i));
end
%}

%Since forloops arent allowed, heres a non forloop version
i=1;
fprintf('%-10d %-15.2f\n', month(i), share(i));
i=2;
fprintf('%-10d %-15.2f\n', month(i), share(i));
i=3;
fprintf('%-10d %-15.2f\n', month(i), share(i));
i=4;
fprintf('%-10d %-15.2f\n', month(i), share(i));
i=5;
fprintf('%-10d %-15.2f\n', month(i), share(i));
i=6;
fprintf('%-10d %-15.2f\n', month(i), share(i));
i=7;
fprintf('%-10d %-15.2f\n', month(i), share(i));
i=8;
fprintf('%-10d %-15.2f\n', month(i), share(i));
i=9;
fprintf('%-10d %-15.2f\n', month(i), share(i));
i=10;
fprintf('%-10d %-15.2f\n', month(i), share(i));
i=11;
fprintf('%-10d %-15.2f\n', month(i), share(i));
i=12;
fprintf('%-10d %-15.2f\n', month(i), share(i));

%write data to an xlsx

%write the data with a heading)
name = 'mrna2021_HEADING.xlsx';                 %name of xlsx        
heading = ['month','share price'];              %create the header
data_to_write = [month,share];                  %create the data to write
writematrix(heading,name,'Range','A1')          %write the header to the xlsx
writematrix(data_to_write,name,'Range','A2')    %write the body to the xlsx on the next line (A2)

%write the data without a heading
name='mrna2021_NO_HEADING.xlsx';                %name of xlsx   
writematrix(data_to_write,name)  


%plotting the data
%subplot 1
subplot(1,3,1)

%plot data as purple circles
plot(month,share,'mo')        

%set the title and axis, enable grid
title("Share price per month")
xlabel("Months")
ylabel("Share price")
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

%plot the data
plot(alt,F)

%set title and axis,enable grid
title("How altitude affects weight")
xlabel("Altitude (m)")
ylabel("Weight (N)")
grid on 
