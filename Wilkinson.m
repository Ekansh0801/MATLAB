function W = Wilkinson(n)
W = eye(n) - tril(ones(n), -1);
W( :, n) = 1;
end