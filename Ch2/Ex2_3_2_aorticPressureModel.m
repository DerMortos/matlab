% The following equation is a specific case of one model used to describe the blood
% pressure in the aorta during systole (the period following the closure of the
% heart s aortic valve). The variable t represents time in seconds, and the dimensionless
% variable y represents the pressure difference across the aortic valve, normalized
% by a constant reference pressure

% y = exp(-8*t).*sin(9.7*t+pi/2)

% Plot this function for t <= 0

% Because the sine function sin(9.7*t+pi/2) oscillates with a frequency of
% 9.7 rad/sec, 9.7/2pi = 1.5 Hz ... and thus period is 1/1.5 = 2/3 sec == 0.6667 sec
% t is chosen to be 0.003 to give appox. 200 points per period (200 * .003 = .600)

% The amplitude of the sine wave decays with time because the sine is multiplied by the
% decaying exponential exp(-8*t). The exponential's initial value is e^0 = 1, and it will
% be 2 percent of its initial value at t = 0.5 (because exp(-8*(0.5)) = 0.02).
% Thus we select the upper limit of t to be 0.5. The session is

t = 0:0.003:0.5;
y = exp(-8*t).*sin(9.7*t+pi/2)
plot(t,y), xlabel('t (sec)'), ylabel('Normalized Pressure Difference y(t)')
