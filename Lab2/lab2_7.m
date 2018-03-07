%% GRAU-CN | Lab 2 (March 7th 2018)
# This kills the proprietary software


%% Exercici 7: matrices
% Solving linear equations

    % Place equations by rows [1 --> ; 2 --> ; .. ; N --> ]
    % Then place potential solutions
    % Finally magic will take place :-)

    A = [2  -4; -2.998  6.001];
    b = [1 2];

    solutions1 = A\b;

    %%

    
    A = [2  -4; -2.998  6];
    b = [1 2];
    solutions2 = A\b;
    
    det(A) == 0 % Si es true, fail!
    
    cond(A)     % Factor mult. error relatiu
    
