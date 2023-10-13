% An accelerometer is used in aircraft, rockets, and other vehicles to estimate the vehicle’s
% velocity and displacement. The accelerometer integrates the acceleration signal to produce
% an estimate of the velocity, and it integrates the velocity estimate to produce an estimate
% of displacement. Suppose the vehicle starts from rest at time t = 0, and its measured
% acceleration is given in the following table.
% 
% (a) Estimate the velocity y after 10 s.
t = 0:10;
a = [0,2,4,7,11,17,24,32,41,48,51];
v = trapz(t,a);

fprintf('Velocity after %d seconds is %.2f m/s \n',10,v);

% (b) Estimate the velocity at times t 5 1, 2, . . . , 10 s
v(1) = 0;
for k = 1:10
    v(k+1) = trapz(t(k:k+1), a(k:k+1))+v(k);
end
format short
disp([t',v'])