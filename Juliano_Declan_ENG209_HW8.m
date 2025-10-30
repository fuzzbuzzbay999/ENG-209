%question 1

h=0.01
x=0:h:6

f = @(x) (x.^3).*exp(-x)
fx = f(x)


fwdDiff = (fx(2:end)-fx(1:end-1))/h
fwdDiffx = x(1:end-1)
centDiff = (fx(3:end)-fx(1:end-2))/(2*h)
centDiffx = x(2:end-1)


h4Diff = (-fx(5:end)+8*fx(4:end-1)-8*fx(2:end-3)+fx(1:end-4))/(12*h)
h4Diffx = (x(3:end-2))

actDiff = @(x)(3*x.^2).*exp(-x)+(x.^3).*-exp(-x)
actDiffy = actDiff(x)
figure(1)
clf
hold on
plot(fwdDiffx,fwdDiff,'b')
plot(centDiffx,centDiff,'g')
plot(h4Diffx,h4Diff,'r')
plot(x,actDiffy,'w')
legend('forward','center','4th order','exact')


% question 5
f= @(x) log(x)
a = 1;
b = 4;
h = 0.5

%suminazation of simpsons rule()
% Make a vector of coef 1,4,2,4,2...4,1
x=a:h:b;
y=f(x);
N = length(x);
%lft hand rieman sum
left=um(y(1:end-1)*h)



% Simpson rule
coeffs = ones(1,N);
coeffs(2:2:length(coeffs)-1)=4;
coeffs(3:2:length(coeffs)-2)=2;
simp=h/3*sum(coeffs.*f(x))

%trapazoidal
coeffs = ones(1,N)
coeffs(2:end-1)=2
trap = h/2*sum(coeffs.*y)


figure(2)
clf
hold on
plot(x,y)
plot(x,y,'o')
