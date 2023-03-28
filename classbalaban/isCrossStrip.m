function tf = isCrossStrip(s, l, r)
tf = ~(isSpanStrip(s, l, r) || isInnerStrip(s, l, r));
end