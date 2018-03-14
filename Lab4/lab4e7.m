%% Exercici 5 | Full 4
% iterative fixed-point methods

% Estudi convergencia

%% Stuff

alpha = 4

x0 = 1;
tol = 0.000005;
N = 10;

t = 0 : 0.1 : 8
y = ones(size(t))

%% Iterative method 1

g2  = @(x)    exp(-x);
dg2 = @(x)   -exp(-x);

x0 = 0.5;
tol = 0.0005;
N = 10;

if abs(dg2(x0)) < 1
    [raiz, iters] = newton_fixpoint(f, g2, x0, tol, N);
    tolf = f(iters);
else
    disp('Divergent method')
end    



%% Iterative method 2


g3  = @(x)   (x + exp(-x))/2;
dg3 = @(x)   (1 - exp(-x))/2;

x0 = 0.5;
tol = 0.0005;
N = 10;

if abs(dg3(x0)) < 1
    [raiz, iters] = newton_fixpoint(f, g3, x0, tol, N);
    tolf = f(iters);
else
    disp('Divergent method')
end    




%% Plotaco



plot(t, g1(t), t, dg1(t), t, dg2(t), t, dg3(t), alpha, 0, 'rs', alpha, dg1(alpha), 'rs', alpha, dg3(alpha), 'rs', t, y, 'c', t, -y, 'c'), grid, title('Ex 4');
legend('Equation 1', 'Method 1', 'Method 2', 'Method 3', 'Location', 'BEST' );


