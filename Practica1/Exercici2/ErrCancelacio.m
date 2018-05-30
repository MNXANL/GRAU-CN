%% GRAU-CN | Practica A
% Errors de cancelacio -> Exercici 2


t = 0.988 :  0.0001: 1.012;
P = @(x) (x .^ 7) - 7.*(x.^6) + 21.*(x.^5) - 35.*(x.^4)  + 35.*(x.^3) - 21.*(x.^2) + (7*x) - 1;


%% Errors de cancelació -> Exercici 3

P0 = @(x) x - 7;
P1 = @(x) P0(x).*x + 21;
P2 = @(x) P1(x).*x - 35;
P3 = @(x) P2(x).*x + 35;
P4 = @(x) P3(x).*x - 21;
P5 = @(x) P4(x).*x - 7;
PFinal = @(x) P5(x).*x - 1;


%% Errors de cancelació -> Exercici 4
Poli = @(x) (x-1) .^ 7;

%% PLOTS:

% plot(t, f(t))          % Version 0
% plot(t, t.^6, t, t+1)  % Version 1



subplot(221), plot(t, P(t)), title('Polinomi original'), grid
subplot(222), plot(t, PFinal(t)), title('Horner'), grid
subplot(223), plot(t, Poli(t)), title('Polinomi a comparar'), grid



