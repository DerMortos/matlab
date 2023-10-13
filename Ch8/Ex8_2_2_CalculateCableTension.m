% A mass m is suspended by three cables attached at three points B, C, and D, as shown in
% Figure 8.2–1. Let T1, T2, and T3 be the tensions in the three cables AB,AC, and AD, respectively. 
% If the mass m is stationary, the sum of the tension components in the x, in the y, and
% in the z directions must each be zero. 
% 
% T1/sqrt(35) - 3T2/sqrt(34) + T3/sqrt(42) = 0
% 3T1/sqrt(35) - 4T3/sqrt(42) = 0
% 5T1/sqrt(35) + 5T2/sqrt(34) +5T3/sqrt(42) - mg = 0
% 
% 
% Determine T1, T2, and T3 in terms of an unspecified value of the weight mg.
% 
s34 = sqrt(34);
s35 = sqrt(35);
s42 = sqrt(42);

A1 = [1/s35, -3/s34, 1/s42];
A2 = [3/s35, 0, -4/s42];
A3 = [5/s35, 5/s34, 5/s42];
A = [A1; A2; A3];
b = [0; 0; 1];

rA = rank(A);
rb = rank([A, b]);
if rA == rb
    fprintf('Rank A and Rank[Ab] are equal. \n');
    T = A\b;
    fprintf('T1 = %g, T2 = %g and T3 = %g',T(1), T(2), T(3));

else
    rA ~= rb
    fprintf('Rank A and rank[Ab] are not equal.');
end