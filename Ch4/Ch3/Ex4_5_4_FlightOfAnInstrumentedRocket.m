% All rockets lose weight as they burn fuel; thus the mass of the system is variable.
% The following equations describe the speed y and height h of a rocket launched vertically,
% neglecting air resistance. They can be derived from Newton’s law
% 
% v(t) = u * ln(m0/(m0-q*t)) - g*t
% h(t) = (u/q)*(m0 - q*t)*lb(m0-q*t) = u*(ln(m0) + 1)*t - g*t^2/2 - (m0*u/q)*ln(m0)
% 
% where m0 is the rockets initial mass, q is the rate at which the rocket burns fuel mass, u is
% the exhaust velocity of the burned fuel relative to the rocket, and g is the acceleration due
% to gravity. Let b be the burn time, after which all the fuel is consumed. Thus the rocket’s
% mass without fuel is m_e = m0 - Q*b.
% For t>b the rocket engine no longer produces thrust, and the speed and height are
% given by
% 
% v(t) = v(b) - g*(t-b)^2
% h(t) = h(b) + v(b)*(t-b) - g*(t -b)^2/2
% 
% The time t_p to reach the peak height is found by setting v(t) = 0. The result is
% t_p = b + v(b)/g. Substituting this expression into the expression (4.5–4) for h(t) gives
% the following expression for the peak height: h_p = h(b) + v^2(b)/(2*g). The time at which
% the rocket hits the ground is t_hit = t_p + sqrt(2*h_p/g).
% Suppose the rocket is carrying instruments to study the upper atmosphere, and we
% need to determine the amount of time spent above 50 000 ft as a function of the burn time
% b (and thus as a function of the fuel mass q*b). Assume that we are given the following
% values: m_e = 100 slugs, q = 1 slug/sec, u = 8 000 ft/sec, and g = 32.2 ft/sec2. If the
% rocket s maximum fuel load is 100 slugs, the maximum value of b is 100/q . Write
% a MATLAB program to solve this problem.




