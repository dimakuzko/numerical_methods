function f = newton_polynomial(p, t, x)
    n = length(p) - 1;
    f = p(1);
    product = x - t(1);

    for i = 1:n
        f = f + p(i+1) .* product;
        product = product .* (x - t(i+1));
    end    
end