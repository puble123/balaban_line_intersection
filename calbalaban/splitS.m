function [newQ, newL] = splitS(L, b, e)
newL = Segment.empty;
newQ  = Segment.empty;
for i = 1:length(L)
    s = L(i);
    if ~isSpanStrip(s, b, e)
        newL(end+1) = s;
    elseif isempty(newQ)
        newQ(end+1) = s;
    elseif isIntersecting(newQ(end), s, b, e)
        newL(end+1) = s;
    else
        newQ(end+1) = s;
    end
end
end