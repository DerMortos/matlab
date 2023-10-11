% Engineers developing instrumentation often need to obtain a response curve that describes
% how fast the instrument can make measurements. The theory of instrumentation shows that
% often the response can be described by one of the following equations, where v is the voltage
% output and t is time. In both models, the voltage reaches a steady-state constant value as
% t tends towards infinity, and T is the time required for the voltage to equal 95 percent of
% the steady-state value.
% 
% y(t) = a1 + a2*e^-3t/T                  (first- order model)
% y(t) = a1 + a2*e^-3t/T + a3*t*e^-3t/T   (second- order model)
% 
% The following data give the output voltage of a certain device as a function of time.
% Obtain a function that describes these data

% first order
t = [0,0.3,0.8,1.1,1.6,2.3,3];
y = [0,0.6,1.28,1.5,1.7,1.75,1.8];
X = [ones(size(t)); exp(-t)]';
a = X\y'

% second order
X = [ones(size(t));exp(-t); t.*exp(-t)]';
a = X\y'