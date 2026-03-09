clear all; clc; format long;

% 1. Setup Parameters (Same as Part a)
a = 0;
b = 180;
tau = 2;
N = (b - a) / tau; % Calculates the number of intervals (90)

beta = 0.4;
alpha = 0.035;
gamma = 0.005;
Pop = 1000;

% 2. Define the System (Same as Part a)
F = @(t,Y) [ -(beta/Pop) * Y(2) * Y(1);
              (beta/Pop) * Y(2) * Y(1) - alpha * Y(2) - gamma * Y(2);
              alpha * Y(2);
              gamma * Y(2) ];

Y0 = [997; 3; 0; 0];

% 3. Solve using our custom Heun's method
[t, Y] = heun(F, a, b, Y0, N);

% 4. Extract and Plot
S = Y(:,1);
I = Y(:,2);
R = Y(:,3);
D = Y(:,4);

plot(t, S, '-b', 'LineWidth', 1.5)
hold on
plot(t, I, '-r', 'LineWidth', 1.5)
plot(t, R, '-g', 'LineWidth', 1.5)
plot(t, D, '-k', 'LineWidth', 1.5)
hold off

legend('Susceptible', 'Infected', 'Recovered', 'Deceased', 'Location', 'best')
xlabel('Time (days)')
ylabel('Number of Individuals')
title('SIRD Model Dynamics: Part (c) - Heun Method (\tau = 2)')