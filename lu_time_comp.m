clc;
clear;

n = (200:100:2400)';
t = zeros(size(n));

for k = 1 : length(n)

    A = randn(n(k), n(k));
    tic;

    for j = 1:6
        [L,U] = lu(A);
    end
    time = toc;
    t(k) = time / 6;


end
clf;
loglog(n, t, 'o-');
hold on;
loglog(n, t(end) * (n/n(end)) .^3, 'k--')
axis tight;

xlabel('size of matrix'), ylabel('time (sec)')
title('Timing of LU factorization')
legend('lu', 'O(n^3)', 'location', 'southeast');
hold off
