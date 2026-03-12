clc; clear all; format long;

t = [4 8 12 16 20 24];
c = [1600 1320 1000 890 650 560];

t0 = 0;
linpoints = linspace(0, 24, 1000);

%linear
coeffs_l = solve_normal(t, c, 1);

predicted_l = polyval(coeffs_l, t);
predicted_l_value = polyval(coeffs_l, t0);
predicted_l_plot = polyval(coeffs_l, linpoints);

%exponential
coeffs_e = solve_normal(t, log(c), 1);
b_exp = coeffs_e(1); 
a_exp = exp(coeffs_e(2));

predicted_e = a_exp * exp(b_exp * t);
predicted_e_value = a_exp * exp(b_exp * t0);
predicted_e_plot = a_exp * exp(b_exp * linpoints);

rms_l = rms(predicted_l - c);
rms_e = rms(predicted_e - c);

disp(['t=0 approx (linear): ', num2str(predicted_l_value)])
disp(['t=0 approx (exp): ', num2str(predicted_e_value)])
disp(['rms error (linear): ', num2str(rms_l)])
disp(['rms error (exp): ', num2str(rms_e)])

figure; hold on; grid on;
plot(t, c, 'ro');
plot(linpoints, predicted_l_plot, 'b-');
plot(linpoints, predicted_e_plot, 'g-');

xlabel('Time');
ylabel('Concentration');
legend('Data', 'Linear', 'Exponential');
hold off;
