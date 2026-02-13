clear all; clc; format long;

t = [4 8 12 16 20 24];
c = [1600 1320 1000 890 650 560];

p = newton_matrix(t,c);
display(p);

x = linspace(0, 24, 1000); 
f = newton_polynomial(p, t, x);
f0 = f(1);
plot(x, f, 'b-', 'LineWidth', 2);
xlabel('Time (s)');
ylabel('Value');
title('Newton Polynomial Interpolation');
grid on;

hold on;
plot(0, f0, 'wx', 'MarkerSize', 10, 'LineWidth', 2);
plot(t, c, 'ro', 'MarkerFaceColor', 'w', 'LineStyle', 'none', 'MarkerSize', 6);
hold off;
