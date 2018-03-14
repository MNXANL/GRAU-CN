function [ root ] = secant( f, a, b, tol, N )
%Newton_Molner Improved Newton taken from Molner's notes.
%   Detailed explanation goes here
    k = 0;
    
    tol_x = 1;
    tol_f = abs(f(b));
    
    err = max(tol_x, tol_f); 
    while (tol < err && k < N)
        c = a;
        a = b;
        b = b + (b-c)/(f(c)/f(b)-1);
        k = k+1;
        
        tol_x = abs(b - a);
        tol_f = abs(f(b));
        err = max(tol_x, tol_f);
    end
    root = b;
end

