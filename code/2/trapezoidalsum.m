function T = trapezoidalsum(f,a,b,N)
    h = (b - a)/N;
    T = f(a) + f(b);
    for k = 1:N-1
        T = T+2*f(a+k*h);
    end
    T = T*(h/2);
end