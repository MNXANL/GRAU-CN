%% Ex 2 Derivació numérica
% Electric boogaloo

%% Data
clear, clc;
x = [0.3 : 0.05 : 0.5];
y = [1.608049, 1.622528, 1.64, 1.660886, 1.68575];
h = 0.05;

data = [x ; y]'

%% K'(0.4) centrada

yp = ( y(4) - y(2) ) / (2*h)



%% K''(0.4) centrada
ypp = ( y(4) - 2*y(3) + y(2) ) / (h .^ 2)


%% K'''(0.4) centrada
ypp = ( y(5) - 2*y(4) + 2*y(2) - y(1) ) / (8 * h .^ 3)

