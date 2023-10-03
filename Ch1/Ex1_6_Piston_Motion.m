% Figure 1.6–2a shows a piston, connecting rod, and crank for an internal combustion engine.
% When combustion occurs, it pushes the piston down. This motion causes the connecting rod 
% to turn the crank, which causes the crankshaft to rotate. We want to develop a MATLAB program
% to compute and plot the distance d traveled by the piston as a function of the angle A, 
% for given values of lengths L1 and L2. Such a plot would help the engineers designing the
% engine to select appropriate values for lengths L1 and L2. 
% We are told that typical values for these lengths are L1 = 1 ft and L2 = 0.5 ft. Because
% the mechanism s motion is symmetrical about A = 0, we need consider only angles in the
% range 0 <= A <= 180°. Figure 1.6–2b shows the geometry of the motion. From this figure we
% can use trigonometry to write the following expression for d:
% (see 1.6–2)
% Thus to compute d given the lengths L1 and L2 and the angle A, we must first
% determine the angle B. We can do so using the law of sines, as follows:
%   sin(A)/L1 = sin(b)/l2
% Solve this for B:

L1 = 1;
L2 = 0.5;
R = L2/L1;

A_d = 0:0.5:180;    % create array of numbers from 0:180 in increments of .5
A_r = A_d*(pi/180); % convert values to radians

B = asin(R*sin(A_r));
d = L1*cos(B)+L2*cos(A_r);
plot(A_d,d), xlabel('A (degrees)'), ylabel('d (feet)'), grid

%tests
% L1 <= L2
% when A_d = 0 (90 deg in original reference) triangle collapses
d(1) == L1 + L2
% when A_d = 180 (270 deg in original reference) triangle collapses
d(361) == L1 - L2