%% Symbolic

syms x
eqn = (sin(x) == 1)
solx = solve(eqn, x)

% Ejemplo: carga el script, y haz:
% >> x = 0 : 0.1 : 2

t = -2*pi : 0.1 : 2*pi
plot(t, sin(t), t, ones(size(t)), solx, 1, '*', 'LineWidth', 2)


%%

syms x
f(x) = sin(x^2)
df = diff(f, x)
t = -2*pi : 0.1 : 2*pi
plot(t, f(t))