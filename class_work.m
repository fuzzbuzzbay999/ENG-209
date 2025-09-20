
g=9.81
h=50:50:600

t=sqrt(2*h./g)

plot(t,h)
title("Time in air vs Height")
xlabel("Time (sec)")
ylabel("Height (m)")

fprintf('%10s\t%10s\n','height(m)','time(s)')

d=[h;t];
fprintf('%10d\t%10.2f\n',d)