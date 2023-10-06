% Plot the function
% used index i rather than MATLAB's k

dx = 35/300;
x = -5:dx:30;
for i = 1:length(x)
    if x(i) >= 9
        y(i) = 15*sqrt(4*x(i)) + 10;
    elseif x(i) >= 0
        y(i) = 10*x(i) + 10;
    else
        y(i) = 10;
    end
end

plot(x,y), xlabel('x'), ylabel('y')