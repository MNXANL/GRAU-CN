%% CN | Lab 12
% Quadratura adaptativa

% Default tolerance
tol = 1.e-6;


%% a)

a = 1;
b = 2;
f = @(x) log(x);
Ie = 2*log(2) - 1;
integral(f,a,b)


tol = 1.e-6;
[Qout, fcount] = quadgui(f, a, b, tol);


%% b)

a = 0;
b = (pi/4);
f = @(x) (cos(x)).^2;
Ie = (sin(2*b)/4 +(b/2)) - (sin(2*a)/4 +(a/2));
integral(f,a,b)

[Qout, fcount] = quadgui(f, a, b, tol);


%% c)

a = 2/(7*pi);
b = (2/pi);
f = @(x) (sin(1./x))+1.5;
Ie = integral(f,a,b)

tol = 0.5e-6;
[Qout, fcount] = quadgui(f, a, b, tol);



%% d) Humps Edition

a = 0; b = 1;
Ie = integral(@humps,a,b);

[Qout, fcount] = quadgui(@humps, a, b);

% Mods
a = 1; b = 2;
Ie = integral(@humps,a,b);
tol = 0.5e-6;
[Qout, fcount] = quadgui(@humps, a, b, tol);

