%% GRAU-CN | Lab 2 (March 7th 2018)
# This kills the proprietary software


%% Exercici 6

    r = 1:10;
    p = poly(r)
    raices1 = roots(p);
    
    q = p;
    q(2) = q(2) + 2^(-12);
    q' ;
    
    raices2 = roots(q);
