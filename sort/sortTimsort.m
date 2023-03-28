function B = sortTimsort(A)
N = size(A, 1);
if N <= 1
    B = A;
    return
end
if N <= 32
    B = sortInsertion(A);
else
    mid = floor(N/2);
    L = sortTimsort(A(1:mid));
    R = sortTimsort(A(mid+1:end));
    B = sortTimMerge(L, R);
end
end