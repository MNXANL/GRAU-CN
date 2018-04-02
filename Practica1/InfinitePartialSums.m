%% GRAU-CN | Pràctica A
% Errors de truncament -> Exercici 1

function [retval] = InfinitePartialSums( N )
    n = 0;
    retval = 0;
    while (n < N)
        Pow16 = 16 .^ (-n);
        Div1 = 4/((8.*n) + 1);
        Div2 = 2/((8.*n) + 4);
        Div3 = 1/((8.*n) + 5);
        Div4 = 1/((8.*n) + 6);
        DivSubs = (Div1 - Div2 - Div3 - Div4);
        Si = Pow16 * DivSubs;
        retval = retval + Si
        n = n+1;
    end 
    %return retval;
end
