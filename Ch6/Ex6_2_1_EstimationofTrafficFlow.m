% The following data give the number of vehicles (in millions) crossing a bridge each year for 
% 10 years. Fit a cubic polynomial to the data and use the t to estimate the flow in the year 2010

year = 2000:2009;
x = year - 2000;

vehFlow = [2.1, 3.4, 4.5, 5.3, 6.2, 6.6, 6.8, 7, 7.4, 7.8];

p = polyfit(x,vehFlow,3)
J = sum((polyval(p,x)-vehFlow).^2);
S = sum((vehFlow-mean(vehFlow)).^2);
r2 = 1 - J/S

% estimate for 2010
T_2010 = polyval(p,10);
fprintf('The estimated traffic flow in 2010 is %.2f millions of vehicles', T_2010)