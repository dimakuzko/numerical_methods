function [f] = endpoint(y, h, forward)
    if ~forward
        y = y(end:-1:1);
    end
    
    f = (2*y(1) - 5*y(2) + 4*y(3) - y(4))/h^2;
end