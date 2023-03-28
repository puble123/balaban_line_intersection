function tf = isInsideVerticalStrip(p, l, r)
tf = (l-eps<=p.y && p.y<=r+eps) || (l+eps>=p.y && p.y>=r-eps);
end