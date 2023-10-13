% from (9.3-14)
function hdot = height(t,h)
hdot = -(0.0334*sqrt(h))/(10*h-h^2);