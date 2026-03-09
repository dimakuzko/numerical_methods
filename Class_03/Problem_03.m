clear all; clc;

g = @(x) (2*x.^3 - 7*x.^2 + 6) / (3*x.^2 - 14*x + 14);
 
p0 = 1;
tolerance = 1e-14;
[answer, n] = fixed_point(g, p0, tolerance)