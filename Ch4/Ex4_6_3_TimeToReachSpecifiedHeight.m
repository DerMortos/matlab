% Consider the variable-mass rocket treated in Example 4.5–4.
% Write a program to determine how long it takes for the rocket 
% to reach 40 000 ft if the burn time is 50 sec

h_desired = 40000;
m_e = 100;
q = 1;
u = 8000;
g = 32.2;
dt = 0.1;
b = 50;

m0 = m_e + q*b;
v_b = u*log(m0/m_e) - g*b;
h_b = ((u*m_e)/1)*log(m_e/(m_e + q*b)) + u*b - 0.5*g*b^2;
t_p = b + v_b/g;
h_p =h_b + v_b^2/(2*g);

if h_p > h_desired
    h = 0;
    i = 0;
    while h < h_desired
        t = i*dt;
        i = i+1;
        if t <= b
            % burnout has not occured
            h = (u/q) * (m0 -  q*t)*log(m0 - q*t) + u*(log(m0) +1)*t ...
                - 0.5*g*t^2 - (m0*u/q)*log(m0);
        else
            % burnout has occured
            h = h_b - 0.5*g*(t-b)^2 + v_b*(t-b);
        end
    end

    disp('The time to reach the desired height is:')
    disp(t)
else
    disp('Rocket cannot achieve the desired height.')
end