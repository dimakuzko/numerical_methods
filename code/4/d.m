clear all; clc; format long;

a = 0;
b = 180;
tau = 12;
N = (b - a) / tau; 

beta = 0.4;
alpha = 0.035;
gamma = 0.005;
pop = 1000;

F = @(t, y) [
    -(beta/pop) * y(2) * y(1);
    (beta/pop) * y(2) * y(1) - alpha * y(2) - gamma * y(2);
    alpha * y(2);
    gamma * y(2)
];

y0 = [997; 3; 0; 0];

[t, y] = heun(F, a, b, y0, N);

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