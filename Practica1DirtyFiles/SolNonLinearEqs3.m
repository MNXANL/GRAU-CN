%% Practica GRAU-CN
% Prob 4 apartat 3



t = -5 : 0.05 : 2;

f = @(x) (x.^3) + (4 .*(x.^ 2)) - 10;

g1 = @(x)  x - (x .^ 3) - (4.*(x.^2)) + 10;
g2 = @(x)  sqrt(10 - x.^3)/2;
g3 = @(x)  x - (((x .^ 3) + (4.*(x.^2)) - 10)/((x .^ 3)-(3.*(x.^2)) + 8 .* x));

[r1, it1] = newton_fixpoint(f, g1, 0, 0.0005, 15)
[r2, it2] = newton_fixpoint(f, g2, 0, 0.0005, 15)
[r3, it3] = newton_fixpoint(f, g3, 0, 0.0005, 15)

plot(t, f(t), g1(t), g2(t), g3(t)), grid

