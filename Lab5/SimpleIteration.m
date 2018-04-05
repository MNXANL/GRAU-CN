%% Simple iteration method
% Exercise 2
%% Graphic function
% 2-var function
F1 = @(x, y) sin(x + y) - x;
F2 = @(x, y) cos(x - y) - y;

% Iterative function
G1 = @(x, y) sin(x + y);
G2 = @(x, y) cos(x - y);

DoG = [cos(x+y), cos(x+y);
      -sin(x-y), sin(x-y)];  % Derivative of G

x = 1;
y = 1;



fimplicit(F1, [-2, 2, -2, 2]);
hold on
fimplicit(F2, [-2, 2, -2, 2]);
hold off

F = [F1(x, y) ; F2(x, y)];
x = 1;y = 1;
tol = 0.0000001;
tolf = norm(F);
tolz = norm([x,y]);
tolerance = max(tolz, tolf);

while (k < 5 && eps < tolerance)
    x = G1(x, y);
    y = G2(y, y);
    
    F  = [F1(x, y); F2(x, y)]

    tolf = norm(F);
    tolz = norm([x,y]);
	tolerance = max(tolz, tolf);
    k = k+1;
     
end



sols = [x ; y];
tols = [tolz ; tolf];
