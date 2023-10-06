% The height and speed of a projectile (such as a thrown ball) launched with a speed of v0
% at an angle A to the horizontal are given by 
%
% h(t) = v0*t*sin(A) - 0.5*g*t^2
% v(t) = sqrt(v0^2 - 2*v0*g*t*sin(A) + g^2 * t^2)
%
% where g is the acceleration due to gravity. The projectile will strike the ground when
% h(t) = 0, which gives the time to hit t_hit = 2*(v0/g)*sin(A). Suppose that A = 40 deg,
% v0 = 20m/s, and g = 9.81 m/s^2. 

% Use the MATLAB relational and logical operators to find the times when the height is no
% less than 6 m and the speed is simultaneously no greater than 16 m/s.
% In addition, discuss another approach to obtaining a solution.

v0 = 20;
g = 9.81;
A = 40*pi/180;

t_hit = 2*(v0/g)*sin(A);

% arrays
t = 0:t_hit/100:t_hit;
h = v0*t*sin(A) - 0.5*g*t.^2;
v = sqrt(v0^2 - 2*v0*g*sin(A)*t + g^2*t.^2);

u = find(h >= 6 & v <= 16);

t_1 = (u(1) - 1)*(t_hit/100)
t_2 = u(length(u) - 1)*(t_hit/100)


% graphical method
figure(1)
plot(t,h), xlabel('t (sec)'), ylabel('Height (meters)');

figure(2)
plot(t,v), xlabel('t (sec)'), ylabel('Velocity (m/s)');
