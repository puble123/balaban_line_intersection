classdef Segment
    properties
        fm
        to
        b
        k
        id
    end
    methods
        function s = Segment(id, p1, p2)
            if nargin
                if isLeftPoint(p1, p2)
                    s.fm = p1;
                    s.to = p2;
                else
                    s.fm = p2;
                    s.to = p1;
                end
                s.b = (s.to.x * s.fm.y - s.fm.x * s.to.y) / (s.to.x - s.fm.x);
                s.k = (s.to.y - s.fm.y) / (s.to.x - s.fm.x);
                s.id = id;
            end
        end
        function s = setData(s, id, p1, p2)
            if isLeftPoint(p1, p2)
                s.fm = p1;
                s.to = p2;
            else
                s.fm = p2;
                s.to = p1;
            end
    		s.b = (s.to.x * s.fm.y - s.fm.x * s.to.y) / (s.to.x - s.fm.x);
    		s.k = (s.to.y - s.fm.y) / (s.to.x - s.fm.x);
            s.id = id;
        end
    end
end
