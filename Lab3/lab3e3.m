%% Lab 3 | Exercise 3

t = 0 : 0.05 : 2
f = @(x) x.^6 - x  - 1


%% PLOTS:
% plot(t, f(t))          % Version 0
% plot(t, t.^6, t, t+1)  % Version 1

plot(t, f(t), t, zeros(size(t))), grid



plot(t, f(t), t, zeros(size(t))), grid


%% FZERO
efe_cero = fzero(f, 1.2);


%% NEWTON
% newt_root = newton(f, g, xo, epsilon)
a = 1.2
tolerance = 0.5*10^(-10);
df = @(x) 6*x.^5 - 1;

newt_root = newton(f, df, a, tolerance);

iterations = 5;
newt_moln = newton_molner(f, df, a, tolerance, iterations)

%% SECANT
a = 1.2;
b = 2;
tolerance = 0.5*10^(-10);
secant = secant_molner(f, a, b, tolerance, iterations)


%% BISECTION

a = 0; % !!!
b = 2;
tolerance = 0.5*10^(-10);
bisect = bisect_molner(f, a, b, tolerance, iterations)
