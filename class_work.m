
function [amount,double_time]=Future_amount(n,r,t)
r = r / 100 ;
amount = n.*exp(r.*t);
double_time = log(2)/r;
end

qfa = @(x) x.^2-9

function [y]=fun(x)
    y=x.^2-9
end
%{
quad(@fun,-3,3)
x=linspace(-5,5)
y=x
[X,Y]=meshgrid(x,y)
z=fun(X)+fun(y)
surf(X,Y,z)

%}
o=0
e=0
for i=[1:1000000]
a = randi([0,1]);
if mod(a,2)==0
    %disp('even')
    e=e+1;
else 
    %disp('odd')
    o=o+1;
end

end
fprintf('%i even %i odd',e,o)
o/e*100

h=0.01
x=[h]
a=0
b=1
N=(b-a)/h


a=randi([1,10],1,25);
a=1:25
y=0
for i=[2:2:length(a)]
y(i/2)=a(i);
end
y


z=[]

for i = [1:5]
    for j = [1:4]
    z(i,j)=2*i+3*j;
    end
end
z

x=(0:0.1:10)

for i = [1:length(x)]
if(x(i)>=0 & x(i)<5)
y(i)=x(i)+1
elseif(x(i)>=5&x(i)<=10)
y(i)=(x(i)-5)^2+6
else
    y(i)=0
end
end

plot(x,y,'r')

y=0
y=(x>=0&x<5).*(x+1)+(x>=5&x<=10).*((x-5).^2+6)
plot(x,y)
