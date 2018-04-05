%% Exemple de normes vectorials i matricials
%

vec = [1 2 3 4 -5 -6 -7 8 9 10];


norm(vec)         % Norma (2)
norm(vec, 2)      % Norma 2
norm(vec, 1)      % Norma 1
norm(vec, 'inf')  % Norma infinity
norm(vec, 'fro')  % Norma Frobenius


%% Matrix (is a lie)
A = [1, 2, 0 ; -1, -3, 5 ; 0, 0, -100]  %Commas optional

norm(A, 1)
norm(A, 'inf')
norm(A, 'fro')


% Ops random matrices
sum(abs(A))
sum(sum(abs(A)))
eig(A)
sqrt(eig(A' * A))
det(A)


%% Linear Systems
A = [1 2 0 ; -1 -3 5 ; 0 0 -100]
b = [3; 1; -100]
X = A\b