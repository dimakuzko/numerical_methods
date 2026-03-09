clear all; clc; format long;

p_exact = 2 - sqrt(2);
p0 = 0; TOL = 1e-14;

f = @(x) x.^3 - 7*x.^2 + 14*x - 6;
df = @(x) 3*x.^2 - 14*x + 14;

[p, n] = newtonraphson(f, df, p0, TOL);

error = abs(p_exact - p);

disp(n); disp(p); disp(error);
