function S = simpsonsum(f, N, h)
    S = f(1) + f(length(f));
    for k = 2:N
        if mod(k - 1, 2) == 0
            S = S + 2*f(k);
        else
            S = S + 4*f(k);
        end
    end
    S = S * h / 3;
end