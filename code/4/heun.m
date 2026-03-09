function [t, y] = heun(f, a, b, y0, N)
    tau = (b - a)/N;

    t = linspace(a, b, N+1)';
    y = zeros(N+1, 4);
    y_temp = zeros(N+1, 4);

    y(1) = y0;

    for n = 2:N+1
        k = f(t(n-1), y(n-1));
        y_temp(n) = y(n-1) + tau.*k;
        y(n) = y(n-1) + (tau/2).*(k+f(t(n),y_temp(n)));
    end
end