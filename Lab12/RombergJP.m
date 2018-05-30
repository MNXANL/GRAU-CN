%% Romberg method
% goyim

%% a)
a = 0;
b = 1;

f = @(x) 1 ./ (1 + x.^ 2);
%Ie = integral(f,a,b)

% Why'd you leave the keys upon the TABLE?
Cols = 5;
RombergDisp(f, a, b, Cols);

%% b)
a = 0;
b = 1;

f = @(x) sqrt(x)*sin(x)
Ie = pi/2

% Why'd you leave the keys upon the TABLE?
Cols = 5;
R = RombergDisp(f, a, b, Cols);

%% Valor extrapolat
tol = 0.5e-8;
Kmax = 10;
fprintf('\n');
[I] = Romberg(f, a, b, tol, Kmax)

abs(I-Ie)


%% c)
a = 1;
b = 1000000000000;

f = @(x) exp(1) .^ (x.^2);
%Ie = integral(f,a,b)

% Why'd you leave the keys upon the TABLE?
Cols = 5;
%RombergDisp(f, a, b, Cols);


%% d)
a = 0;
b = 1;

f = @(x) 1 / sqrt(1 + x.^ 4);
%Ie = integral(f,a,b)

% Why'd you leave the keys upon the TABLE?
Cols = 5;
%RombergDisp(f, a, b, Cols);

