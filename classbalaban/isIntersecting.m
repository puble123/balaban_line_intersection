function tf = isIntersecting(s1, s2, l, r)
if (s1.fm.x > l)
    l = s1.fm.x;
end
if (s2.fm.x > l)
    l = s2.fm.x;
end
if (s1.to.x < r)
    r = s1.to.x;
end
if (s2.to.x < r)
    r = s2.to.x;
end
yls = getY(s2, l);
yl  = getY(s1, l);
yrs = getY(s2, r);
yr  = getY(s1, r);
tf = yls <= yl && yrs >= yr || yls >= yl && yrs <= yr;
end

