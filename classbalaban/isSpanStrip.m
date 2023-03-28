function tf = isSpanStrip(s, l, r)
tf = s.fm.x <= l && r <= s.to.x;
end