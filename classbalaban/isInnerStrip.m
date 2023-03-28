function tf = isInnerStrip(s, l, r)
tf = (l <= s.fm.x && r >= s.to.x) && (l <= s.to.x && r >= s.fm.x);
end