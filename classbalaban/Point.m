classdef Point
    properties
        x
        y
    end
    methods
        function p = Point(x, y)
            if (nargin)
                p.x = x;
                p.y = y;
            end
        end
        function tf = isOnSegment(p, s)
            tf = isInsideStrip(s, p) && isInsideVerticalStrip(s, p);
        end
    end
end