%% Lab 4 | Exercici 4
% Iterative fixed-point methods

%% Apartat a)

% Defining an equation
t = 0.1 : 0.05 : 1; % 0 : 0.05 : 2
f = @(x)    x + log(x);


plot(t, f(t), t, zeros(size(t)), 'r'), grid, title('Plotaco')


% Localization
alpha = fzero(f, 0.5);

%% Apartat c)

g1  = @(x)    -log(x);
dg1 = @(x)    (-1./x);

x0 = 0.5;
tol = 0.0005;
N = 10;

if abs(dg1(x0)) < 1
    [raiz] = newton_fixpoint(f, g1, x0, tol, N);
    tolf = f(iters);
else
    disp('Divergent method')
end    

% % % % % % % 
% METHOD 2  %
% % % % % % % 

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



% % % % % % % 
% METHOD 3  %
% % % % % % % 

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


% CONVERGENCY

y = ones(size(t));

plot(t, f(t), t, dg1(t), t, dg2(t), t, dg3(t), alpha, 0, 'rs', alpha, dg1(alpha), 'rs', alpha, dg3(alpha), 'rs', t, y, 'c', t, -y, 'c'), grid, title('Ex 4');
legend('Equation', 'Method 1', 'Method 2', 'Method 3', 'Location', 'BEST' );




