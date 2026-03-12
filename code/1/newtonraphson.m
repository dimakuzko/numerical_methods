function [p, n] = newtonraphson(f, df, p0, tol)
    errors = zeros(1000, 1);
    p_old = p0;

    for n = 1:1000
        if df(p_old) == 0
            break
        end

        p_new = p_old - f(p_old) / df(p_old);

        errors(n) = abs(p_new - p_old);
        
        if n > 2
            num = log(errors(n)) - log(errors(n-1));
            den = log(errors(n-1)) - log(errors(n-2));
            estimated_alpha = num / den;

            disp(['Step: ', num2str(n), ' Estimated Alpha = ', num2str(estimated_alpha)])
        end

        if errors(n) < tol
            p = p_new;
            return
        end

        p_old = p_new;
        
    end
end