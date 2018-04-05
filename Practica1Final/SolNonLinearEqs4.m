%% Practica GRAU-CN
% Prob 4 apartat 4

format long

SIZE = 20
t = 1 : SIZE;

f = @(x) (x.^3) + (4 .*(x.^ 2)) - 10;

g2 = @(x)  0.5 .*(sqrt( 10 - (x .^ 3) ));
g3 = @(x)  x - ( (x.^3 + 4*(x.^2) - 10) / ( 3.*(x.^2) + 8.*x));



r2 = LogAbsVal(g2, SIZE);
r3 = LogAbsVal(g3, SIZE);



plot(t, r2(t)) ,grid , hold on
plot(t, r3(t), '-') ; 
hold off