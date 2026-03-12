clear all; clc; format long;

tspan = [0 180];
pop = 1000;
beta = 0.4;
alpha = 0.035;
gamma = 0.05;

F = @(t, Y) [
    -(beta/pop) * Y(2) * Y(1);
    (beta/pop) * Y(2) * Y(1) - alpha * Y(2) - gamma * Y(2);
    alpha * Y(2);
    gamma * Y(2)
];

Y0 = [997; 3; 0; 0];

[t, y] = ode45(F, tspan, Y0);

S = y(:,1);
I = y(:,2);
R = y(:,3);
D = y(:,4);

figure; hold on; grid on;
plot(t, S, 'b')
plot(t, I, 'r')
plot(t, R, 'g')
plot(t, D, 'w')

legend('S', 'I', 'R', 'D')
hold off;