%% Iterative methods
% Examplerino

A = [1 0 1 ; -1 1 0 ; 1 2 -3];
b = [4 ; 1 ; -4];

% Aux matrices

diag(A);

diag([1 2 3]) % <-- Zero matrix with these elems on the diagonal


D = diag(diag(A));
L = tril(A, -1);
U = triu(A, +1);


%% J a c o b i

aux = inv(D);
Bj = -aux*(L+U);
cj = -aux*b;

rhoJ = max(abs(eig(Bj)))
if (rhoJ < 1);
    fprintf('Metode de Jacobi Convergent\n');
    iter = 300;
    tol = 0.0005;
    [X, R] = itera(A, b, Bj, cj, iter, tol)
else
    fprintf('Metode de Jacobi Divergent\n');
end

%% G a u s s - S e i d e l

aux = inv(L+D);
Bs = -aux*(U);
cs = -aux*b;
rhoS = max(abs(eig(Bs)))
if (rhoS < 1);
    fprintf('Metode de G-S Convergent\n');
    iter = 3;
    tol = 0.005;
    [X, R] = itera(A, b, Bs, cs, iter, tol)
else
    fprintf('Metode de G-S Divergent\n');
end


%% S O R (w)
w = 1.5;
    aux = inv(w*L+D);
    Bw = -aux*((1-w)*D - w*U);
    rhoW(k) = max(abs(eig(Bw)))

