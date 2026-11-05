function A = Golub(n)
S = 10;

L = round(S*rand(n, n), -1) + eye(n);
U = round(S*rand(n, n), 1) + eye(n);

A = L * U;

end