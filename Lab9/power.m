%% Ex 3 | Lab 9
% POWAAAAAAAAAAAAAAAAAAAAAAAAAAAR method
% Teoria de esto: jajajajaja

%% Valor propi de max modul

A = [ 1 0 -1 ; 1 2 1 ; 2 2 3]
x0  = [0  0  1]';
%x1 = [1 -1  1]';

x = x0;
it = 0;
ITER_MAX = 25;
tol = 0.0005;
err = norm(x, 'inf');
table(iter, :) = [0, x'];
while(it < ITER_MAX && tol < err)
	z = A*x;
	m = norm(z, 'inf') 	% Candidat valor propi
	z = z/m 			% Candidat vector propi
	it = it+1;
	err = norm(x-z, 'inf');
	x = z;
	table(iter, :) = [m, x'];
end

vep = z;
vap = m;

%% Check
prova = A*vep - vap*vep;


