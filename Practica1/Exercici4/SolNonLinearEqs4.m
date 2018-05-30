%% Practica GRAU-CN
% Prob 4 apartat 4

format long

SIZE = 4
t = 1 : SIZE;

f = @(x) (x.^3) + (4 .*(x.^ 2)) - 10;

g2 = @(x)  0.5 .*(sqrt( 10 - (x .^ 3) ));
g3 = @(x)  x - ( (x.^3 + 4*(x.^2) - 10) / ( 3.*(x.^2) + 8.*x));

dg2 = @(x) -(3.*(x.^2) / (4 .* sqrt(10 - (x .^ 3)))) ;
dg3 = @(x) ( (x.^3 + 4*(x.^2) - 10)*( 6.*x + 8) / ( 3.*(x.^2) + 8.*x).^ 2 );


r2 = LogAbsVal(dg2, SIZE);
r3 = LogAbsVal(dg3, SIZE);



plot(t, r2(t)) ,grid , hold on
plot(t, r3(t), '-') ; 
hold off
