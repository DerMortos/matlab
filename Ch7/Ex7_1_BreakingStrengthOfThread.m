% To ensure proper quality control, a thread manufacturer selects samples and tests them for
% breaking strength. Suppose that 20 thread samples are pulled until they break, and the
% breaking force is measured in newtons rounded off to integer values. The breaking force
% values recorded were 92, 94, 93, 96, 93, 94, 95, 96, 91, 93, 95, 95, 95, 92, 93, 94, 91, 94,
% 92, and 93. Plot the histogram of the data

y = [92,94,93,96,93,94,95,96,91,93,95,95,95,92,93,94,91,94,92,93];
x_bins = 91:96;


hist(y,x_bins), axis([90 97 0 6]), xlabel('Thread Strength (N)'), ...
    ylabel('Absolute Frequency'), title('Absolute Frequency Histogram for 20 Tests')

% Thread strength data for 100 tests.
y = [91*ones(1,13),92*ones(1,15),93*ones(1,22),94*ones(1,19),95*ones(1,17),96*ones(1,14)];
hist(y,x_bins), xlabel('Thread Strength (N)'), ... 
    ylabel('Absolute Frequency'), title('Absolute Frequency Histogram for 100 Tests')

% Relative frequency histogram using the bar function.
tests = 100;
y = [13,15,22,19,17,14]/tests;
bar(x_bins,y), xlabel('Thread Strength (N).'), ...
    ylabel('Relative Frequency'), title('Relative Frequency Histogram for 100 Tests')