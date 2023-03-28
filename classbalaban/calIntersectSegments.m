function [x, y] = calIntersectSegments(s1, s2)
x = (s1.b - s2.b) / (s2.k - s1.k);
y = x*s1.k + s1.b;
end