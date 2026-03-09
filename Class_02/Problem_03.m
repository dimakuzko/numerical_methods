clear all; clc;

% Constants
N = 10^8;
x_values = linspace(-1, 1, N);

% Defining Polynomials
function res = P_1(x)
    res = -1 + 2*x + 4*x.^2 - 5*x.^3 + 3*x.^4;
end

function res = P_2(x)
    res = -1 + x .* (2 + x .* (4 + x .* (-5 + 3 * x)));
end

% Measure the time of calculation with N
tic
answer1 = P_1(x_values);
toc

tic
answer2 = P_2(x_values);
toc
