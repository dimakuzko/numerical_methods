clear all; clc; format long;

p_exact = 0;
p0 = 0.1;
TOL = 1e-8;

f = @(x) x - sin(x);
df = @(x) 1 - cos(x);

[p, n] = newtonraphson(f, df, p0, TOL)

error = abs(p_exact - p)
