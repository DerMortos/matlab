% Buildings designed to withstand earthquakes must have natural frequencies of vibration
% that are not close to the oscillation frequency of the ground motion. A building’s natural
% frequencies are determined primarily by the masses of its floors and by the lateral stiffness
% of its supporting columns (which act as horizontal springs). We can find these
% frequencies by solving for the roots of a polynomial called the structure’s

% -->characteristic polynomial<-- (characteristic polynomials are discussed further in Chapter 9).

% Figure 2.5–1 shows the exaggerated motion of the floors of a three-story building. For
% such a building, if each floor has a mass m and the columns have stiffness k, the
% polynomial is
% 
% (alpha - f^2)[(2*alpha - f^2)^2 - alpha^2] + alpha^2*f*2 - 2*alpha^3
% 
% where alpha = k/4mpi^2 (models such as these are discussed in greater detail in [Palm,
% 2010]). The building’s natural frequencies in cycles per second are the positive roots of
% this equation. Find the building’s natural frequencies in cycles per second for the case
% where m = 1000 kg and k = 5*10^6 N/m

% The characteristic polynomial has the form

% p_1(p_2^2 - alpha^2) + p_3 = 0
%where

% p_1 = alpha - f^2
% p_2 = 2*alpha - f^2
% p_3 = alpha^2*f*2 - 2*alpha^3

k = 5e+6;
m = 1000;
alpha = k/(4*m*pi^2);

p1 = [-1,0,alpha];
p2 = [-1,0,2*alpha];
p3 = [alpha^2, 0, -2*alpha^3];
p4 = conv(p2,p2) - [0,0,0,0,alpha^2];
p5 = conv(p1, p4);
p6 = p5 + [0,0,0,0,p3];
r = roots(p6)
