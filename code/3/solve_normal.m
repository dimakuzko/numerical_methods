function p = solve_normal(x, y, n)
    x = x(:); 
    y = y(:);
    
    powers = n:-1:0;
    A = x .^ powers;

    p = (A' * A) \ (A' * y); 
end