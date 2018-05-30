%% Ex 1 Derivació numérica
% Derivame esta

%% Data
x = [0.1, 0.2, 0.3];
y = [1.2751, 1.4778, 1.7149];


%% Derivada 1a centrada
h = x(2) - x(1);
yp = ( y(3) - y(1) ) / (2*h)
%yp = ( y(3) - y(1) ) / (2*h) % wtf are u doin nigga



%% Derivada 2a centrada
h = x(2) - x(1);
ypp = ( y(3) - 2*y(2) + y(1) ) / (h .^ 2)





