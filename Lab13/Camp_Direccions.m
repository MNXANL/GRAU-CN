%% Camp de direccions
%  

f = @(t, y) 7 .* y .* (1-y);

t =  0 : 0.2 : 2;
y = -2 : 0.2 : 2;

[TT, YY] = meshgrid(t,y);

DT = ones(size(TT));
DY = f(TT, YY);


%% PVI

u0 = dsolve('Du=7*u*(1-u)', 'u(0)=0');   % ans = 0
u1 = dsolve('Du=7*u*(1-u)', 'u(0)=1');

[t5, y5]   = ode45(f, [0,2], 0.5)
[t15, y15] = ode45(f, [0,2], 1.5)
[t1, y1]  = ode45(f, [0,2], 1.0)
[tm2, ym2]  = ode45(f, [0,2], -0.2)



table = [t,y]
%% Plots
figure
hold on
quiver(TT, YY,  DT, DY)
ezplot(u0, [0,2])
ezplot(u1, [0,2])
plot(t5, y5,  t15, y15,  t1, y1,  tm2, ym2)
title('Du = 7*u * (1-u)')
hold off


