function pairs = findIntersectionUnsorted(D, S, b, e)
pairs = [];
for i = 1:length(S)
    s = S(i);
    j = findLoc(D, s, b, e);
    dummy = findIntersectStairCase(D, j, s, b, e);
    pairs = [pairs; dummy];
end
end