%% Exercici4 - full4.pdf
%  mètodes iteratius del punt fix
%% Equació
f=@(x)x+log(x);
t=0.1:0.01:1;
plot(t,f(t),t,zeros(size(t)),'m'),grid,title('Equació')

%% Fzero de Matlab
alpha=fzero(f,0.5)

%% Mètode iteratiu 1
g1=@(x)-log(x);
dg1=@(x)-1./x;
x0=0.5; tol=0.0005; N=10;
if abs(dg1(x0))<1 
    [ arrel , X  ] = new_fixpt( f,g1,x0,tol,N )
else
    disp('Mètode divergent')
end

%% Mètode iteratiu 2
g2=@(x)exp(-x);
dg2=@(x)-exp(-x);
x0=0.5; tol=0.0005; N=20;
if abs(dg2(x0))<1 
    [ arrel , X ] = new_fixpt( f,g2,x0,tol,N )
    tolf=f(X)
else
    disp('Mètode divergent')
end
%% Mètode iteratiu 3
g3=@(x)(x+exp(-x))/2;
dg3=@(x)(1-exp(-x))/2;
x0=0.5; tol=0.0005; N=20;
if abs(dg3(x0))<1 
    [ arrel , X ] = new_fixpt( f,g3,x0,tol,N )
    tolf=f(X)
else
    disp('Mètode divergent')
end

%% Estudi convergència
y=ones(size(t));
plot(t,f(t),t,dg1(t),t,dg2(t),t,dg3(t),alpha,dg1(alpha),'rs',alpha,dg2(alpha),'rs',alpha,dg3(alpha),'rs',t,y,'c',t,-y,'c','LineWidth',2),grid,title('x^6=x+1')
legend('equació','mètode 1','mètode 2','mètode 3','Location','best')