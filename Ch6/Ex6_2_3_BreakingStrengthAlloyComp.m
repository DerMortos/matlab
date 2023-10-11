% We want to predict the strength of metal parts as a function of their alloy composition.
% The tension force y required to break a steel bar is a function of the percentage x1 and x2
% of each of two alloying elements present in the metal. The following table gives some
% pertinent data. Obtain a linear model y 5 a0 1 a1x1 + a2x2 to describe the relationship.

x1 = (0:3)';
x2 = [5,7,8,11]';
y = [7.1, 19.2, 31, 45]';
X = [ones(size(x1)), x1, x2];
a = X\y
yp = X*a;
MaxPercentError = 100*max(abs((yp-y)./y))