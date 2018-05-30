%% Exercici 6 | Lab 10
% Interpolació polinomial

%% Data
x = [-4         :          5]
y = [0   0  0  1 1 1 0 0 0 0]

plot (x, y, '-*'), title('nodes')
legend('nodes', 'location', 'best')

%% Poly interpolador
n = length(x);
p = polyfit(x, y, n-1);
coef = p'





