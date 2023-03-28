classdef Endpoint 
    properties
        s
        p
    end
    methods
        function e = Endpoint(s, p)
            if nargin
                e.s = s;
                e.p = p;
            end
        end
        function e = setData(e, s, p)
            e.s = s;
            e.p = p;
        end
        function tf = isLeft(e)
            tf = e.p.x == e.s.fm.x;
        end
    end
end