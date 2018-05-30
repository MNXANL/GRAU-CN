%% Exercici 2 | Lab 11
% Distance done by a phone calculator
t = 0 : 6 : 36;
v = [1 8 4 3.5 5 1 0]


%% a)
% Plot

z = 0 : 36;
sz = spline(t, v, z);
plot(t, v, '*',  t, v,   z, sz);




%% b)
% Regla del punt mig
disp('Un rectangle')
R1 = (t(7)-t(1))*v(4)


disp('Tres rectangles')
R3 = (t(3)-t(1))*v(2) + (t(5)-t(3))*v(4) + (t(7)-t(5))*v(6)




%% c)
% Trapezis
disp('Sis trapezis')
are = t;gay = v;

T6 = trapz(are, gay)
Matlab_Y_U_DoDis = cumtrapz(are, gay)'

%% d)
% Simpson REVISAR


Sfh = t(2) - t(1)

Fracs = v(1) + 4*v(2)+v(3) + (v(3)+4*v(4)+v(5)) % + ...

S3 = (h/3) * Fracs