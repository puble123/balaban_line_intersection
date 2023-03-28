function M = searchTree(Lv, Iv, b, e, E)
bx = E(b).p.x;
ex = E(e).p.x;
if (e - b == 1)
    M = searchInStrip(Lv, b, e, []);
    return
end
[Qv, Lls] = splitS(Lv, bx, ex);
dummy2 = findIntersectionSorted(Qv, Lls, bx, ex, bx);
findIntersectionUnsorted(Qv, Iv, bx, ex);
if ~isempty(dummy2)
    S = searchTree(Lv, [], bx, ex, E);
    M = mergeBalaban(S, Qv, ex);
end
m= floor((bx+ex)/2);
mx = E(m).p.x;
Ils = Segment.empty;
Irs = Segment.empty;
for i = 1:length(Iv)
    s = Iv(i);
    if s.to.x < mx
        Ils(end+1) = s;
    elseif s.fm.x > mx
        Irs(end+1) = s;
    end
end
Rls = searchTree(Lls, Ils, b, m, E);
Lrs = Rls;
if E(m).isleft
    pos = findLoc(Lrs, E(m).s , mx, ex);
    Lrs(pos+1:end+1) = Lrs(pos:end);
    Lrs(pos) = E(m).s;
else
    Lrs(Lrs==E(m).s) = [];
end
Rrs = searchTree(Lrs, Irs, m+1, e, E);
dummy6 = findIntersectionSorted(Qv, Rrs, bx, ex, ex);
M = mergeBalaban(Qv, Rrs, ex);
end
