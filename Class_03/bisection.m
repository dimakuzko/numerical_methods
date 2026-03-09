function [answer, n] = bisection(func, a, b, tolerance)
    for n = 1:1000
        c = (a + b) / 2;
        if func(c) == 0
            answer = c;
            return;
        elseif func(c) * func(a) < 0
            b = c;
        else
            a = c;
        end
        n = n + 1;
    end
    answer = (a + b) / 2;
end