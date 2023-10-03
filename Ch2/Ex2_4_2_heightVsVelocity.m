% The maximum height h achieved by an object thrown with a speed at an angle u to the
% horizontal, neglecting drag, is

% h = (v'.^2)*(sind(theta).^2)/(2*g)

% Create a table showing the maximum height for the following values of v and theta:
% The rows in the table should correspond to the speed values, and the columns should correspond to the angles.

v = 10:2:20;
theta = 50:10:80;
g = 9.8;

h = (v'.^2)*(sind(theta).^2)/(2*g);
table = [0, theta;v',h]