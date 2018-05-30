%% CN | Exercici 4
% Reverse interpolation

x = [0.5, 0.55, 0.6];
y = exp(-x) - x;

p = polyfit(y, x, 2)


alpha = polyval(p, 0)
casizero = alpha - exp(-alpha)

%% Usain Bolt is still 3fast5u... today

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



%% Speed + Accel
% Usain Bolt is 2fast4u

%% Data
r = 0 : 10 : 100;
t = [0, 1.85, 2.89, 3.78, 4.64, 5.49, 6.31, 7.11, 7.92, 8.74, 9.58];
data = [r ; t]'

subplot(3, 1, 1), plot(r, t, '*-'), title('Time')



%% Speed
v = diff(r) ./ diff(t);
% Loop per diff centrada!
v(11) = (r(11) - r(10)) / (t(11) - t(10));

subplot(3, 1, 2), plot(v, r, 'r*'), title('Speed')



%% Accel
a = diff(v) ./ diff(t);
a(11) = (a(11) - a(10)) / (t(11) - t(10));

subplot(3, 1, 3), plot(a, r, 'c*'), title('Accel')





