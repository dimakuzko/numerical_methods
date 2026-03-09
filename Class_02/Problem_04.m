clear all; clc;

% Constants
N = 10^3;
x_values = linspace(-0.3, 0.3, N);

function res = sin_approximation(x)
    res = x - x.^3/6 + x.^5/120;
end

approximate_values = sin_approximation(x_values);
actual_values = sin(x_values);

error_values = abs(approximate_values - actual_values);

max_error = max(error_values)