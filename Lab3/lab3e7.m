%% Lab 3 | Exercise 3

t = 0 : 0.05 : 2
f =  @(x) exp(x) - 2 + x
df = @(x) exp(x) + 1;


%% PLOTS:
% plot(t, f(t))          % Version 0
% plot(t, t.^6, t, t+1)  % Version 1
plot(t, f(t), t, zeros(size(t))), grid


%% FZERO
F0_1 = fzero(f, 0);
% Between 0 and 1, yay!




%% NEWTON
% newt_root = newton(f, g, xo, epsilon)
a = 0;
tolerance = 0.0005;

newt_root = newton(f, df, a, tolerance);

iterations = 25;
newt_moln = newton_molner(f, df, a, tolerance, iterations)

%% SECANT
a = 0;
b = 1;
tolerance = 0.0005;
secant = secant_molner(f, a, b, tolerance, iterations)


%% BISECTION

a = 0; 
b = 1;
tolerance = 0.0005;
bisect = bisect_molner(f, a, b, tolerance, iterations)
