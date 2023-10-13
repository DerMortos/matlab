% The pendulum shown in Figure 9.4–1 consists of a concentrated mass m attached to a rod
% whose mass is small compared to m. The rod’s length is L. The equation of motion for this
% pendulum is
% 
% theta + g*theta/L = 0
% 
% Suppose that L = 1 m and g = 9.81 m/s2. Use MATLAB to solve this equation for theta(t) for
% two cases: theta(0) = 0.5 rad and theta(0) = 0.8p rad. In both cases Discuss how to
% check the accuracy of the results.

%First rewrite the pendulum equation (9.4–3) as two first-order equations. To do
% this, let x1 = u and x2 = . Thus

[ta, xa] = ode45(@pendulum, [0,5], [0.5, 0]);
[tb, xb] = ode45(@pendulum, [0,5], [0.8*pi, 0]);
plot(ta, xa(:,1), tb,xb(:,1)), xlabel ('Time (s)'), ylabel('Angle (rad)'), gtext('Case 1'), gtext('Case 2')

% to obtain the pendulum response for different lengths L or different gravitational accelerations g
% use a nested function pendula


