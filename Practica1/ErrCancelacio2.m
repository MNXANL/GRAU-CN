%% GRAU-CN | Pràctica A
% Errors de cancelació -> Exercici 2

format long
P = @(x) (x .^ 7) - 7.*(x.^6) + 21.*(x.^5) - 35.*(x.^4)  + 35.*(x.^3) - 21.*(x.^2) + (7*x) - 1;
X = 0.988 :  1.012 : 0.00005;

%P(X)
%plot(X, P, 'o')