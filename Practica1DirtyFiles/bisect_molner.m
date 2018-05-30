function [ root ] = bisect_molner( f, a, b, tol, N )
%Bisect_Molner Improved Bisect taken from Molner's notes.
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

