clc;
clear;

n = (200 : 100 : 2400)';

t1 = ones(size(n));
t2 = ones(size(n));

for k = 1:length(n)

    A = randn(n(k), n(k));
    b = randn(n(k), 1);

    tic;
    x = A\b;
    t1(k) = toc;

    tic;
    x = inv(A) * b;
    t2(k) = toc;

end

loglog(n,t1, 'o-', n, t2, 'b--');
xlabel('Matrix size')
ylabel('Time (sec)')

legend('A\b', 'inv(A) * b', 'Location', 'northwest');
grid on;