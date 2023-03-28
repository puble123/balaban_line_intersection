function pairs = findIntersectStairCase(D, i, s, b, e)
pairs = [];
j = i;
while j <= length(D) && isIntersecting(D(j), s, b, e)
    pairs(end+1, 1:2) = [D(j).id, s.id];
    j = j+1;
end
j = i-1;
while j >= 1 && isIntersecting(D(j), s, b, e)
    pairs(end+1, 1:2) = [D(j).id, s.id];
    j = j-1;
end
end
