% Compute collge enrollment

%Model's coefficients
C = [0.1,0,0,0; 0.75,0.05,0,0; 0,0.9,0.05,0; 0,0,0.9,0.5];

% Initial enrollment vector
x = [500; 400; 300; 280];

% Initial admissions and transfers
a(1) = 1000;
d(1) = 200;

% E is the 4 x 10 enrollment matrix
E(:,1) = x;

% for years 2 - 10
for k = 2:10
    if sum(x) <= 4000
        % increase admissions and transfers
        a(k) = 900 + 100*k;
        d(k) = 150 +50*k;
    else
        % hold admissions and transfers constant
        a(k) = a(k-1);
        d(k) = d(k-1);
    end

    % update enrollment matrix
    b = [a(k); d(k); 0; 0];
    x = C*x + b;
    E(:,k) = x;
end

plot(E'), hold, plot(E(1,:),'o'), plot(E(2,:),'+'), plot(E(3,:),'*'), plot(E(4,:),'x'),...
xlabel('Year'), ylabel('Number of Students'), gtext('Fresh'), gtext('Soph'), gtext('Jr'),gtext('Sr'),...
title('Enrollment as a Function of Time')