b="sdfadss"
fprintf(' You owe %1.2f \n please check your bill. \n',b)
filetoprint=rand(5,3)
sales = load ("AutoSalesUS_2001_2022.txt");
years = sales(:,1)
amount = sales(:,2)
plot(years,amount)
grid on
legend
colorbar
title("car sales v years")
xlabel("years")
ylabel("amount")