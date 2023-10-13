% Use the results of Example 7.2–1 to estimate how many 20-year-old men are no taller
% than 68 in. How many are within 3 in. of the mean?

mu = 69.3;
s = 1.96;

%How many are no taller than 68?
b1 = 68;
p1 = (1+erf((b1-mu)/(s*sqrt(2))))/2;
fprintf('%.1f %% of 20 year old men are no taller than %f. \n', p1*100, b1);


% How many are within 3 inches of the mean?
a2 = 66.3;
b2 = 72.3;
p2 = (erf((b2-mu)/(s*sqrt(2))) - erf((a2-mu)/(s*sqrt(2))))/2;
fprintf('%.1f %% of 20 year old men are within 3 inches of the mean. \n', p2*100);
