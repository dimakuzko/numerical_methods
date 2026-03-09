clear all; clc; format long;

x = 1:0.1:2;
y = [0.4, 0.752, 1.236, 1.864, 2.648, 3.6, 4.732, 6.056, 7.584, 9.328, 11.3];
h = 0.1;

a = 1; b = 2; N = length(x) - 1;
lnf2 = log(cdf2(y, h));
