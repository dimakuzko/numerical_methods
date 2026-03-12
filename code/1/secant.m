function [p, n] = secant(f, p0, p1, tol)
    errors = zeros(1000, 1);
    
    for n = 1:1000
        f_p1 = f(p1);
        f_p0 = f(p0);

        p = p1 - ((p1 - p0)*f_p1)/(f_p1 - f_p0);

        errors(n) = abs(p - p1);
        
        if n > 2
            num = log(errors(n)) - log(errors(n-1));
            den = log(errors(n-1)) - log(errors(n-2));
            estimated_alpha = num / den;

            disp(['Step: ', num2str(n), ' Estimated Alpha = ', num2str(estimated_alpha)])
        end

        if errors(n) < tol
            return
        end

        p0 = p1; 
        p1 = p;
    end
end