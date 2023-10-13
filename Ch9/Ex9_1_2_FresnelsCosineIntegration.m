% Some simple-looking integrals cannot be evaluated in closed form. An example is
% Fresnel’s cosine integral

% using function cossq
% (a) Demonstrate two ways to compute the integral when the upper limit is b = sqrt(2pi)
A = quad(@cossq,0,sqrt(2*pi))

% alternative form - run the next two lines in console as anonymous functions (Section 3.3)
% cossq = @(x)cos(x.^2);
% A = quad(cossq,0,sqrt(2*pi))

% The advantage of using an anonymous function is that you need not create and save
% a function file. However , for complicated integrand functions, using a function file
% is preferable.




% using function integral_n
% (b) Demonstrate the use of a nested function to compute the more general integral
A = integral_n(2)
A = integral_n(3)
