%Juliano_Declan_ENG209_HW6
%10/9/2025
%ENG 209, HW 5, exercises:

%***************************************question 3********************************
%{
Considering a, b, c calcualte if they are pythagorean triples. If so print and count how many there are.
%}

a = [3 5 6 7 8 9 9 10 11 12];
b = [4 12 8 24 15 12 40 24 60 16];
c = [5 13 10 25 16 12 41 25 64 16];

% Counter
nCount = 0;

% Iterate through all items of the vectors
for i =1:length(a)
    % If a b and c are a triple print and count up
    if a(i)^2+b(i)^2 == c(i)^2
        fprintf('%i, %i, and %i are pythagorean triples\n',a(i),b(i),c(i))
        nCount = nCount + 1;
    end
end
% Print the total amount of triples
fprintf('There were %i pythagorean triples\n',nCount)

% Do the same but use vector opperations
% Make a logical array, where the index is 1 if a,b,c a triple and a 0 if not
isPythag = (a.^2+b.^2)==c.^2;
% Print the total amount of triples
fprintf('Using vecotor operations there were %i pythagorean triples\n',sum(isPythag))

%***************************************question 4********************************
%{
Simulate rolling two dice. Keep rolling the dice, until a chosen number (7) is rolled a certain amount of times (50). Then print the total rolls to get the desired number x times
%}

% Store all possible values 1-12 in a vector
rollTotal = zeros(1,12);

maxCount = 50;      % How many rolls of a certain number is wanted
Number = 7;         % What number is wanted

% Run untill the desired number is counted maxCount times
while rollTotal(Number) < maxCount
    dice1 = randi([1,6],1,1);   % Dice 1
    dice2 = randi([1,6],1,1);   % Dice 2
    total = dice1+dice2;        % Total of the dice
    
    % Add one to the rolled number
    rollTotal(total) = rollTotal(total)+1; 
end

% Print the amount of rolls and the desired number
fprintf("There were %i rolls to get %i %i's \n",sum(rollTotal),maxCount,Number)

%***************************************question 7********************************
%{
Animate a standing wave, of the equation 𝑦(𝑥, 𝑡) = sin(2𝜋𝑥/𝜆) cos(2𝜋𝑓𝑡)
where
𝑥 is the length of the wave 
𝜆 is the wavelength     (m)
𝑓 is the frequency      (hz)
𝑡 is time               (frame time)
%}

lambda = 2 * pi;    % Wavelength
f = 1/5;            % Frequency
num_frames = 500;   % Number of frames for the animation

% X values from 0 to wavelength (1 complete cyclce)
x = linspace(0, lambda, 500);

% Time, it is used to advance the animation at a constant pace
t_values = linspace(0, 1/f, num_frames);

% clear the plot
clf

% Set title, axes, enable grid, enable hold
title('Oscillating Wave');
xlabel('x');
ylabel('y');
grid on;
hold on;

% Lock the axes to keep the graph from resizing.
xlim([0, lambda]);
ylim([-1.1, 1.1]);

% Create a plot object
h = plot(x, zeros(size(x)));

% Animation loop
for k = 1:num_frames
    % Get the time value for the current frame
    t = t_values(k);

    % Calculate the y-values for the current frame
    y = sin(2*pi*x/lambda) .* cos(2*pi*f*t);

    % Update the plot with the new y-values
    set(h, 'YData', y);
   
    % Use drawnow to update the plot immediately
    drawnow;
end
