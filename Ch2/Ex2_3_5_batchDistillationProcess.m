% Consider a system for heating a liquid benzene/toluene solution to distill a pure benzene vapor.
% A particular batch distillation unit is charged initially with 100 mol of a 60 percent mol benzene/
% 40 percent mol toluene mixture. Let L (mol) be the amount of liquid remaining in the still, and 
% let x (mol B/mol) be the benzene mole fraction in the remaining liquid. Conservation of mass for
% benzene and toluene can be applied to derive the following relation [Felder, 1986].

% L = 100*(x/0.6).^(0.625).*((1-x)/0.4).^(-1.625);

% Determine what mole fraction of benzene remains when L = 70. Note that it is difficult to
% to solve this equation directly for x. Use a plot of x versus L to solve the problem

% x >= 0. Therefore, we must make a few guesses for the range of x, using a session like the
% following. We find that L > 100 if x > 0.6, so we choose x = 0:0.001:0.6. We use the ginput
% function to find the value of x corresponding to L = 70

x = 0:0.001:0.6;
L = 100*(x/0.6).^(0.625).*((1-x)/0.4).^(-1.625);
plot(L,x), grid, xlabel('L (mol)'), ylabel('x (mol B/mol)'), [L,x] = ginput(1)

% use ginput cursor within the plot to find x 