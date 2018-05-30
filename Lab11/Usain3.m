%% Speed + Accel
% Usain Bolt is 2fast4u

%% Data
clear ; clc;
r = 0 : 10 : 100;
t = [0, 1.85, 2.89, 3.78, 4.64, 5.49, 6.31, 7.11, 7.92, 8.74, 9.58];
data = [r ; t]'

z = 0 : 100;
sr = spline(r, t, z);

subplot(3, 1, 1), plot(r, t, '*-', z, sr), title('Time')
xlabel('m'), ylabel('s')


%% Speed but corrected
v(1) = 0;

for i = 2 : 11
    v(i) = (r(i) - r(i-1)) / (t(i) - t(i-1));
end

sv = spline(r, v, z);

subplot(3, 1, 2), plot(r, v, '-r*'), title('Speed')
xlabel('m'), ylabel('m/s')



%% Accel

a(1) = 0;

for i = 2 : 11
    a(i) = (v(i) - v(i-1)) / (t(i) - t(i-1));
end

sa = spline(r, a, z);

subplot(3, 1, 3), plot(r, a, '-m*'), title('Accel')
xlabel('m'), ylabel('m/s^2')


