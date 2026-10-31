clc;
clear;

n = 6;

e = ones(n - 1, 1);

A = 2 * eye(n) - diag(e, -1) - diag(e, 1);
A(1,1) = 1;

disp(A);


[R, p] = chol(A);

if p == 0
    disp("Cholskey exist")
else
    disp("dont exist")
end