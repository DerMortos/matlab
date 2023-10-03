% The volume of a circular cylinder of height  h and radius r is given by
% V = pi * r^2 * h. A particular cylindrical tank is 15m tall and has a
% radius of 8m. We want to construct another cylindrical tank with a volume
% 20 percent greater but having the same height. How large must its radius be?

r = 8;
h = 15;
V = pi * r^2 * h;
newV = V + 0.2*V;
new_r = sqrt(newV/(pi*h))