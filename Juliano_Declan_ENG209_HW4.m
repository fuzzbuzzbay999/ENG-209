%Juliano_Declan_ENG209_HW4
%9/18/2025
%ENG 209, HW 4, exercises:

%question 1
% The goal is to make a 3d graph of the following parametric function of t from 0 to 30
% 𝑥 = [1 − 0.45 cos(65𝑡)] cos 𝑡
% 𝑦 = [1 − 0.45 cos(65𝑡)] sin 𝑡
% 𝑧 = 𝑡 + sin(65𝑡)

% Create the parameter
t = [0:0.1:30];

% Equate x,y,z for all values of t
x = (1 - 0.45 * cos(65 * t)) .* cos(t)
y = (1 - 0.45 * cos(65 * t)) .* sin(t)
z = t + sin(65*t)

% Plot the graph in 3d space under figure 1
figure(1);
plot3(x,y,z)

% Set title and axis labels
title("Graph of a parametric function")
xlabel("X")
ylabel("Y")
zlabel("Z")


%question 2

x = linspace(-8*pi,8*pi,200);
y = x;
[X,Y] = meshgrid(x,y);
z = sin(sqrt(X.^2 + Y.^2))./sqrt(X.^2+Y.^2);

figure(2);
surf(X,Y,z)
title("Graph of $$\frac{sin(\sqrt{x^2+y^2})}{\sqrt{x^2+y^2}}$$","Interpreter","latex")
xlabel("X")
ylabel("Y")
zlabel("Z")


%question 4

fd = linspace(40,110,200);
R = linspace(10,40,200);
[fd,R] = meshgrid(fd,R);
V = 34;
L = 0.4;
C = 12e-6;
wd = 2*pi*fd;
I = V./(sqrt(R.^2+(wd*L-(1./(wd*C))).^2));

figure(4);
mesh(fd,R,I);
view(-60,30)


%question 5
% the goal is to compute and graph the electric potential at any point arround two charges, one is positive and the other is negative and their sepperation is 0.001 meters

% variables
Epsilon = 8.52e-12;     %Permittivity of free space (s^4 A^2) * (m^-3 kg^-1)
Q = 1e-6;               %Particle charge (coulombs)
seperation = 0.001;     %Seperation of the two particles (m)
L = seperation/2;       %L = 1/2 seperation (m)
range = 2;              %How many L's do you want each quadrent of the graph to be

% Make the x y grid from -range*L to range*L
x = linspace(-L*range,L*range,100); 
y = linspace(-L*range,L*range,100); 
[X,Y] = meshgrid(x,y);

k = Q/(4 * pi * Epsilon); %First bit of the equation

r1 = sqrt((x-L).^2+Y.^2); %r1 is the distance from the point and the positive charge
r2 = sqrt((x+L).^2+Y.^2); %r2 is the distance from the point and the negative charge

v = k*(1./r1-1./r2);      %Total quation

% Graph the mesh under figure 5, and set the axis, title and enable the colorbar
figure(5);
mesh(X,Y,v)
xlabel('X (m)')
ylabel('Y (m)')
zlabel('Electric potential (V)')
title('Electric Potential Mesh')
colorbar;

% Graph the countour plot under figure 6, and plot the points of the particles
figure(6)
contour(X,Y,v,10);
hold on
plot(L,0,"r*","DisplayName",'Q');   %positive particle
plot(-L,0,'b*',"DisplayName",'-Q'); %negative particle
hold off

% Set the axis, and title 
xlabel('X (m)')
ylabel('Y (m)')
title('Electric Potential Equipotential Lines');

% Make the plot square, enable the grid, legend and colorbar
axis equal;
grid on
legend;
colorbar;