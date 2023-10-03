% The current i passing through an electrical resistor having a voltage v across it is given
% by Ohmis law, i = v/R, where R is the resistance. The power dissipated in the resistor is
% given by v^2/R. The following table gives data for the resistance and voltage for ve resistors.
% Use the data to compute 

R = [10000,20000,35000,100000,200000];
v = [120,80,110,200,350];

% (a) the current in each resistor and
current = v./R

%(b) the power dissipated in each resistor.
power = v.^2./R