%% Lab 4 | Exercici 2
% Iterative fixed-point methods

%% Apartat a)

% Defining an equation
t = 1 : 0.05 : 1.4; % 0 : 0.05 : 2
f = @(x)    x.^6 - x - 1;

alpha = fzero(f, 1)

plot(t, f(t), t, zeros(size(t))), grid, title('Plotaco')


%% Apartat c)

g1  = @(x)    x.^6 - 1;
dg1 = @(x)    6*x.^5;

x0 = 1;
tol = 0.0005;
N = 10;

if abs(dg1(x0)) < 1
    [raiz, iters] = newton_fixpoint(f, g1, x0, tol, N);
    tolf = f(iters);
else
    disp('Divergent method')
end    

% % % % % % % % % % % % % % % 
% g2 = (@)x sqrt(x.^6 - 1;  %
% % % % % % % % % % % % % % % 

g2  = @(x)    (x + 1).^(1/6);
dg2 = @(x) 1./(x + 1).^(5/6)/6;

x0 = 1;
tol = 0.0005;
N = 10;

if abs(dg2(x0)) < 1
    [raiz, iters] = newton_fixpoint(f, g2, x0, tol, N);
    tolf = f(iters);
else
    disp('Divergent method')
end    



% CONVERGENCY

y = ones(size(t));

plot(t, f(t), t, dg1(t), t, dg2(t), alpha, 0, 'rs', alpha, dg1(alpha), 'rs', alpha, dg2(alpha), 'rs', t, y, 'c', t, -y, 'c'), grid, title('Ex 4');
legend('Equation', 'Method 1', 'Method 2', 'Location', 'BEST' );



