function [L,U,p] = GEPP(A)

[n,n] = size(A);
p = (1:n)';

for k = 1:n - 1
    [r,m] = max(abs(A(k:n, k)));
    m = m + k - 1;

    if m ~= k
        A([k,m], :) = A([m,k],:);
        p([k,m]) = p([m,k]);
    end

    if A(k,k) ~= 0
        A(k + 1:n, k) = A(k + 1:n, k) / A(k,k);
        j = k + 1:n;

        A(j,j) = A(j,j) - A(j,k) * A(k,j);
    end

        
end

L = eye(n) + tril(A, -1);
U = triu(A);

end