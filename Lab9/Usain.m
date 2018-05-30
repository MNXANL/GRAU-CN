%% Speed + Accel
% Usain Bolt is 2fast4u

%% Data
clear ; clc;
r = 0 : 10 : 100;
t = [0, 1.85, 2.89, 3.78, 4.64, 5.49, 6.31, 7.11, 7.92, 8.74, 9.58];
data = [r ; t]'

subplot(3, 1, 1), plot(r, t, '*-'), title('Time')
xlabel('m'), ylabel('s')


%% Speed
v = diff(r) ./ diff(t)
% Loop per diff centrada!
v(11) = (r(11) - r(10)) / (t(11) - t(10));

subplot(3, 1, 2), plot(r, v, '-r*'), title('Speed')
xlabel('m'), ylabel('m/s')



%% Accel
a = diff(v) ./ diff(t)
a(11) = (v(11) - v(10)) / (t(11) - t(10));

subplot(3, 1, 3), plot(r, a, '-m*'), title('Accel')
xlabel('m'), ylabel('m/s^2')
