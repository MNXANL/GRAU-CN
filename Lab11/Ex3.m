%% Exercici 2 | Lab 11
% Quadratures

%%
%
a = 1;
b = 2;
tol = 0.0005;
f = @(x) log(x)

qS = quad(f, a, b, tol)
qL = quadl(f, a, b, tol)
qgk = quadgk(f, a, b)


q = integral(f, a, b)



%% WTF is dis
I = RombergDisp(@sin, 0, pi, 4)

I' = RombergDisp(@sin, 0, pi, 4)

