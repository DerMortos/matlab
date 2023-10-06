% Figure 3.2–3 shows the cross section of an irrigation channel. A preliminary analysis has
% shown that the cross-sectional area of the channel should be 100 ft^2 to carry the desired
% water flow rate. To minimize the cost of concrete used to line the channel, we want
% to minimize the length of the channelts perimeter. Find the values of d, b, and theta that
% minimize this length.

% Perimiter length L in terms of base, depth and angle thea
% L = b + (2*d)/sin(theta)
% Area of trapezoidal cross section
% 100 = d*b + (d^2/tan(theta))

% b = (1/d)*(100-(d^2/tan(theta)))
% L = (100/d)-(d/tan(theta))+(2*d/sin(theta))

% find the values to minimize L
function L = Ex3_2_1_OptimizationOfAnIrrigationChannel(x)
L = 100./x(1) - x(1)./tan(x(2)) + 2*x(1)./sin(x(2));

% run following line in console guessing d=20 and theta = 1
% x = fminsearch(@Ex3_2_1_OptimizationOfAnIrrigationChannel, [20,1])

% x will return d and theta
