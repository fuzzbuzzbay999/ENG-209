%Juliano_Declan_ENG209_HW6
%10/9/2025
%ENG 209, HW 7, exercises:

%***************************************question 2********************************
%{
Solve the system of equations
𝑥 + 𝑧 + 2𝑤 = 6
𝑦 − 2𝑥 = −3
𝑥 + 2𝑦 − 𝑧 = −2
2𝑥 + 𝑦 + 3𝑧 − 2𝑤 = 0
%}

% Define the coefficient matrix
coef = [1, 0, 1, 2; -2, 1, 0, 0; 1, 2, -1, 0; 2, 1, 3, -2];

% Define the solutions
sol = [6; -3; -2; 0];

% Solve the system using the backslash operator
x1 = coef\sol;
% Display the solution
disp('The solution to the system of equations is:')
disp(x1)

%***************************************question 5********************************
%{
Using collected data regarding the force exerted by a spring when stretched to certain lengths. Use the line of best fit to calculate the spring constant
%}

data = load("SpringData.txt");  % Spring data
displacement = data(:,1);       % Displacement (m)
force = data(:,2);              % Force (N)

linRegSpring = polyfit(displacement,force,1);   % Line of best fit
slope = linRegSpring(1);        % spring constant is the slope of the best fit line.
intercept = linRegSpring(2);    % Y intercept

% Figure 1
figure(1)

% plot the normal data and the line of best fit
plot(displacement,force,'mo',displacement,polyval(linRegSpring,displacement),'--')

% Set the title, subtitle, axes, enable grid, and set legend
title('Spring constant based on linear fit with intercept')
subtitle(sprintf('Equation of best fit line $$y= %0.2f x + %0.2f$$The spring has a consant of %0.3f N/m',slope,intercept,slope),"Interpreter","latex")
xlabel('Displacement (m)')
ylabel('Force (N)')
grid on
legend('Data','Best fit','Location','best')

%***************************************question 6********************************
%{
Using decay data collected from a sample of barium. Uisng two subplots compare the base data to a linearized set with a best fit line.
Use the slope of the best fit line to find the decay constant of the sample(k)
%}

data = load('ExpDecay.txt');    % Collected data
t = data(:,1);                  % Time (s)
activity = data(:,2);           % Decay activity

lnActivity = log(activity);     % Linearize the data

kEst = -slope;                  % Decay constant (1/s)

linRegActivity = polyfit(t,lnActivity,1);   % Line of best fit
bestFitY = polyval(linRegActivity,t);       %find the Y values for the line of best fit
slope = linRegActivity(1);                  % Slope of best fit line

% Figure 2
figure(2)

% Plot the initial data
subplot(2,1,1)
plot(t,activity,'mo')

% Set title and axes
xlabel('Time (s)');
ylabel('Activity Rate');
title('Original Decay Data');

% Plot the linearized data
subplot(2,1,2)
plot(t,lnActivity,'ro',t,bestFitY,'--')

% Set the title, axes, and legend
xlabel('Time (s)');
ylabel('ln(Activity Rate)');
title(['Linearized Data with Fit: Estimated k = ', num2str(kEst, '%.4f'), ' 1/s']);
legend('ln(Data)', 'Linear Fit Line');

