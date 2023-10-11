% The following table gives data on the growth of a certain bacteria population with time.
% Fit an equation to these data.

x_t = 0:19;
y_pop = [6,13,23,33,54,83,118,156,210,282,350, ...
    440,557,685,815,990,1170,1350,1575,1830];

%linear fit
p1 = polyfit(x_t,y_pop,1);

% quadratic fit
p2 = polyfit(x_t,y_pop,2);

% cubic fit
p3 = polyfit(x_t,y_pop,3);

% exponential fit
p4 = polyfit(x_t,log10(y_pop),1);


res1 = polyval(p1,x_t)-y_pop;
res2 = polyval(p2,x_t)-y_pop;
res3 = polyval(p3,x_t)-y_pop;
res4 = 10.^polyval(p4,x_t)-y_pop;


%plot residuals
y_1 = polyval(res1,x_t);
y_2 = polyval(res2,x_t);
y_3 = polyval(res3,x_t);
y_4 = polyval(res4,x_t);

subplot(2,2,1)
plot(x_t,y_1), xlabel('Time (min)'), ...
   ylabel('Residuals(ppm)'), title('linear')

subplot(2,2,2)
plot(x_t,y_2), xlabel('Time (min)'), ...
   ylabel('Residuals(ppm)'), title('Quadratic')

subplot(2,2,3)
plot(x_t,y_3), xlabel('Time (min)'), ...
   ylabel('Residuals(ppm)'), title('Cubic')

subplot(2,2,4)
plot(x_t,y_4), xlabel('Time (min)'), ...
   ylabel('Residuals(ppm)'), title('Exponential')
