%% Exercici5 - full4.pdf
%  mètodes iteratius del punt fix

%% Estudi convergència
g1=@(x)(8*x-x.^2)/4;
dg1=@(x)(8-2*x)/4;
g2=@(x)(x.^2-4)/3;
dg2=@(x)2*x/3;
g3=@(x)sqrt(3*x+4);
dg3=@(x)3./sqrt(3*x+4)/2;
alpha=4;
t=0:0.01:8;
y=ones(size(t));
plot(t,dg1(t),t,dg2(t),t,dg3(t),alpha,dg1(alpha),'rs',alpha,dg2(alpha),'rs',alpha,dg3(alpha),'rs',t,y,'c',t,-y,'c','LineWidth',2),grid,title('x^6=x+1')
legend('mètode 1','mètode 2','mètode 3','Location','best')

%% Mètode iteratiu 1
x0=3; tol=0.000005; N=6;
if abs(dg1(x0))<1 
    [ arrel , X  ] = new_fixpt( f,g1,x0,tol,N )
else
    disp('Mètode divergent')
end

%% Mètode iteratiu 3
x0=3; tol=0.000005; N=6;
if abs(dg3(x0))<1 
    [ arrel , X  ] = new_fixpt( f,g3,x0,tol,N )
else
    disp('Mètode divergent')
end

