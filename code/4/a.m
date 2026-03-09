clear all; clc; format long;

tspan = [0 180]; N = 1000;
beta = 0.4; 
alpha = 0.035; 
gamma = 0.005; 
 

F = @(t, Y) [
    -(beta/N) * Y(2) * Y(1); 
    (beta/N) * Y(2) * Y(1) - alpha * Y(2) - gamma * Y(2); 
    alpha * Y(2); 
    gamma * Y(2)
];

Y0 = [997; 3; 0; 0];

[t, y] = ode45(F, tspan, Y0);

S = y(:,1); 
I = y(:,2);
R = y(:,3);
D = y(:,4);

plot(t, S, 'b')
hold on
plot(t, I, 'r')
plot(t, R, 'g')
plot(t, D, 'k')

legend('S', 'I', 'R', 'D')