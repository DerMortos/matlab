% Three Dimensional Plots

% generating 3d curve of equations x, y over t time on the z axis
%   x = exp(-0.05*t).*sin(t)
%   y = exp(-0.05*t).*cos(t)
%   z = t

t = 0:pi/50:10*pi;

figure(1)
plot3(exp(-0.05*t).*sin(t),exp(-0.05*t).*cos(t),t), ...
            xlabel('x'), ylabel('y'), zlabel('z'), grid

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Surface Mesh plots    (accurate measures not possible, ie min, max, elevation)
%1) generate a grid of points in the xy plane
%2) evaluate the function f(x,y) at these points
%
% Surface plot for the function
%   Z = X.*exp(-((X-Y.^2).^21Y.^2))
%               where -2 <= x <= 2  and -2 <= y <= 2

% Standard Mesh
[X,Y] = meshgrid(-2:0.1:2);
Z = X.*exp(-((X-Y.^2).^2 + Y.^2));

% Standard Mesh
figure(2)
subplot(2,2,1)
mesh(X,Y,Z), xlabel('x'), ylabel('y'), zlabel('z')

% contour Mesh
subplot(2,2,2)
meshc(X,Y,Z), xlabel('x'), ylabel('y'), zlabel('z')

% meshz
subplot(2,2,3)
meshz(X,Y,Z), xlabel('x'), ylabel('y'), zlabel('z')

% waterfall mesh (lines drawn in one direction)
subplot(2,2,4)
waterfall(X,Y,Z), xlabel('x'), ylabel('y'), zlabel('z')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Contour plot      (accurate measures possible because no distortion is invoved)
% same steps as above

% Contour plot for the function
[X,Y] = meshgrid(-2:0.1:2);
Z = X.*exp(-((X-Y.^2).^2 + Y.^2));

figure(3)
contour(X,Y,Z), xlabel('x'), ylabel('y')

% check out >>help clabel
 