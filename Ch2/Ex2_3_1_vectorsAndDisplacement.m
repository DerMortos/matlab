% Suppose two divers start at the surface and establish the following coordinate
% system: x is to the west, y is to the north, and z is down. Diver 1 swims 55 ft west,
% 36 ft north, and then dives 25 ft. Diver 2 dives 15 ft, then swims east 20 ft and
% then north 59 ft. 

% diver1: 55i + 36j +25k
% diver2: -20i + 59j + 15k

r = [55,36,25];
w = [-20,59,15];

% (a) Find the distance between diver 1 and the starting point. 
dist1 = sqrt(sum(r.*r)) % . is for element by element operation

% (b) How far in each direction must diver 1 swim to reach diver 2?
v = w-r

% How far in a straight line must diver 1 swim to reach diver 2?
dist2 = sqrt(sum(v.*v))