% Statistical analysis of data on human proportions is required in many engineering
% applications. For example, designers of submarine crew quarters need to know how small
% they can make bunk lengths without eliminating a large percentage of prospective crew
% members. Use MATLAB to estimate the mean and standard deviation for the height data
% given in Table 7.2–1

% Absolute frequency data
y_abs = [1,0,0,0,2,4,5,4,8,11,12,10,9,8,7,5,4,4,3,1,1,0,1];
binwidth = 0.5;
bins = [64:binwidth:75];
y_raw = [];

for i = 1:length(y_abs)
    if y_abs(i)>0
        new = bins(i)*ones(1,y_abs(i));
    else
        new = [];
    end
    y_raw = [y_raw,new];
end

%Compute the mean and std dev
mu = mean(y_raw), sigma = std(y_raw)
