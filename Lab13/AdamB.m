%% Metode de Euler


clear variables;clc;

%% EDO
f = @(t,y) -y+t+1; %y'  = f(t, y)
g = @(t) exp(3*t) .* (t*0.2 - 1/25);

a = 0;  %y(a) = alpha
b = 1;  %y(b) = ...
alpha = 1;

t_exa = [0 : 0.01 : b]
y_exa = t_exa + exp(-t_exa)

%% Euler
h = 0.1;
t = [a : h : b];
[ ye1 ] = Euler(f, a, b, h, alpha);
[ ye2 ] = EulerMod(f, a, b, h, alpha);
[ ye3 ] = EulerMill(f, a, b, h, alpha);
[ ye4 ] = RungeKutta(f, a, b, h, alpha);
[t2,y2] = ode45(f, [a,b], alpha);

%% Taula
taula = [y_exa, ye1];

%% Plots
plot(t, ye1, 'b',  t, ye2, 'r',  t, ye3, 'g',  t, ye4, 'c', t2, y2, 'y',  t_exa, y_exa, 'k'), title('y` = -y + t + 1')
legend('Euler', 'Euler2', 'Euler3', 'RK exacte', 'ODE45')


%% Error
ye1error = norm(ye1 - g(t))
ye2error = norm(ye2 - g(t2))