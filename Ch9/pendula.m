function pendula
g = 9.81; 
L = 0.75; % First case.
tF = 6*pi*sqrt(L/g); % Approximately 3 periods.
[t1, x1] = ode45(@pendulum, [0,tF], [0.4, 0]);

g = 1.63;
L = 2.5; % Second case.
tF = 6*pi*sqrt(L/g); % Approximately 3 periods.
[t2, x2] = ode45(@pendulum, [0,tF], [0.2, 0]);
plot(t1, x1(:,1), t2, x2(:,1)), xlabel ('time (s)'), ylabel ('\theta (rad)')
% Nested function.
    function xdot = pendulum(t,x)
        xdot = [x(2); (-g/L)*sin(x(1))];
    end
end