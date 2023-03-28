function [B] = sortInsertion(A)
n = length(A);
B = A;
for i = 2:n
    j = i;
     while j > 1 && (B(j-1).p.x > B(j).p.x || (B(j-1).p.x == ...
             B(j).p.x && B(j-1).p.y > B(j).p.y))
        temp = B(j-1,1);
        B(j-1,1) = B(j,1);
        B(j,1) = temp;
        j = j - 1;
    end
end
end