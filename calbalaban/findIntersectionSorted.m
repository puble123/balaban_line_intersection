function pairs = findIntersectionSorted(D, S, b, e, x)
pairs = [];
if isempty(S)
    return
end
n = length(D);
last = S(1);
j = 1;
for i = 1:n
    segment = D(i);
    while getY(segment, x) >= getY(last, x)
        pairs = [pairs; findIntersectStairCase(D, i, last, b, e)];
        j = j+1;
        if j > length(S)
            return
        end
        last = S(j);
    end
end
while true
    pairs = [pairs; findIntersectStairCase(D, n+1, last, b, e)];
    j = j+1;
    if j > length(S)
        return
    end
    last = S(j);
end
end