function [p, n] = newtonraphson(f, df, p_n, tol)
    for n = 1:1000
        if df(p_n) == 0 
            break
        end

        p = p_n - f(p_n) / df(p_n);

        if abs(p - p_n) < tol
            return
        end  

        p_n = p;
        
    end
end