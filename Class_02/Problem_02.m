clear all; clc;



% Function definitions
function res = f(x, n)
    res = 1;
    for i = 1:n
        res = res + x.^(i)/factorial(i);
    end
end

% Define interval
interval = linspace(-1.5, 1.5, 100);

% Evaluate functions over the defined interval
P_1_values = f(interval, 1);
P_2_values = f(interval, 2);
P_3_values = f(interval, 3);
P_4_values = f(interval, 4);

% Plots on the same screen

figure;
hold on;

h1 = plot(interval, P_1_values, '-s', 'Color', [0 0 0], 'LineWidth', 1.5, ...
          'MarkerFaceColor', [0 0 0], 'MarkerSize', 6, 'DisplayName', 'P_1');
h2 = plot(interval, P_2_values, '--d', 'Color', [0.8 0 0.8], 'LineWidth', 1.5, ...
          'MarkerFaceColor', [0.8 0 0.8], 'MarkerSize', 6, 'DisplayName', 'P_2');
h3 = plot(interval, P_3_values, '+:', 'Color', [0 0 1], 'LineWidth', 1.5, ...
          'MarkerSize', 7, 'DisplayName', 'P_3');
h4 = plot(interval, P_4_values, '-', 'Color', [0 0.45 0.74], 'LineWidth', 1.5, ...
          'DisplayName', 'P_4');

grid on;
box on;
xlabel('Interval');
ylabel('P values');
title('P_i vs Interval');
legend('Location','best');
axis tight;

% Improve axes readability
ax = gca;
ax.FontSize = 12;
ax.LineWidth = 1;
title('Approximations of Heaviside step function');
hold off;