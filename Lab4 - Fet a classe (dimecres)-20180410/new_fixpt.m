function [ arrel , x_sol] = new_fixpt( f,g,x,tol,N )
% mètode del punt fix
%   Dades: f=equació, g=funció iterativa,x=punt inicial
%          tol=cota_errors, N=cota_iteracions
k = 0;
tolx = 1; tolf=abs(f(x)); err=max(tolx,tolf);
x_sol=x;
while (err >tol && k < N)
   xprev = x;
   x = g(x);
   k = k + 1;
   tolx=abs(x - xprev);
   tolf=abs(f(x));
   err=max(tolx,tolf);
   x_sol=[x_sol,x];
end
arrel = x;
end