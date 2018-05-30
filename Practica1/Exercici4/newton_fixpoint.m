function [ root, iters ] = newton_fixpoint( f, g, x, tol, N )
%Newton_fixpoint Modded Newton for fixed point calculations.
% INPUT
%   f = equation
%   g = function
%   x = starting point
%   tol = error boundary ('cota')
%   N = ieration boundary ('cota')

%   Detailed explanation goes here
    k = 0;
    
    tol_x = 1;
    tol_f = abs(f(x));
    err = max(tol_x, tol_f);
    iters = x;
    while (tol < tol_x && tol < tol_f && k < N)
        xprev = x;
        x = x - f(x)/g(x);
        k = k + 1;
        
        tol_x = abs(x - xprev);
        tol_f = abs(f(x));
        iters = [iters, x];
    end
    root = x;
end

