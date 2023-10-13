% Figure 9.3–3 shows a spherical tank for storing water. The tank is lled through a hole in the
% top and drained through a hole in the bottom. If the tank’s radius is r, you can use integration
% to show that the volume of water in the tank as a function of its height h is given by
% (9.3-10)
% Torricelli’s principle states that the liquid flowrate through the hole is proportional to
% the square root of the height h. Further studies in fluid mechanics have identified the
% relation more precisely, and the result is that the volume flow rate through the hole is
% given by
% (9.3-11)
% where A is the area of the hole, g is the acceleration due to gravity, and Cd is an experimentally
% determined value that depends partly on the type of liquid. For water, Cd = 0.6 is a common
% value. We can use the principle of conservation of mass to obtain a differential equation
% for the height h. Applied to this tank, the principle says that the rate of
% change of liquid volume in the tank must equal the flow rate out of the tank; that is
% (9.3-12)
% Use MATLAB to solve this equation to determine how long it will take for the tank
% to empty if the initial height is 9 ft. The tank has a radius of r 5 = ft and has a 1-in.-diameter
% hole in the bottom. Use g = 32.2 ft/sec2. Discuss how to check the solution

% using function height
%The value of the final time of 2475 sec was found by increasing the
    %final time until the plot showed that the height became 0.
[t, h]=ode45 (@height, [0, 2475], 9);
plot(t,h),xlabel('Time (sec)'), ylabel('Height (ft)')
