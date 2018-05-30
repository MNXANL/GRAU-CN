function [ root ] = bisect_molner( f, a, b, tol, N )
%Bisect_Molner Improved Bisect taken from Molner's notes.
%   Detailed explanation goes here
    format long
    k = 0;
    while abs(b-a) > eps*abs(b)
        x = (a + b)/2;
        if sign(f(x)) == sign(f(b))
            b = x;
        else
            a = x;
        end
        k = k + 1;
        
       % fprintf('%d & %.15f & %.15f & %.15f & %.15f & %.15f  \n', k, a, b, x, f(x), ((b-a)/2) );
    end
    root = x;
end

