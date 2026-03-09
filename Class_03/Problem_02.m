clear all; clc;

func = @(x) x.^3 -7*x.^2 + 14*x -6;

exact_root = 2 - sqrt(2);
a = 0;
b = 1; 
tolerance = 1e-15;

tic
[answer, n] = bisection(func, a, b, tolerance)
toc

error = abs(answer - exact_root)
