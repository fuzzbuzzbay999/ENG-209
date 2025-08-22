%initialize variables
a=0;
b=0;

%make a function that finds the hypotenuse from two lengths, in the form of findlen(float,float)
function findlen(a,b)
  %calculate the hypotenuse and output its return
  sqrt(a^2+b^2)
end

%call findlen
findlen(12,12);
plot(11,2,'go')
12-12