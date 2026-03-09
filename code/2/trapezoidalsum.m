function T = trapezoidalsum(f, N, h)
    T = f(1) + f(length(f));
    for k = 2:N
        T = T + 2*f(k);
    end
    T = T * (h/2);
end