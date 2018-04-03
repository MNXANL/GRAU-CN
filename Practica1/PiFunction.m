%% GRAU-CN | Pràctica A
% Algorismes -> Exercici 1 (funció)

function [retval] = PiFunction (n)
    i = 0;
    m4 = 0;
    while (i < n)
        x = unifrnd(-1.0, 1.0);
        y = unifrnd(-1.0, 1.0);
        circ = (x .^ 2) + (y .^ 2);
        if ( circ <= 1 ) % Unit circle
            m4 = m4 + 4;
        end
        i = i+1;
    end
    retval = (m4 / n);
endfunction
