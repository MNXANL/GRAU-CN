%% Ex 3 | Lab 9
% BACTERIOS
%
% ab^0 = 32
% ab^1 = 47
% ab^2 = 65
% ab^3 = 92
% ab^4 = 132
% ab^5 = 90
% ab^6 = 275
% ===============>
%    Y   = A + B*x
% ln 32  = A + B*0
% ln 47  = A + B*1
% ln 65  = A + B*2
% ln 92  = A + B*3
% ln 132 = A + B*4
% ln 90  = A + B*5
% ln 275 = A + B*6
%
%
%
%% Sistema lineal

clear ; clc;

x = [ 0 : 6]';
y = [32 47 65 92 132 90 275]';

%% LINEAR SYSTEM:
% $y= ab^{x}$
data = [x, y];
Y = log(y);
u = ones( size(x) );

% MATLAB requires to do it as Y=Bx+A (same as previous equation)
A = [x, u];

% Sobredeterminat? SÍ!
rnk = rank(A), rnk_ampliada = rank([A, Y])

%% Matrix pseudo-inversa Moore-Penrose
sol = pinv(A)*Y %coeficient de la recta 


%% Min residu
% Parametres model
z = exp(sol);
b = z(1), a = z(2)
Y2 = a*b .^ x;
r = norm(y - Y2)

%% Numero bacteris 7h

v = floor(a*b .^ 7) % = 387.27

% NO lines drawn on plots! Non-discrete points
t = 0 : 0.001 :  1
x = a * b .^ t;
plot(x, y, '*', t, z);
legend('data', ' ab^x', 'Location', 'Best');
title('B A C T E R I S');
xlabel('hours');
ylabel('Num Bacteris');


% Alternate plot
t = 0 : 0.001 :  1
x = a * b .^ t;
plot(x, y, '*', t, z, y, 'v', '*g');
legend('data', ' ab^x', 'Location', 'Best', 'Prediction h=7');
title('B A C T E R I S');
xlabel('hours');
ylabel('Num Bacteris');
