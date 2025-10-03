%Juliano_Declan_ENG209_HW5
%10/1/2025
%ENG 209, HW 5, exercises:

%***************************************question 3********************************
%{
Create a function that has an input of a radius and height that calculates the volume and surface area of a cylinder.
then display the data in nice columns
%}

%function volumeAndSurfCylinder(radius,height)
function [vol,surfArea]=volumeAndSurfCylinder(r,h)
    vol = pi * r .^2 .*h;
    surfArea = 2 * pi *r .*h+2*pi*r.^2;
end

rad = [20:20:200];  %radius (in)
h = [25:5:70];      %height (in)

[vol, surfArea] = volumeAndSurfCylinder(rad,h);     %call the function for rad and h
data = [rad;h;vol;surfArea];    %combine the values vertically to display later

%display the data
fprintf('%15s\t%15s\t%20s\t%20s\n','Radius (in)','Height (in)','Volume (in^3)','Surface area (in^2)')
fprintf('%15s\t%15s\t%20s\t%20s\n','-----------','-----------','-------------','-------------------')
fprintf('%15i\t%15i\t%20.1f\t%20.1f\n',data)

%***************************************question 5********************************
%{
Write a function that estimates the first two derivatives of an entered function with a point at and a distance from the point.
%}

%funciton EstDerivative(function,x,h)
function [div1,div2]=EstDerivative(Funct,x,h)
    
    %calculate the first derivative
    div1 = (Funct(x+h)-Funct(x-h))/(2*h);
    %calculate the second derivative
    div2 = (Funct(x+h)-2*Funct(x)+Funct(x-h))/(h^2);
    
    %display the estimates and point
    fprintf('Estimation of the first derivative is %.4f and the second derivative is %.4f, at x = %.4f with a distance of h = %.4f\n',div1,div2,x,h)
end

%EstDerivative of sin at 7Pi/4 and 0.01 away
EstDerivative(@sin,7*pi/4,0.01);

%f2(x)=x^2*e^-x
function y = f2(x)
y = x^2*exp(-x);
end

%EstDerivative of f2 at 2.5 and 0.01 away
EstDerivative(@f2,2.5,0.01);

%f3(x)=ln(x)/x
function y = f3(x)
y = (log(x)/x);
end

%EstDerivative of f3 at 1.75 and 0.01 away
EstDerivative(@f3,1.75,0.01);

%***************************************question 6********************************
%{
Calcualte  𝑦 = cos^2(𝑥) for x-values from 0 to 𝜋.
Using a for loop and by vectorized computation
%}

x=linspace(0,pi,100);   %x vector

%for loop
for i = [1:length(x)]
    y(i) = cos(x(i))^2;
end

%vectorized
y = cos(x).^2;