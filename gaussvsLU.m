clc;
clear;

n = 500;

A = randn(n, n);


tic
for k = 1:50
    b = randn(500, 1);
    x = A\b;
end

t1 = toc;

[L,U,p] = lu(A, 'vector');
tic
for k = 1:50
    b = randn(500,1);


    x = U\(L\b(p));
end
t2 = toc;

fprintf('Backslash time = %fsec \n', t1);
fprintf('LU time = %fsec \n', t2);


  