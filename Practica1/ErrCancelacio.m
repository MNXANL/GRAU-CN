%% GRAU-CN | Pràctica A
% Errors de cancelació -> Exercici 2


t = 0.988 :  1.012 : 0.02;
P = @(x) (x .^ 7) - 7.*(x.^6) + 21.*(x.^5) - 35.*(x.^4)  + 35.*(x.^3) - 21.*(x.^2) + (7*x) - 1;


%% Errors de cancelació -> Exercici 3

% P = @(x) (x .^ 7) - 7.*(x.^6) + 21.*(x.^5) - 35.*(x.^4)  + 35.*(x.^3) - 21.*(x.^2) + (7*x) - 1;
% P0 = @(x) ((((((x - 7) .* x + 21) .* x - 35 ) .* x + 35) .* x - 21) .* x - 7) .* x - 1
P0 = @(x) x - 7;
P1 = @(x) P0(x).*x + 21;
P2 = @(x) P1(x).*x - 35;
P3 = @(x) P2(x).*x + 35;
P4 = @(x) P3(x).*x - 21;
P5 = @(x) P4(x).*x - 7;
P6 = @(x) P5(x).*x - 1;


%% Errors de cancelació -> Exercici 4
Poli = @(x) (x-1) .^ 7;

t = -25 : 0.05 : 25;
f = @(x) (x.^3) + (4 .*(x.^ 2)) - 10


%% PLOTS:
% plot(t, f(t))          % Version 0
% plot(t, t.^6, t, t+1)  % Version 1

plot( t, P(t),   t, P6(t),   t, Poli(t) ), grid