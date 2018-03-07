%% GRAU-CN | Lab 2 (March 7th 2018)
# This kills the proprietary software


%% Exercici 12: Partial sum of the exponential series

function sum = lab2_12_alt(x, n, tol)
%  INPUTS
%    x, n : numberinos
%       t : tolerance
%  -------------------
%   OUTPUT: sum(x, n)
    sum = 1;
    aux = 1;
    k = 1;
    e_abs = 1;
    
    while (k < n && e_abs > tol)        
        aux = aux*(x/k);
        sum += aux;
        e_abs = abs(exp(x) - sum);
        k += 1;
    endwhile
    
    disp('Ex 12 using WHILE:')
    disp('Iterations: '), disp(k)
    disp('Abs. error: '), disp(e_abs)
endfunction
    
    
    
