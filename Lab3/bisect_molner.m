function [ root ] = bisect_molner( f, a, b, tol, N )
%UNTITLED11 Summary of this function goes here
%   Detailed explanation goes here
    k = 0;
    while abs(b-a) > eps*abs(b)
        x = (a + b)/2;
        if sign(f(x)) == sign(f(b))
            b = x;
        else
            a = x;
        end
        k = k + 1;
    end
    root = x;
end

