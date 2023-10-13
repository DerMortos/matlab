% Determine the forces in the three equally spaced supports that hold up a light fixture.
% The supports are 5 ft apart. The fixture weighs 400 lb, and its mass center is 4 ft from the
% right end. Obtain the solution using the MATLAB left-division method and the
% pseudoinverse method

A = [1,1,1; 10,5,0];
b = [400;1600];
rA = rank(A);
rb = rank([A, b]);

if rA == rb
    fprintf('Rank A and Rank[Ab] are equal. \n');
    %left division operation
    T = A\b;
    fprintf('T1 = %g, T2 = %g and T3 = %g\n',T(1), T(2), T(3));

    %minimuim norm solution
    T1 = pinv(A)*b;
    fprintf('T1 = %g, T2 = %g and T3 = %g \n',T1(1), T1(2), T1(3));
else
    rA ~= rb
    fprintf('Rank A and rank[Ab] are not equal. \n');
end