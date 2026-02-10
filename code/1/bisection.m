function [p, n] = bisection(f, a, b, tol)
    p = (a+b)/2;
    n = 1;

    while (b-a)/2 > tol
        f_a = f(a);
        f_p = f(p);

        if f_a * f_p < 0
            b = p;
        else 
            a = p;
        end

        p = (a + b) / 2;
        n = n + 1;

    end
end
