function S = simpsonsum(f, a, b, N)
    h = (b-a)/N;
    S = f(a) + f(b);
    for k = 1:N-1
        if mod(k, 2) == 0
            S = S + 2*f(a + k*h);
        else
            S = S + 4*f(a + k*h);
        end
    end
    S = S * h / 3;
end