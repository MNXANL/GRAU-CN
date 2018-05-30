%% Exercici 7 | Lab 10
% Usain Bolt is still 2fast4u

%% Data
r = 0 : 10 : 100;
t = [0, 1.85, 2.89, 3.78, 4.64, 5.49, 6.31, 7.11, 7.92, 8.74, 9.58];
data = [r ; t]'

subplot(3, 1, 1), plot(r, t, '*-'), title('Time')





plot (r, t, '-*'), title('nodes')
legend('nodes', 'location', 'best')

%% Poly interpolador
n = length(x);
p = polyfit(x, y, n-1);
coef = p'





