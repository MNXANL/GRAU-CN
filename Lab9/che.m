%% Ex 2 | Lab 9
% YO MR WHITE, CHEMISTRY BIATCH

%% Sistema lineal
A = [1 1; 2 1; 1 2; 2 3; 2 5; 2 4];
b = [30.006; 44.013; 46.006; 76.012; 108.01;  92.011];

% Sobredeterminat? SÍ!
rnk = rank(A)
rnk_ampliada = rank([A, b])


%% Normal  equations
%
B = A' * A
c = A' * b
x_min = B\c


%% Min residu
r_min = norm( (b - A*x_min), 2)	%
z = [0; -1; 2; -1] 				% [14, 16]
r = norm(b - A*z)				% [14, 15.99]

%% Matrix pseudo-inversa Moore-Penrose

y_min = pinv(A)*b
