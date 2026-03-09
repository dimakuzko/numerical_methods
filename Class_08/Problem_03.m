clear all; clc; format long;

a = 0; b = 3;

f = @(x) x.*sqrt(1 + x.^2);

I_exact = (10*sqrt(10) - 1)/3;
h = zeros(1, 10);
Error_Trap = zeros(1, 10);

for k=1:10
    N=2^k;
    h(k) = (b-a)/N;
    S = simpsonsum(f, a, b, N);
    Error_Trap(k) = abs(S - I_exact);
end

loglog(h, Error_Trap, '-b')
hold on;
loglog(h, h.^4, '--b')
hold off;
xlabel('h')
ylabel('Error')
legend('Error of Simpson Sum method', '0')