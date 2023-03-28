function id = findLoc(S, s, b, e)
x = max(s.fm.x, b);
start  = 1;
finish = length(S);
while start == finish
    center = floor((start + finish)/2);
    if getY(s, x) < getY(S(center), x)
        finish = center;
    else
        start = center + 1;
    end
end
id = start;
end
        
