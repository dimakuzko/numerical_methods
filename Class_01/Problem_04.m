clear all; clc;

D = @(a, b, c) b^2 - 4*a*c;

x_0 = @(a, b) (-b)\2*a;
x_1 = @(a, b, d) (-b + sqrt(d)) \ 2*a;
x_2 = @(a, b, d) (-b - sqrt(d)) \ 2*a;

% Coeficients
a = 1
b = 3
c = 1
d = D(a,b,c)

if d>0
    x_1(a, b, d)
    x_2(a, b, d)
elseif d == 0
    x_0(a,b)
else
    disp('No real roots');
end