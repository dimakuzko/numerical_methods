clear all; clc; format long;

f = @(x) -44.145*tan(x).^2 + 90*tan(x) - 43.145;
df = @(x) (90 - 88.29*tan(x))/cos(x).^2;

p0 = 0;
p1 = pi/4;
tol = 10^-15;

[bis_p, bis_n] = bisection(f, p0, p1, tol);

disp('Newton Raphson method with p0 = 0');
[new0_p, new0_n] = newtonraphson(f, df, p0, tol);
error_newtonraphson_p0_with_bisection = abs(bis_p - new0_p)

disp('Newton Raphson method with p0 = pi/4');
[new1_p, new1_n] = newtonraphson(f, df, p1, tol);
error_newtonraphson_p1_with_bisection = abs(bis_p - new1_p)

disp('Secant method with p0, p1 = 0, pi/4');
[sec_p, sec_n] = secant(f, p0, p1, tol);
error_secant_with_bisection = abs(bis_p - sec_p)

disp(['Bisection method: p = ', num2str(bis_p, 16), ', iterations = ', num2str(bis_n)]);
disp(['Newton-Raphson method (0): p = ', num2str(new0_p, 16), ', iterations = ', num2str(new0_n)]);
disp(['Newton-Raphson method (pi/4): p = ', num2str(new1_p, 16), ', iterations = ', num2str(new1_n)]);
disp(['Secant method: p = ', num2str(sec_p, 16), ', iterations = ', num2str(sec_n)]);
