% generating 3d curve of equations x, y over t time on the z axis
%   x = exp(-0.05*t).*sin(t)
%   y = exp(-0.05*t).*cos(t)
%   z = t

t = 0:pi/50:10*pi;
plot3(exp(-0.05*t).*sin(t),exp(-0.05*t).*cos(t),t), ...
            xlabel('x'), ylabel('y'), zlabel('z'), grid
