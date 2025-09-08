% Best practices for commenting in HW 
% (some illustrated below):

% 1. Have a heading for the entire set.
% 2. Have a heading for each exercise, giving
%    an indication of what the exercise is about.
%    If the exercise has several parts, state a
%    unifying theme if there is one.
% 3. A comment on an individual lines, if short, 
%    can appear after the command that is described.
%    Note: In general, not every line should have a
%    comment. Be selective.
% 4. As an exception to the above, all variables in
%    applications exercises should be described in
%    comments, with units stated.
% 5. Within clumps of code, comments that appear within
%    the lines of the code, should be aligned.

% ENG 105, HW 0, Chapter 0 exercises
% Name: ...

% Exercise 1: Define a row vector and retrieve the
% second element.

x = [2 4 8];
x(2)

% Exercise 2: Define a column vector and retrieve the
% second element.

y = [2; 5; 10];
y(2)

% Exercise 3: Raise e to each of the elements of x.
exp(x)

% Exercise 4: Add x and y, returning a column vector.
x' + y    % The transpose of x is needed.

% Exercise 5: Evaluate the position of an object with given
% initial velocity, consant acceleration, and time.

v0 = 5.5   % initial velocity, m/s
a = -9.8   % acceleration, m/s^2
t = 10     % time, s

x = v0*t + 0.5*a*t^2

