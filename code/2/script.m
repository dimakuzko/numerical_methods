clear all; clc; format long;

x = 1:0.1:2;
y = [0.4, 0.752, 1.236, 1.864, 2.648, 3.6, 4.732, 6.056, 7.584, 9.328, 11.3];

len = length(x);
N = len - 1;

a = x(1); 
b = x(len); 
h = (b - a) / N;

lnf2 = log(cdf2(y, h));

trapezoidalsum = trapezoidalsum(lnf2, N, h);
simpsonsum = simpsonsum(lnf2, N, h);

exact = 2.871201010907891;

trap_err = abs(exact - trapezoidalsum)
simp_err = abs(exact - simpsonsum)