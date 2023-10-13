% Solve the following equations, using the matrix inverse
A = [2,9;3,-4];
b = [5;7];
x = inv(A)*b;

fprintf('The solution is x1 = %.2f, and x2 = %.2f',x(1),x(2));