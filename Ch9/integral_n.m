function A = integral_n(n)
A = quad(@cossq_n,0,sqrt(2*pi));
% Nested function
    function integrand = cossq_n(x)
        integrand = cos(x.^n);
    end
end