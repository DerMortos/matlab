% Write a script file to compute the sum of the first 15 terms in the series 
% 5k^2 - 2k, k = 1, 2, 3, . . . , 15.

tot = 0;
for k = 1:15
    tot = 5*k^2 - 2*k + tot;
end
disp("the sum for 15 terms is:")
disp(tot)