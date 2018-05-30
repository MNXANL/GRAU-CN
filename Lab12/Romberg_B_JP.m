%% Romberg method
% goyim


%% b)
a = 0;
b = 1;

f = @(x) sqrt(x)*sin(x)
Ie = pi/2

% Why'd you leave the keys upon the TABLE?
Cols = 5;
%R = RombergDisp(f, a, b, Cols)
R = RombergDisp(@funt, a, b, Cols)
abs((R-Ie)')

%% Valor extrapolat
tol = 0.5e-8;
Kmax = 10;
fprintf('\n');
%[I] = Romberg(f, a, b, tol, Kmax)
[I] = Romberg(@funt, a, b, tol, Kmax)

format short g
abs((R-I)')
format long g


%% d)
a = 0;
b = 1;

f = @(x) 1 ./ sqrt(1 + x.^ 4);
Ie = integral(f,a,b)

% Why'd you leave the keys upon the TABLE?
Cols = 5;
%R = RombergDisp(f, a, b, Cols);abs((R-Ie)')
R = RombergDisp(@funt, a, b, Cols);abs((R-Ie)')

%% Valor extrapolat
tol = 0.5e-8;
Kmax = 10;
fprintf('\n');
%[I] = Romberg(f, a, b, tol, Kmax)
[I] = Romberg(@funt, a, b, tol, Kmax)

format short g
abs((R-I)')
format long g


