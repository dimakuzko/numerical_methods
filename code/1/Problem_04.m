clear all; clc; format long;

p_exact = 2 - sqrt(2);
p0 = 0; p1 = 1; TOL = 1e-14;

f = @(x) x.^3 - 7*x.^2 + 14*x - 6;

[p, n] = secant(f, p0, p1, TOL);

error = abs(p_exact - p);

disp(n); disp(p); disp(error);