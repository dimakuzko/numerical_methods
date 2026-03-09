function [p, n] = secant(f, p0, p1, tolerance)
    p_n_prev = p0;
    p_n = p1;
    f_p_n_prev = f(p_n_prev);
    for n = 1:1000
        f_p_n = f(p_n);

        p_n_next = p_n - ((p_n - p_n_prev) * f_p_n) / (f_p_n - f_p_n_prev);
        if abs(p_n_next - p_n) < tolerance
            p = p_n_next;
            return;
        end
        p_n_prev = p_n;
        p_n = p_n_next;
        f_p_n_prev = f_p_n;
    end
    p = "Not Defined";
end