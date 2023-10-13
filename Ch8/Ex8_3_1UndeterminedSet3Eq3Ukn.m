% Show that the following set does not have a unique solution. How many of the unknowns
% will be undetermined? Interpret the results given by the left division method.

A = [2,-4,5;-4,-2,3;2,6,-8];
b = [-4;4;0];

rA = rank(A);
rb = rank(b);
fprintf('Rank of A is %d. Rank of b is %d. \n',rA, rb);

% will not calculate since 3unkowns and rank is only 2
%x = A/b