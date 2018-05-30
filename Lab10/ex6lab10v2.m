%% Exercici 6 | Lab 10
% Interpolació polinomial

%% Data
x = [-4         :          5]
y = [0   0  0  1 1 1 0 0 0 0]

plot (x, y, '-*'), title('nodes')
legend('nodes', 'location', 'best')


x = 1:6;
y = [16 18 21 17 15 12];
disp([x; y])
u = 0.75 : 0.05 : 6.25;
v = polyinterp(x,y,u);
subplot(2,2,1), plot(x, y, 'o',  u, v, 'r-'), title('Full degree interpolation')
legend('nodes', 'location', 'best')



