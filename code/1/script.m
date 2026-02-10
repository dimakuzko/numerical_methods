clear all; clc; format long;

f = @(x) -44.145*tan(x).^2 + 90*tan(x) - 43.145;
df = @(x) (90 - 88.29*tan(x))/cos(x).^2;

p0 = 0;
p1 = pi/4;
tol = 10^-15;

[bis_p, bis_n] = bisection(f, p0, p1, tol);

[sec_p, sec_n] = secant(f, p0, p1, tol);

[new_p, new_n] = newtonraphson(f, df, p1, tol);
