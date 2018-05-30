%% Metode de Euler


clear variables;clc;

%% EDO
f = @(t,y) -y+t+1; %y'  = f(t, y)
g = @(t) exp(-t)+t;

a = 0;  %y(a) = alpha
b = 1;  %y(b) = ...
alpha = 1;

t_exa = [0 : 0.01 : b]
y_exa = t_exa + exp(-t_exa)

%% Euler
h = 0.1;
t1 = [a : h : b];
[ ye1 ] = EulerMod(f, a, b, h, alpha);
t2 = [a : h : b];
[ ye2 ] = EulerMod(f, a, b, h, alpha);

plot(t1, ye1, 'b',  t2, ye2, 'r',  t_exa, y_exa, 'k'), title('y` = -y + t + 1')
legend('Euler-0.25', 'Euler-0.1', 'Euler exacte')


%% Error
ye1error = norm(ye1 - g(t1))
ye2error = norm(ye2 - g(t2))