clc;
clear;

year = [1982; 2000; 2010; 2015];
pop = [1008.18; 1262.64; 1337.82; 1374.62];

t = year - 1980;

V = vander(t);
y = pop;

c = V\y;

res = (V*c - y);

% estimating new point
p = @(t) polyval(c, t - 1980);

p2005 = p(2005);
fprintf("Estimated = %.2f, Actual = 1300.72\n", p2005);

% vizualize

scatter(year, y);
xlabel("years since 1980")
ylabel("population (millions)")
title("Population of China")


tt = linspace(1980, 2015, 500);

yy = p(tt);
hold on
plot(tt, yy)
legend("data", "interpolant", "location", "northwest");
hold off