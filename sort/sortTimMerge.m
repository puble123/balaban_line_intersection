function B = sortTimMerge(L, R)
    n1 = length(L);
    n2 = length(R);
    B(n1+n2,1) = Endpoint();
    i = 1;
    j = 1;
    k = 1;
    while i <= n1 && j <= n2
        if L(i).p.x < R(j).p.x || ...
                (L(i).p.x == R(j).p.x && L(i).p.y < R(j).p.y)
            B(k,1) = L(i,1);
            i = i+1;
        else
            B(k,1) = R(j,1);
            j = j+1;
        end
        k = k+1;
    end
    
    while i <= n1
        B(k,1) = L(i,1);
        i = i+1;
        k = k+1;
    end
    
    while j <= n2
        B(k,1) = R(j,1);
        j = j+1;
        k = k+1;
    end
end