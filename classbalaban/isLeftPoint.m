function tf = isLeftPoint(p1, p2)
if p1.x < p2.x
    tf = true;
elseif p1.x == p2.x && p1.y < p2.y
    tf = true;
else
    tf = false;
end