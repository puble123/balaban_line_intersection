function [P, S, E] = mainBalaban(segments)
ns = size(segments,1);
np = ns*2;

P = Point.empty;
S = Segment.empty;
E = Endpoint.empty;

for i = 1:ns
    P(2*i-1,1) = Point(segments(i,1), segments(i,2));
    P(2*i,1)   = Point(segments(i,3), segments(i,4));
    S(i,1)     = Segment(i, P(2*i-1), P(2*i));
end
E = getSegmentToEnds(S);
Iv = E(1).s;
dr = true(length(S),1);
dr([E(1).s.id;E(end).s.id]) = 0;
Lv = S(dr);
M = searchTree(Lv, Iv, 1, length(E)-1, E);
end
