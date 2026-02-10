function [p, n] = secant(f, p0, p1, tol)
    
    for n = 1:1000
        f_p1 = f(p1);
        f_p0 = f(p0);

        p = p1 - ((p1 - p0)*f_p1)/(f_p1 - f_p0);

        if abs(p - p1) < tol
            return
        end

        p0 = p1; 
        p1 = p;
    end
end