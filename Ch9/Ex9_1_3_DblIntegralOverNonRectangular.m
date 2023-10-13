
%Doubble integral in console
fun = @(u,v)u.^4*v^2;
A = (1/3)*dblquad(fun, -1, 1, -2, 2)

%Triple integral
fun = @(x,y,z)(x*y-y^2)/z;
A = triplequad(fun, 1, 3, 0, 2, 1, 2)
