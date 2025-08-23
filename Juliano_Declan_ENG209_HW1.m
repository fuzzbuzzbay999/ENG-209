% Juliano_Declan_ENG209_HW1.m
                            %question 1
sind(60)                                                %i                        
sin(60)                                                 %ii             
(3+4)/5                                                 %iii                        
7/(6+5)                                                 %iv
log(100)                                                %v
log10(100)                                              %vi
2^(3+7)                                                 %vii
exp(10)                                                 %viii
tan(pi/3)/sin(0.4*pi)+tand(60)^2                        %ix
14+(64^1/3)/(5.3*4.7)+(2.1^4-4.7)/(35-sqrt(4.5))        %x

                            %question 2
t=5.3;
0.5*t^3-3.1*t^2+0.56*t-0.76                 %evaluate polynomial at t=5.3       

x=4.1;      
y=5.0;
z=2.3;
(z-y)^3/sqrt(x+y-z)+x^2*y^3*sqrt(z)         %evaluate expression with x=4.1, y=5.0, z=2.3

                            %question 3
rand(1)         %generate a random number between 0 and 1
4+rand(1)       %generate a random number between 4 and 5
2*rand(1)       %generate a random number between 0 and 2
5+randi(10)     %generate a random integer between 5 and 15

                            %question 4

                            %question 5%

%function to calculate time in air from height
function time_in_air(h)
    %calculate time in air from height
   t=sqrt((2*h)/9.81);
   %output time in air
  disp([num2str(t),' seconds'])
end

%call time_in_air for a height of 650m
disp('time in air for 650m:')
time_in_air(650);                                                           %(i)

%call time_in_air for different heights
%heights from 50 to 600 in increments of 50
h=50:50:600;

%loop through heights and call time_in_air
for i=1:length(h)                                                           %(ii)
    %convert current height at index i to string and display
    disp(['time in air for ',num2str(h(i)),'m:'])
    %call the function with the current height
    time_in_air(h(i));
end

                            %question 6

G = -6.674e-11;             %gravitational constant m3/kg/s2
M1 = 5.972e24;              %mass of Earth kg
M2 = 7.348e22;              %mass of Moon kg
R = 3.844e8;                %distance between Earth and Moon m
F = G * (M1 * M2) / R^2;    %calculate gravitational force
disp(['Gravitational force between Earth and Moon: ', num2str(F), ' N']);   %display result

                            %question 7

a = 9;      %short side a
b = 12;     %short side b
%calculate the hypotenuse and output its return
c = sqrt(a^2 + b^2);
disp(['The two short sides have lengths of: ', num2str(a), ' and ', num2str(b)]);   %display the sides
disp(['The hypotenuse has a length of ', num2str(c)]);                              %display the hypotenuse

av = [3,5,6,7,8,9,9,10,11,12];          %initialize array av
bv = [4,12,8,24,15,12,40,24,60,16];     %initialize array bv
%loop through arrays av and bv
c = sqrt(av.^2 + bv.^2);
disp(['The short sides have lengths ', num2str(av)])                    %display the sides
disp(['and their coresponding sides lengths are ', num2str(bv)]);       
disp(['The coresponding hypotenuses have lengths of ', num2str(c)]);    %display the hypotenuse

c_test = [4,13,8,25,16,12,40,25,64,16];  %initialize array c_test
%check if the calculated hypotenuses match the expected values
for i = 1:length(c)                     %loop through c
    match(i) = c(i) == c_test(i);       %compare c and c_test and store result either 1 or 0
end    
disp(['the result of the compairison is: ', num2str(match)])   %display the results of the comparison
                           