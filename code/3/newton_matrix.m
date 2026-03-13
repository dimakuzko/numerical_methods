function p = newton_matrix(x, y)
    x = x(:); 
    y = y(:);
    n = length(x);

    A = zeros(n);
    A(:, 1) = y;

    for j = 2:n
        for i = j:n
            A(i, j) = (A(i, j-1) - A(i-1, j-1)) / (x(i) - x(i-j+1));            
        end
    end
    display(A);

    p = zeros(n, 1);
    for i = 1:n
        p(i) = A(i, i);
    end
    display(p);
end