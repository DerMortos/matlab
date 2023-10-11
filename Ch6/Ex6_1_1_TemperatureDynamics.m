% The temperature of coffee cooling in a porcelain mug at room temperature (68F) was
% measured at various times. The data follow.
% Time t(sec)    Temperature T(F)
% 0               145
% 620             130
% 2266            103
% 3482            90
% 
% Develop a model of the coffee’s temperature as a function of time, and use the model to
% estimate how long it took the temperature to reach 120F.
time = [0,620,2266,3482];
temp = [145,130,103,90];

temp = temp - 68;
%rectilinear plot
subplot(2,2,1)
plot(time,temp,time,temp,'o'), xlabel('Time (sec)'), ...
    ylabel('Relative Temperature (deg F)'), title('rectilinear')

%semilog scale
subplot(2,2,2)
semilogy(time,temp,time,temp,'o'), xlabel('Time (sec)'), ...
    ylabel('Relative Temperature (deg F)'), title('semilogy')

% fitting a straight line to the transformed data for T = 68 +b(10)^mt
p = polyfit(time,log10(temp),1);
m = p(1)
b = 10^p(2)

% computing the time to reach 120 degrees
t_120 = (log10(120-68) - log10(b))/m;

% plotting new curve
t = 0:10:4000;
T = 68+b*10.^(m*t);
subplot(2,2,3)
semilogy(t,T-68,time,temp,'o',t_120,120-68,'+'), xlabel('Time (sec)'), ...
    ylabel('Relative Temperature (deg F)')

subplot(2,2,4)
plot(t,T,time,temp+68,'o',t_120,120,'+'), xlabel('Time (sec)'), ...
    ylabel('Temperature (deg F)')

fprintf('The time to reach 120 degrees is %.2f sec',t_120)