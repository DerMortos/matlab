% Use the left division method to solve the following set.
A = [3,2,-9; -9,-5,2; 6,7,3];
x = rank(A);

b = [-65; 16; 5];
x = A\b

fprintf('Vector A is: [');
fprintf('%g, ', A(1:end-1));
fprintf('%g]\n', A(end));
% alternate implementation
%fmt = ['The vector P is: [', repmat('%g, ', 1, numel(A)-1), '%g]\n'];
%print(fmt,A)

fprintf('The solution for vector A is x1 = %.1f, x2 = %.1f and x3 = %.1f',x(1), x(2), x(3))