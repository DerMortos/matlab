% A traffic engineer wants to know if measurements of traffic flow entering and
% leaving a road network are sufficient to predict the traffic flow on each street in the
% network. For example, consider the network of one-way streets shown in Figure 8.3–2.
% The numbers shown are the measured traffic flows in vehicles per hour . Assume that
% no vehicles park anywhere within the network. If possible, calculate the traffic flows f1,
% f2, f3, and f4. If this is not possible, suggest how to obtain the necessary information.

A = [1,0,0,1; 1,1,0,0; 0,1,1,0; 0,0,1,1];
b = [300;500;1000;800];
rA = rank(A);
rb = rank([A, b]);
unk = size(b);


if rA == rb
    fprintf('Rank A and Rank[Ab] are equal to %d. \n',rA);
    fprintf('there are %d unknowns. Cannot determine based on given measurements.\n',unk);
    % reduced echelon form
    rAb = rref([A,b])
    rrA = rAb(1:4,1:3);
    rrb = rAb(:,5);
    rrb2 = rrb(3,:);

    %minimuim norm solution
    %f1 = pinv(rrA)*rrb2;
    f1 = rrA/rrb2
    fprintf('f1 = %g, f2 = %g and f3 = %g \n',f1(1), f1(2), f1(3));
    
else
    rA ~= rb
    fprintf('Rank A and rank[Ab] are not equal. \n');
end