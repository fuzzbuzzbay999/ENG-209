%Juliano_Declan_ENG209_HW8
%11/2/2025
%ENG 209, HW 8, exercises:


%***************************************question 1********************************
%{
Using a uniform spacing of 0.01 estimate the derivative of 𝑓(𝑥) = 𝑥3𝑒−𝑥, from x = 0 to x = 6
%}

h=0.01;     % Uniform spacing amount
x=0:h:6;    % Range of x values

f = @(x) (x.^3).*exp(-x);    % The function to be estimated
fx = f(x);                   % The functions repsective y values
fwdDiff = (fx(2:end)-fx(1:end-1))/h;     % The estimation of the first derivative using forwards differencing
fwdDiffx = x(1:end-1);                   % The respective x values

centDiff = (fx(3:end)-fx(1:end-2))/(2*h);    % The estimation of the first derivative using centeral differencing
centDiffx = x(2:end-1);                      % The respective x values


h4Diff = (-fx(5:end)+8*fx(4:end-1)-8*fx(2:end-3)+fx(1:end-4))/(12*h);    % The estimation of the first derivative using 4th order difference
h4Diffx = (x(3:end-2));                                                  % The respective x values

actDiff = @(x)(3*x.^2).*exp(-x)+(x.^3).*-exp(-x);    % The actual differential
actDiffy = actDiff(x);                               % The respective y values

figure(1)
clf
hold on
plot(fwdDiffx,fwdDiff,'b')      % Plot forward difference
plot(centDiffx,centDiff,'g')    % Plot center difference
plot(h4Diffx,h4Diff,'r')        % Plot 4th order difference
plot(x,actDiffy,'w')            % Plot the actual derivative

% Enable legend and grid 
legend('Forward','Center','4th order','Exact derivative')
grid on

%***************************************question 5********************************
%{
Estimate ∫ ln 𝑥 𝑑𝑥 from 1 to 4 using a left-hand Riemann integral, simpson's rule and the trapazoidal rule.
using loops and vectorized math
%}

f= @(x) log(x); % Function

n = 20; % Number of intervals (must be even)
a = 1;  % Start
b = 4;  % End

h = (b-a)/(n);  % h value (distance between x values)
n = n+1;        % Gripe 1, Add 1 to n, so the functons have the proper number of indicies (they need to be odd). because matlab is idiotic and doesnt start at 0
x = linspace(a,b,n);    % x values spaced from a to b with n+1 (see above) numbers 


% ***Left hand Riemann sum***

% Looped
Lx = x(1:end-1);    % Localized x values
leftLoop = 0;       % Initialze leftLoop at 0

% For all values in Lx 
for i = Lx
    % Multiply the current function value by h and add to leftLoop
    leftLoop = leftLoop + f(i) * h;
end
fprintf('Using a looped Riemann sum from %i to %i gives %f\n',a,b,leftLoop)

% Add up all the rectangeles formed by f(Lx) * h
left=sum(f(Lx)*h); % Vectorization
fprintf('Using a vectorized Riemann sum from %i to %i gives %f\n',a,b,left)

% ***Simpson rule***

% Looped
Sx = x(1:end);  % Localized x values
simpLoop = 0;   % Initialze simpLoop at 0

% For all indices from 1 to Sx do the following
for i = 1:length(Sx)
    if(i == 1 || i == length(Sx))
        % If its the first or last element add the respective f(x)
        simpLoop = simpLoop + f(Sx(i));
    elseif mod(i, 2)
        % For odd indices, add 4 * f(x)
        simpLoop = simpLoop + 2 * f(Sx(i));

    else
        % For even indices, add 2 * f(x)
        simpLoop = simpLoop + 4 * f(Sx(i));
    end
end

% Apply the h/3 part of the simpson's rule
simpLoop = (h / 3) * simpLoop;
fprintf('Using a looped Simpson''s rule from %i to %i gives %f\n',a,b,simpLoop)


% Vectorized simpon's rule
coeffs = ones(1,n);                 % Make a vector of 1's with length n
coeffs(2:2:length(coeffs)-1)=4;     % Fill "even" indices with 4 (see Gripe 1 above) if matlab wasn't dumb then they would be odd
coeffs(3:2:length(coeffs)-2)=2;     % Fill "odd" indices with 2 (see Gripe 1 above) if matlab wasn't dumb then they would be even
simp=(h/3)*sum(coeffs.*f(Sx));      % Apply the simpson's rule
fprintf('Using a vectorized Simpson''s rule from %i to %i gives %f\n',a,b,simp)

% ***Trapezoidal***

% Looped 
Tx = x(1:end);  % Localized x values
trapLoop = 0;   % Initialze trapLoop at 0

% For all indices from 1 to Tx do the following
for i = 1:length(Tx)
    if(i == 1 || i == length(Tx))
        % If its the first or last element add the respective f(x)
        trapLoop = trapLoop + f(Tx(i));
    else
        % For every other element add 2 * f(x)
        trapLoop = trapLoop + 2 * f(Tx(i));
    end 
end

% Apply the h/2 part of the trapezoidal rule
trapLoop = (h/2)*trapLoop;
fprintf('Using a looped Trapezoidal rule from %i to %i gives %f\n',a,b,trapLoop)

% Vectorized    
coeffs = ones(1,n);             % Create a vector of 1's with length n
coeffs(2:end-1)=2;              % Fill the middle with 2's to make 1 2 2 2 ... 2 1 
trap = h/2*sum(coeffs.*f(Tx));  % Apply the trapezoidal rule
fprintf('Using a vectorized Trapezoidal rule from %i to %i gives %f\n',a,b,trap)