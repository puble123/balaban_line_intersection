function [M, pairs] = searchInStrip(L, b, e, pairs)
[Q, L1] = splitS(L, b, e);
if isempty(L1)
    M = Q;
else
    dummy = findIntersectionSorted(Q, L1, b, e, b);
    pairs = [pairs; dummy];
    [R1, pairs] = searchInStrip(L1, b, e, pairs)
    M = MergeBalaban(Q, R1, e);
end
end