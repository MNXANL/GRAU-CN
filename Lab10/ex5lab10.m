%% Exercici 5 | Lab 10
% Interpolació polinomial

%% Data
x = [0  .1  .4  .5  .6 1.0 1.4 1.5 1.6 1.9 2.0]
y = [0 .06 .17 .19 .21 .26 .29 .29 .30 .31 .31]

plot (x, y, '-*'), title('nodes')
legend('nodes', 'location', 'best')

%% Poly interpolador
n = length(x);
p = polyfit(x, y, n-1);
coef = p'


%%
% Scale change
m = mean(x)
s = std(x)
z = (x-m)/s;
pz = polyfit(x, y, n-1);
coef = p'

t = (0 : 0.05 : 2);
vpz = interp1(x, y, u)



plot (x, y, '-x', t, vpz), title('nodes, scale change')
legend('nodes', 'poly', 'location', 'best')

