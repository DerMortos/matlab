% Table 2.4–3 shows the costs associated with a certain product, and Table 2.4–4 shows the
% production volume for the four quarters of the business year. Use MATLAB to

U = [6,2,1; 2,5,4; 4,3,2; 9,7,3];
P = [10,12,13,15; 8,7,6,4; 12,10,13,9; 6,4,11,5];

% find the quarterly costs for materials, labor, and transportation
C = U'*P

% Each column in C represents one quarter. The total first-quarter cost is the sum of the elements
% in the first column, the second-quarter cost is the sum of the second column, and so on

% and the total quarterly costs.
Quarterly_Costs = sum(C)

% the total material, labor, and transportation costs for the year
CategoryCost = sum(C')