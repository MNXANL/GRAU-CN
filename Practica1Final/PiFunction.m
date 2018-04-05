%% GRAU-CN | Practica A
% Algorismes -> Exercici 1 (funció)

function [retval] = PiFunction (n)
    i = 0;
    m4 = 0;
    a = -1;
    b = +1;
    r = (b-a).*rand(1) + a;
    while (i < n)
        x = (b-a).*rand(1) + a;
        y = (b-a).*rand(1) + a;
        circ = (x .^ 2) + (y .^ 2);
        if ( circ <= 1 ) % Unit circle
            m4 = m4 + 4;
        end
        i = i+1;
    end
    retval = (m4 / n);
end
