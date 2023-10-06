% Write a script file to determine the number of terms required for the sum of the series
% 5k^2 - 2k, k = 1, 2, 3, . . . , to exceed 10 000.
% What is the sum for this many terms?

tot = 0;
k = k+1;
while tot < 1e+4
    k = k+1;
    tot = 5*k^2 - 2*k + tot;
end
disp('The number of terms is:')
disp(k)
disp('The sum is')
disp(tot)