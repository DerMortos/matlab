% r = p/(1-eps*cos(theta))

% describes the polar coordinates of an orbit measured from one of the orbitrs two focal
% points. For objects in orbit around the sun, the sun is at one of the focal points. Thus
% r is the distance of the object from the sun. The parameters p and eps determine the size
% of the orbit and its eccentricity, respectively. Obtain the polar plot that represents an
% orbit having eps = 0.5 and p = 2 AU (AU stands for "astronomical unit"; 1 AU is the
% mean distance from the sun to Earth). How far away does the orbiting object get from
% the sun? How close does it approach Earth’s orbit?

eps = 0.5;
p = 2;
theta = 0: pi/90 : 2*pi;

r = p./(1-eps*cos(theta));
polar(theta,r), title('Orbital Eccentricity = 0.5')