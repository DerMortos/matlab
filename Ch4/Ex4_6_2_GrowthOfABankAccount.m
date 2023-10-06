% Determine how long it will take to accumulate at least $10 000 in a bank account if you
% deposit $500 initially and $500 at the end of each year, if the account pays 5 percent annual interest

amount = 500;
i = 0;
while amount < 1e+4
    i = i+1;
    amount = amount*1.05 +500;
end
disp('The final amount is:')
format shortG
disp(amount)
disp('The number of years is:')
disp(i)