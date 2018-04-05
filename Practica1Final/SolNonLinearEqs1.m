%% Practica CN
% Problema 3 seccions 1 i 2
format long 

t = -3 : 0.05 : 3;
f = @(x) (x.^3) + (4 .*(x.^ 2)) - 10;


%% PLOTS:
% plot(t, f(t))          % Version 0
% plot(t, t.^6, t, t+1)  % Version 1

plot(t, f(t)), grid



%% FZERO
f_cero = fzero(f, 1.2);


%% NEWTON
a = 1.2
tolerance = 0.5*10^(-10);
df = @(x) 3*x.^2 + 8*x;


iterations = 5;
newt_moln = newton_molner(f, df, a, tolerance, iterations)

%% SECANT
a = 1.2;
b = 2;
tolerance = 0.5*10^(-10)
secant = secant_molner(f, a, b, tolerance, iterations);


%% BISECTION

a = 0; % !!!
b = 2;
tolerance = 0.5*10^(-10)
bisect = bisect_molner(f, a, b, tolerance, iterations);



plot(t, f(t)), grid

