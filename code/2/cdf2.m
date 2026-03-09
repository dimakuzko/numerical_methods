function [f] = cdf2(x, y)
    h = x(2) - x(1);
    len = length(y);

    f = zeros(1, len);
    f(1) = endpoint(y(1:4), h, true);
    f(len) = endpoint(y(len-3:len), h, false);
    
    for i = 2:len-1
        f(i) = (y(i-1) - 2*y(i) + y(i+1))/h^2;
    end
end