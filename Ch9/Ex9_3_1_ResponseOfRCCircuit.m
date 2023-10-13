% The model of the RC circuit shown in Figure 9.3–1 can be found from Kirchhoff’s
% voltage law and conservation of charge. It is RCy + y = v(t). Suppose the value of RC
% is 0.1 s. Use a numerical method to find the free response for the case where the
% applied voltage yis zero and the initial capacitor voltage is y(0) = 2 V. Compare the
% results with the analytical solution, which is y(t) = 2e–10t

[t, y] = ode45(@RC_circuit, [0, 0.5], 2);
y_true = 2*exp(-10*t);
plot(t,y,'o',t,y_true), xlabel('Time(s)'), ylabel('Capacitor Voltage')