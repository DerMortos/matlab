% The following table gives data for the distance traveled along ve truck routes and the
% corresponding time required to traverse each route. Use the data to compute the average
% speed required to drive each route. Find the route that has the highest average speed.

d = [560,440,490,530,370];
t = [10.3,8.2,9.1,10.1,7.5];

speed = d./t
[highestSpeed, route] = max(speed)