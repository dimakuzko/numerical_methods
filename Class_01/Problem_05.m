clear all; clc;



% Function definitions
function res = f(x)
    res = 1/2 * (1 + x ./ sqrt(1 + x.^2));
end

function res = g(x)
    res = 1 ./ (1 + exp(-x));
end

function res = v(x)
    res = 1 ./ (1 + exp(-2*x));
end

% Define interval
interval = linspace(-4, 4, 32);

% Evaluate functions over the defined interval
fValues = f(interval);
gValues = g(interval);
vValues = v(interval);

% Plots on the same screen

figure;
hold on;
plot(interval, fValues, 'k-s', 'DisplayName', 'f(x)');
plot(interval, gValues, 'm--d', 'DisplayName', 'g(x)');
plot(interval, vValues, 'b+:', 'DisplayName', 'v(x)');
legend;
title('Approximations of Heaviside step function');
hold off;