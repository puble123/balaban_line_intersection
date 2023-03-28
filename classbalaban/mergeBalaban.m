function M = mergeBalaban(S1, S2, x)
if isempty(S1)
    M = S2;
    return
end
if isempty(S2)
    M = S1;
    return
end
i = 1;
n = length(S1);
j = 1;
m = length(S2);
M = Segment.empty();
while ~(i>n && j>m)
    if i > n
        M(end+1) = S2(j);
        j = j+1;
    elseif j > m
        M(end+1) = S1(i);
        i = i+1;
    elseif getY(S1(i), x) < getY(S2(j), x)
        M(end+1) = S1(i);
        i = i+1;
    else
        M(end+1) = S2(j);
        j = j+1;
    end
end
end