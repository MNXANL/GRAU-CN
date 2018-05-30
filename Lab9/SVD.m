%% Ex 1 | Lab 9
% Sys sobredeterminat

%% Sistema lineal
A = [1 1 1 0; 1 0 1 2 ; 1 1 0 1 ; 0 -1 2 0 ; -1 1 -1 1];
b = [2; 3; 4; 2; 1];

% Sobredeterminat?
rnk = rank(A)
rnk_ampliada = rank([A, b])


%% Normal  equations
%
B = A' * A
c = A' * b
x_min = B\c


%% Min residu
r_min = norm( (b - A*x_min), 2)

z = [0; -1; 2; -1] 
r = norm(b - A*z)

%% Matrix pseudo-inversa Moore-Penrose

y_min = pinv(A)*b
