%% Exercici 5 | Full 
4
% iterative fixed-point methods

% Estudi convergencia
g1 = @(x)  (8*x - x.^2) ./ 4;
dg1= @(x)  (8 - 2*x)./4

g2 = @(x)  (x.^2 - 4)./3;
dg2= @(x)  (2*x)./3

g3 = @(x)  sqrt(3.*x + 4);
dg3= @(x)  3./(2 * sqrt(3*x + 4) )


%% Stuff

alpha = 4

x0 = 3;
tol = 0.000005;
N = 10;

t = 0 : 0.1 : 8
y = ones(size(t))



%% Plotaco



plot(t, dg1(t), t, dg2(t), t, dg3(t), alpha, 0, 'rs', alpha, dg1(alpha), 'rs', alpha, dg3(alpha), 'rs', t, y, 'c', t, -y, 'c'), grid, title('Ex 4');
legend('Method 1', 'Method 2', 'Method 3', 'Location', 'BEST' );



%% Iterative method 1


if abs(dg1(x0)) < 1
    [raiz, iters] = newton_fixpoint(f, g1, x0, tol, N);
    tolf = f(iters);
else
    disp('Divergent method')
end   





if abs(dg2(x0)) < 1
    [raiz, iters] = newton_fixpoint(f, g2, x0, tol, N);
    tolf = f(iters);
else
    disp('Divergent method')
end   





if abs(dg3(x0)) < 1
    [raiz, iters] = newton_fixpoint(f, g3, x0, tol, N);
    tolf = f(iters);
else
    disp('Divergent method')
end   





