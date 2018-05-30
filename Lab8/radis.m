% Radis espectrals metodes estudiats


function [rhoJ, rhoS, rhoW] = radis (A)    

    D = diag(diag(A));
    L = tril(A, -1);
    U = triu(A, +1);
        

        
    aux = inv(D);
    Bj = -aux*(L+U);
    cj = -aux*b;

    rhoJ = max(abs(eig(Bj)))
    
    aux = inv(L+D);
    Bs = -aux*(U);
    cs = -aux*b;
    rhoS = max(abs(eig(Bs)))
    
    
    %% S O R (w)
    for w = 0 : 0.1: 2:
        aux = inv(w*L+D);
        Bw = -aux*((1-w)*D - w*U);
        rhoW(k) = max(abs(eig(Bw)))
        k = k+1;
    end
    

    wo = 1 / sqrt(1 - rhoJ^2);
    rhowo = max(abs(eig(wo)))
    t = 1 : length(rhoW);
    plot(t, rhoW(t), t, rhoJ, t, rhoS, t , rhowo), grid
    
endfunction
