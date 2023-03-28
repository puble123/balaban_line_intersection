function ENDS = getSegmentToEnds(S)
n = length(S);
ENDS = Endpoint.empty;
for i = 1:n
    ENDS(2*i-1,1)=Endpoint(S(i), S(i).fm);
    ENDS(2*i,1)  =Endpoint(S(i), S(i).to);
end
ENDS = sortPoints(ENDS);
end