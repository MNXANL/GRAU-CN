function [ root ] = newton_molner( f, df, x0, tol, N )
%Newton_Molner Improved Newton taken from Molner's notes.
%   Detailed explanation goes here
    format long
    k = 0;
    
    x = x0;
    tol_x = 1;
    tol_f = abs(f(x0));
    while (tol < tol_x && tol < tol_f && k < N)
        xprev = x;
        x = x - f(x)/df(x);
        k = k + 1;
        
        tol_x = abs(x - xprev);
        tol_f = abs(f(x));
        
       % fprintf('%d & %.15f  &  %.15f  &  %.15f \n', k, x, f(x), x-xprev);
    end
    root = x
end

