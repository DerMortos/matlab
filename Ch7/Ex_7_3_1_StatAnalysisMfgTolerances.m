% Suppose you must cut a triangular piece off the corner of a square plate by measuring the
% distances x and y from the corner (see Figure 7.3–1). The desired value of x is 10 in., and
% the desired value of u is 20 degrees. This requires that y = 3.64 in. We are told that measurements
% of x and y are normally distributed with means of 10 and 3.64, respectively, with a
% standard deviation equal to 0.05 in. Determine the standard deviation of theta and plot the
% relative frequency histogram for theta.

sd = 0.05; 
n = 8000;

% probability distribution
x = 10 + sd*randn(1,n);
y = 3.64 + sd*randn(1,n);
theta = (180/pi)*atan(y./x);
mean_theta = mean(theta)
sigma_theta = std(theta)


xp = 19:0.1:21;
z = histogram(theta,xp);
yp = z/n;
bar(xp,yp),xlabel('Theta (degrees)'), ylabel('Relative Frequency')