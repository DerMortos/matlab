% A vector x has been obtained from measurements. Suppose we want to consider any data
% value in the range -0.1 < x < 0.1 as being erroneous. We want to remove all such
% elements and replace them with zeros at the end of the array. Develop two ways of doing
% this. An example is given in the table

x = [1.92,0.05,-2.43,-0.02,0.09,0.85,-0.06];
y = [];
z = [];

% using for loop
for i = 1:length(x)
    if abs(x(i)) >= 0.1
        y = [y,x(i)];
    else
        z = [z,x(i)];
    end
end
xnew = [y,zeros(size(z))]

% using find()
y = x(find(abs(x) >= 0.1));
z = zeros(size(find(abs(x) < 0.1)));
xnew2 = [y,z]