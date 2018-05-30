%% Gauss-Legendre
% Gauss-engendro

a = -1;
b = +1;
f = @(x) exp(x);
ie = f(b)-f(a)
n = 1;
[x,w] = GaussLegendre_2(n)
GL1 = w .* f(x)
Gerror1 = abs(GL1-Ie)

n = 2;
[x,w] = GaussLegendre_2(n)
GL2 = sum(w .* f(x))
Gerror2 = abs(GL2-Ie)

n = 3;
[x,w] = GaussLegendre_2(n)
GL3 = sum(w .* f(x))
Gerror3 = abs(GL3-Ie)

n = 4;
[x,w] = GaussLegendre_2(n)
GL4 = sum(w .* f(x))
Gerror4 = abs(GL4-Ie)