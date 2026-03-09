clear all; clc; format long;

f = @(x) -44.145*tan(x).^2 + 90*tan(x) - 43.145;
df = @(x) (90 - 88.29*tan(x))/cos(x).^2;

p0 = 0;
p1 = pi/4;
tol = 10^-15;

[sec_p, sec_n] = secant(f, p0, p1, tol);

[new1_p, new1_n] = newtonraphson(f, df, p0, tol);

[new2_p, new2_n] = newtonraphson(f, df, p1, tol);

% Display the results of the root-finding methods
disp(['Secant method: p = ', num2str(sec_p), ', iterations = ', num2str(sec_n)]);
disp(['Newton-Raphson method (0): p = ', num2str(new1_p), ', iterations = ', num2str(new1_n)]);
disp(['Newton-Raphson method (pi/4): p = ', num2str(new2_p), ', iterations = ', num2str(new2_n)]);