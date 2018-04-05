%% Practica GRAU-CN
% Prob 4 apartat 3
%% Seccions a i b

format long

t = -5 : 0.05 : 5;

f = @(x) (x.^3) + (4 .*(x.^ 2)) - 10;

g1 = @(x)  x - (x .^ 3) - (4.*(x.^2)) + 10;
g2 = @(x)  0.5 .*(sqrt( 10 - (x .^ 3) ));
g3 = @(x)  x - ( (x.^3 + 4*(x.^2) - 10) / ( 3.*(x.^2) + 8.*x));


x = 1.365230013414097
ITERS = 50
[a1] = Convergence(g1, ITERS)
[a2] = Convergence(g2, ITERS)
[a3] = Convergence(g3, ITERS)



dg2 = @(x) -(3.*(x.^2) / (4 .* sqrt(10 - (x .^ 3)))) ;
dg3 = @(x) ( (x.^3 + 4*(x.^2) - 10)*( 6.*x + 8) / ( 3.*(x.^2) + 8.*x).^ 2 );

a = 1;
tol = 0.0005;
N = 200000;

newton_molner( g2, dg2, a, tol, N );
newton_molner( g3, dg3, a, tol, N );

%plot(t, f(t), t, g1(t), t, g2(t), t, g3(t)), grid



%% Secció c

tol = 0.000005;
for i = 5:6
    AitkenDeltaSquared( g2 , 20);
    %fprintf('%d \t& %.16f \n', i, ads(3*i));
end

%% Secció d

tol = 0.0005;
for i = 1:10
    stef = Steffensen(g2, 0, tol, i);
    %fprintf('%d \t& %.16f \n', i, stef);
end