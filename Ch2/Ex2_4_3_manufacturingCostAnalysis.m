% Table 2.4–2 shows the hourly cost of four types of manufacturing processes. It also shows
% the number of hours required of each process to produce three different products. Use
% matrices and MATLAB to solve the following.

hourlyCost = [10,12,14,9];
hrsProd1 = [6,2,3,4];
hrsProd2 = [5,3,2,0];
hrsProd3 = [4,1,5,3];

% (a) Determine the cost of each process to produce 1 unit of product 1.
processCost1 = hourlyCost.*hrsProd1
% (b) Determine the cost to make 1 unit of each product.
unitCost = hourlyCost*[hrsProd1', hrsProd2', hrsProd3']

% (c) Suppose we produce 10 units of product 1, 5 units of product 2, and 7 units of product 3.
% Compute the total cost.
units = [10,5,7];
totalCost = units*unitCost'