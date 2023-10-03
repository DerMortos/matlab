% Suppose you want to create a 2 3 2 cell array A, whose cells contain the location, the
% date, the air temperature (measured at 8 A.M., 12 noon, and 5 P.M.), and the water
% temperatures measured at the same time in three different points in a pond. The cell array
% looks like the following

A(1,1) = {'Walden Pond'};
A(1,2) = {'June 13, 1997'};
A(2,1) = {[60,72,65]};
A(2,2) = {[55,57,56; 54,56,55; 52,55,53]};

% different outputs
% A
celldisp(A)