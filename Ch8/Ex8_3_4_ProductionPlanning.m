% The following table shows how many hours reactors A and B need to produce 1 ton each
% of the chemical products 1, 2, and 3. The two reactors are available for 40 and 30 hr per
% week, respectively. Determine how many tons of each product can be produced each
% week.

A = [5,3,3; 3,3,4];
b = [40;30];
rA = rank(A);
rb = rank([A, b]);



if rA == rb
    fprintf('Rank A and Rank[Ab] are equal. \n');
    % reduced echelon form
    rref([A,b])
    % as an example, suppose we make a profit of $400, $600, and $100 per ton for
    % products 1, 2, and 3, respectively. Then our total profit P is
    P = 400*x + 600*y +100*z;
    
else
    rA ~= rb
    fprintf('Rank A and rank[Ab] are not equal. \n');
end