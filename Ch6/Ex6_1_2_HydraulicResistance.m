% A 15-cup coffee pot (see Figure 6.1–4) was placed under a water faucet and filled
% to the 15-cup line. With the outlet valve open, the faucet’s flow rate was adjusted until
% the water level remained constant at 15 cups, and the time for one cup to flow out of the
% pot was measured. This experiment was repeated with the pot lled to the various levels shown in
% the following table
% 
% Liquid volume V (cups)      Time to fill 1 cup t (sec)
%         15                  6
%         12                  7
%         9                   8
%         6                   9

cups = [6,9,12,15];
meas_times = [9,8,7,6];
meas_flow = 1./meas_times;

% (a) Use the preceding data to obtain a relation between the flow rate and the
% number of cups in the pot. 
p = polyfit(log10(cups),log10(meas_flow),1);
coeffs = [p(1),10^p(2)];
m = coeffs(1)
b = coeffs(2)

%checking fit
x = 6:0.01:40;
y = b*x.^m;
subplot(2,1,1)
loglog(x,y,cups,meas_flow,'o'),grid, xlabel('Volume (cups)'), ...
    ylabel('Flow Rate (cups/sec)'), axis([5 15 0.1 0.3])

% (b) The manufacturer wants to make a 36-cup pot using the same outlet valve but is concerned
% that a cup will fill too quickly , causing spills. Extrapolate the relation developed in
% part (a) and predict how long it will take to fill one cup when the pot contains 36 cups
subplot(2,1,2)
plot(x,1./y,cups,meas_times,'o'), grid, xlabel('Volume(cups)'), ...
    ylabel('Fill Time per Cup (sec)'), axis([5 36 0 10])

fill_time = 1/(b*36^m);
fprintf('The predicted fill time is %.2f seconds.', fill_time);