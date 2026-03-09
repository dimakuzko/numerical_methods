function [answer, n] = fixed_point(func, p0, tolerance)
    p_old = p0;
    for n = 1:1000
        p_current = func(p_old);
        if abs(p_current - p_old) < tolerance
            answer = p_current;
            return;
        end
        p_old = p_current;
    end
    answer = "Not Defined";
end