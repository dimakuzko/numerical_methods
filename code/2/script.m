clear all; clc; format long;

x = 1:0.1:2;
y = [0.4, 0.752, 1.236, 1.864, 2.648, 3.6, 4.732, 6.056, 7.584, 9.328, 11.3];

a = x(1); 
b = x(end); 
N = length(x) - 1;
h = (b - a) / N;

f2 = cdf2(y, h)
lnf2 = log(f2)

trapezoidalsum = trapezoidalsum(lnf2, N, h)
simpsonsum = simpsonsum(lnf2, N, h)

exact = 2.871201010907891
trap_err = abs(exact - trapezoidalsum)
simp_err = abs(exact - simpsonsum)
