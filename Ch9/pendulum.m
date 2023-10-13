function xdot = pendulum(t,x)
g = 9.81;
L = 1;
xdot = [x(2); (-g/L)*sin(x(1))];