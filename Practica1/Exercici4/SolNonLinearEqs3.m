%% Practica GRAU-CN
% Prob 4 apartat 3
%% Seccions a i b

format long

t = -1 : 0.01 : 5;

%Funcions 
f = @(x) (x.^3) + (4 .*(x.^ 2)) - 10;

g1 = @(x)  x - (x .^ 3) - (4.*(x.^2)) + 10;
g2 = @(x)  0.5 .*(sqrt( 10 - (x .^ 3) ));
g3 = @(x)  x - ( (x.^3 + 4*(x.^2) - 10) / ( 3.*(x.^2) + 8.*x));

%Derivades
dg1 = @(x)  -3 .* (x .^ 2) - (8.*x) ;
dg2 = @(x) -(3.*(x.^2) / (4 .* sqrt(10 - (x .^ 3)))) ;
dg3 = @(x) ( (x .^ 3 + 4 .*(x.^2) - 10).*( 6 .* x + 8) / ( 3 .*(x.^2) + 8.*x).^ 2 );



ITERS = 50
[a1] = Convergence(g1, ITERS)
[a2] = Convergence(g2, ITERS)
[a3] = Convergence(g3, ITERS)


a = 1;
tol = 0.0005;
N = 200000;


newton_molner( g1, dg1, a, tol, N );
newton_molner( g2, dg2, a, tol, N );
newton_molner( g3, dg3, a, tol, N );




%% Seccio c
A = AitkenDeltaSquared( g2 , 50);
    


%% Seccio d

tol = 0.0005;
for i = 1:10
    stef = Steffensen(g2, 0, tol, i);
    printf('%d \t& %.16f \n', i, stef);
end