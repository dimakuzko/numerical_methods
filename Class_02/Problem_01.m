clear all; clc; format long;

res = 1;
error = abs(res - exp(1));
n = 0;

while error > 10^(-9)
    n = n + 1;
    res = res + 1/factorial(n);
    error = abs(res - exp(1));
end

disp(n)
disp(res)