clc; clear all; format long;

t = [4 8 12 16 20 24];
c = [1600 1320 1000 890 650 560];

t0 = 0;
lc = log(c);
linpoints = linspace(0, 24, 1000);

coeffs_l = solve_normal(t, c, 1);

predicted_l = polyval(coeffs_l, t);
predicted_l_value = polyval(coeffs_l, t0);
predicted_l_plot = polyval(coeffs_l, linpoints);

coeffs_e = solve_normal(t, lc, 1);
b_exp = coeffs_e(1); 
a_exp = exp(coeffs_e(2));

predicted_e = a_exp * exp(b_exp * t);
predicted_e_value = a_exp * exp(b_exp * t0);
predicted_e_plot = a_exp * exp(b_exp * linpoints);

rms_l = rms(predicted_l - c);
rms_e = rms(predicted_e - c);

fprintf('Exponential approximation at the end of the storm: %f\nLinear approximation at the end of the storm: %f\n', predicted_e_value, predicted_l_value);
fprintf('Exponential RMS: %f\nLinear RMS: %f\n', rms_e, rms_l);

figure; hold on; grid on;

plot(t, c, 'ro', 'MarkerFaceColor', 'r', 'MarkerSize', 8, 'DisplayName', 'Original Data');
plot(linpoints, predicted_l_plot, 'b-', 'LineWidth', 1.5, 'DisplayName', 'Linear Fit');
plot(linpoints, predicted_e_plot, 'g-', 'LineWidth', 1.5, 'DisplayName', 'Exponential Fit');

xlabel('Time (t)');
ylabel('Concentration (c)');
title('Comparison of Least Squares Approximations');
legend('Location', 'northeast');
hold off;
