%% GRAU-CN | Practica A
% Algorismes -> Exercici 1 (front-end)

n = 1000;
res = PiFunction(n)

n = @(k) 5 .^k;

for k = 10 : 15
    fprintf('%d\n', n(k));
    res = PiFunction( n(k) );
    [ea, er, erp] = error_funcs(pi, res);
    fprintf('K=%d | Pi=%d  Ea=%d Er=%d  \n', k, res, ea, er );
end
   