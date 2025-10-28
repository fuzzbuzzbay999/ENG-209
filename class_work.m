h=0.1;
x = 0:h:3;
y=exp(-x.^2)
for i = 1:length(x)-1
    bd(i)=(y(i+1)-y(i))/h
end

fd = (y(2:end)-y(1:end-1))