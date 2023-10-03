% Table 2.4–1 gives the speed of an aircraft on each leg of a certain trip and the time spent
% on each leg. Compute the miles traveled on each leg and the total miles traveled.

s = [200,250,400,300];
t = [2,5,3,4];

% array multiplication (miles in each leg of the trip
d_ind = s.*t

% matrix multiplication (total miles)
vd_tot = s*t'
