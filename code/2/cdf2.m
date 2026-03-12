function [f] = cdf2(y, h)
    len = length(y);

    f = zeros(1, len);
    f(1) = (2*y(1) - 5*y(2) + 4*y(3) - y(4))/h^2;
    f(end) = (2*y(end) - 5*y(end-1) + 4*y(end-2) - y(end-3))/h^2;
    
    for i = 2:len-1
        f(i) = (y(i-1) - 2*y(i) + y(i+1))/h^2;
    end
end