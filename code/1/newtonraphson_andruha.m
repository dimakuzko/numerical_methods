function [p, n] = newtonraphson(f, df, p0, tolerance)
    p_old = p0;
    errors = [];

    for n = 1:1000
        df_p_old = df(p_old);
        if df_p_old == 0
            error('Derivative is zero. No solution found.');
        end
        f_p_old = f(p_old);
        p_current = p_old - f_p_old / df_p_old;

        errors(n) = abs(p_current - p_old);
        if n > 1
            linear_ratio = errors(n) / errors(n-1);
            quadratic_ratio = errors(n) / (errors(n-1)^2);
            fprintf('Iter %d: Linear Ratio: %.4f | Quadratic Ratio: %.4f\n', n, linear_ratio, quadratic_ratio);
        end

        if n > 2
            estimated_alpha = log(errors(n)/errors(n-1)) / log(errors(n-1)/errors(n-2));
            fprintf('Step %d: Estimated Alpha = %.4f\n', n, estimated_alpha);
        end

        if abs(p_current - p_old) < tolerance
            p = p_current;
            return;
        end
        p_old = p_current;
    end
    p = "Not Defined";
end