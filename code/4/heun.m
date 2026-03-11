function [t, y] = heun(f, a, b, y0, N)
    tau = (b - a) / N;

    m = length(y0);
    y = zeros(N+1, m);
    y(1, :) = y0;

    t = linspace(a, b, N+1)';

    for n = 2:(N+1)
        y_prev = y(n-1, :)'; 
        
        k1 = f(t(n-1), y_prev);
        y_temp = y_prev + tau * k1;
        k2 = f(t(n), y_temp);
        
        y(n, :) = (y_prev + (tau / 2) * (k1 + k2))';
    end
end