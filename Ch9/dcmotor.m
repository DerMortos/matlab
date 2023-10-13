R = 0.6;
L = 0.002;
c = 0;
K_T = 0.04;
K_e = 0.04;
I = 6e-5;

A = [-R/L, -K_e/L; K_T/I, -c/I];
B = [1/L; 0]; C = [0,1]; D = [0];

sys = ss(A,B,C,D);
Time_constants = -1./real(eig(A))
time = 0:0.0001:0.6;
k = 0;
for t = 0:0.0001:0.6
    k = k+1;
    if t < 0.1
        v(k) = 100*t;
    elseif t <= 0.4
        v(k) = 10;
    elseif t <= 0.5
        v(k) = -100*(t-0.4) + 10;
    else
        v(k) = 0;
    end
end
[y,t] = lsim(sys, v, time);
subplot(2,1,1), plot(time,v)
subplot(2,1,2), plot(time,y)