function [ root ] = secant_molner( f, a, b, tol, N )
%Secant_Molner Improved Secant taken from Molner's notes.
%   Detailed explanation goes here
    format long
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
       % fprintf('%d &  %.15f &  %.15f & %.15f \n', k, b, f(b), b-a);
    end
    root = b;
end

