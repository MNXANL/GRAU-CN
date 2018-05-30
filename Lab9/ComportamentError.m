% Copypaste from LabXXX-Tema4-Derivacio.pdf

format short g
f=@(x)log(x);

n = 0 : 14;
h = 1 ./ (10.^n);

for k=1:15
    fp(k)=(f(2+h(k))-f(2))/h(k);
end


er = abs(fp-0.5);
taula=[h; fp; er]'

% Plot
aux = log(2*er)
plot(n, aux) % plot(h, er, '*')