clear all; clc; format short;

tspan = [0 1];
a = 0; b = 1; N = 10;
y0 = 1;

f = @(t, y) t-y+1;
[t, y] = heun(f, a, b, y0, N);
ye = t + exp(-t);
max(abs(y - ye))