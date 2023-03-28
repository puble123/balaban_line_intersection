function tf = isInsideStrip(p, l, r)
tf = (l - eps <= p.x) && (p.x <= r + eps);
end