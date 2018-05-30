%% Exercici 1 | Lab 10
% Interpolació polinomial

%% Data
x = [1 2  4  5]
y = [0 2 12 21]

plot (x, y, '-*'), title('nodes')
legend('nodes', 'location', 'best')

%% Polinomi interpolador
% Matrius de voldemort/vandermonde

A = vander(x)
coefs = A\y'
u = 3
v1 = polyval(coefs, u)

%%
% poly fit
n  = length(x);
p = polyfit(x, y, n-1)

%% Plot poly
t = 1 : 5

v2 = polyval(coefs, t)
plot (x, y, '-x', t, v2), title('nodes')
legend('nodes', 'location', 'best')




