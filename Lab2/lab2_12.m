%% GRAU-CN | Lab 2 (March 7th 2018)
# This kills the proprietary software


%% Exercici 12: Partial sum of the exponential series

function sum = lab2_12(x, n, tol)
%  INPUTS
%    x, n : numberinos
%       t : tolerance
%  -------------------
%   OUTPUT: sum(x, n)
    sum = 1;
    aux = 1;
    
    for k = 1:n
        % WHO WOULD WIN?
        % --> A proprietary program used by millions of engineers
        % --> some operator bois
        aux *= (x/k);
        sum += aux;
        e_abs = abs(exp(x) - sum);
        if ( e_abs < tol )
            disp('Ex 12 using FOR:')
            disp('Iterations: '), disp(k)
            disp('Abs. error: '), disp(e_abs)
            return
        endif
    endfor
    
    disp('Ex 12 using FOR:')
    disp('Iterations: '), disp(k)
    disp('Abs. error: '), disp(e_abs)
    
endfunction
    
    
    
