A = [2,-4,5;-4,-2,3;2,6,-8];
b = [-4;4;0];

rA = rank(A);
rb = rank(b);
fprintf('Rank of A is %d. Rank of b is %d. \n',rA, rb);

% reduced echelon form
Cd = rref([A,b]);
%Cx = d
fprintf('x1 = 0.1x3 - 1.2, \nx2 = 1.3x3 + 0.4 \n') ;
