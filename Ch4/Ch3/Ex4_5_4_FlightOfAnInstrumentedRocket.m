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

% incorrect results yielded. plot shows that for one second of burn time
% (37 -38 sec) 140.8 sec of flight duration elapse. 
m_e = 100;
q = 1;
u = 8000;
g = 32.2;
dt = 0.1;
h_desired = 50000;

% Burn time
for b = 1:100
    burn_time(b) = b;
    m0 = m_e + q*b;
    v_b = u*log(m0/m_e) - g*b;
    %h_b = ((u*m_e)/q) * log(m_e/(m_e + q*b)) + u*b - 0.5*g*b^2;
    h_b = ((u*m_e)/q)*log(m_e/(m_e+q*b))+u*b - 0.5*g*b^2;
    h_p = h_b + v_b^2/(2*g);

    if h_p >= h_desired
        t_p = b + v_b/g;
        t_hit = t_p + sqrt(2*h_p/g);

        for p = 0:t_hit/dt
            %finding height vector
            i = p+1;
            t = p*dt;
            time(i) = t;
            if t <= b
                % burnout hasn't occured yet
                h(i) = (u/q)*(m0 - q*t)*log(m0 - q*t) + u*(log(m0) + 1)*t ...
                    - 0.5*g*t^2 - (m0*u/q)*log(m0);
            else
                % burnout has occured
                h(i) = h_b - 0.5*g*(t-b)^2 + v_b*(t-b);
            end
        end
    % compute the duration
    duration(b) = length(find(h>=h_desired))*dt;
    else
        % rocket did not reach desired height
        duration(b) = 0;
    end
end

plot(burn_time, duration), xlabel('Burn Time (sec)'), ylabel('Duration (sec)'), ...
    title('Duration Above 50 000 Ft.')




