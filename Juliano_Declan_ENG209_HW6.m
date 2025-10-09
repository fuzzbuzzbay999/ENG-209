
%Juliano_Declan_ENG209_HW6
%10/9/2025
%ENG 209, HW 5, exercises:

%question 3
a = [3 5 6 7 8 9 9 10 11 12];
b = [4 12 8 24 15 12 40 24 60 16];
c = [5 13 10 25 16 12 41 25 64 16];
nCount = 0
for i =1:10
    if a(i)^2+b(i)^2 == c(i)^2
        fprintf('%i, %i, and %i are pythagorean triples\n',a(i),b(i),c(i))
        nCount = nCount + 1;
    end
end
fprintf('There were %i pythagorean triples\n',nCount)
%question 4
rollTotal = zeros(1,12);
maxCount = 50;

while rollTotal(7)<maxCount
dice1 = randi([1,6],1,1);
dice2 = randi([1,6],1,1);
total = dice1+dice2;
rollTotal(total)=rollTotal(total)+1;
end
fprintf('There were %i rolls to get %i sevens\n',sum(rollTotal),maxCount)

%question 7



% Clear workspace, command window, and close all figures

% --- Wave Parameters ---
lambda = 2 * pi; % Wavelength (given as 2*pi)
f = 1/5;         % Frequency (chosen value, e.g., 1/5 Hz)
num_frames = 500;% Number of frames for the animation (e.g., 300)

% --- Spatial Grid (x-values) ---
% The grid of x-values goes from 0 to the wavelength
x = linspace(0, lambda, 500);

% --- Time Variable (t) ---
% The time variable changes with each frame.
% To make the animation smooth and complete one cycle,
% t should go from 0 to 1/f over the duration of the animation.
t_final = 1/f;
t_values = linspace(0, t_final, num_frames);

% --- Animation Loop ---
figure(1); % Create a figure window
hold on;
% Set axis limits to prevent plot from resizing

title('Oscillating Wave');
xlabel('x');
ylabel('y');
xlim([0, lambda]);
ylim([-1.1, 1.1]);
grid on;
h = plot(x, zeros(size(x)));
% Create a plot object for the wave line, for more efficient updates

for k = 1:num_frames
    % Get the time value for the current frame
    t = t_values(k);

    % Calculate the y-values for the current frame
    y = sin(2*pi*x/lambda) .* cos(2*pi*f*t);

    % Update the plot object with the new y-values
    set(h, 'YData', y);
   
    % Use drawnow to update the plot on the screen immediately
    drawnow;
end
