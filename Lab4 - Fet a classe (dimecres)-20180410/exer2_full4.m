%% Exercici2 - full4.pdf
%  mètodes iteratius del punt fix
%% Equació
f=@(x)x.^6-x-1;
t=1:0.01:1.4; %0:0.1:2;
plot(t,f(t)),grid,title('Equació')

%% Fzero de Matlab
alpha=fzero(f,1)

%% Localització
a=1; b=1.4; c=a+(b-a)/2; valorF=[f(a),f(c),f(b)], l=(c-a)
%% Mètode iteratiu 1
g1=@(x)x.^6-1;
dg1=@(x)6*x.^5;
x0=c; tol=0.0005; N=10;
if abs(dg1(x0))<1 
    [ arrel , X  ] = new_fixpt( f,g1,x0,tol,N )
else
    disp('Mètode divergent')
end

%% Mètode iteratiu 2
g2=@(x)(x+1).^(1/6);
dg2=@(x)1./(x+1).^(5/6)/6;
x0=c; tol=0.0005; N=10;
if abs(dg2(x0))<1 
    [ arrel , X ] = new_fixpt( f,g2,x0,tol,N )
    tolf=f(X)
else
    disp('Mètode divergent')
end

%% Estudi convergència
y=ones(size(t));
plot(t,f(t),t,dg1(t),t,dg2(t),alpha,0,'rs',alpha,dg1(alpha),'rs',t,y,'c',t,-y,'c','LineWidth',2),grid,title('x^6=x+1')
legend('equació','mètode 1','mètode 2','Location','best')