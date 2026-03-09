function [t, y] = forwardeuler(f, a, b, y0, N)
    t = linspace(a, b, N+1)';
    y = zeros(N+1, 1);
    y(1) = y0;
    tau = (b - a)/N;

    for n = [2:N+1]
        k = f(t(n-1), y(n-1));
        y(n) = y(n-1) + tau*k;
    end
end