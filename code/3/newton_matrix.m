function p = newton_matrix(x, y)
    x = x(:); 
    y = y(:);

    n = length(x) - 1;
    if n ~= length(y) - 1
        return
    end

    A = zeros(n+1);
    A(:, 1) = y;

    for j = 2:n+1
        for i = j:n+1
            A(i, j) = (A(i, j-1) - A(i-1, j-1)) / (x(i) - x(i-j+1));            
        end
    end

    p = zeros(n+1, 1);
    for i = 1:n+1
        p(i) = A(i, i);
    end
end