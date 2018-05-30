%% Exercici 6 | Lab 10
% Interpolació polinomial


x = 1:6;
y = [16 18 21 17 15 12];
disp([x; y])
u = 0.75 : 0.05 : 6.25;
v = polyinterp(x,y,u);


vpz = interp1(x, y, u)
subplot(2,2,1), plot(x, y, 'o',  u, v, 'r-'), title('Full degree interpolation')
subplot(2,2,2), plot(x, y, 'o',  u, vpz, 'r-'), title('2nd interpolation')
legend('nodes', 'location', 'best')



