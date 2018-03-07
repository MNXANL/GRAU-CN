%% GRAU-CN | Lab 2 (March 7th 2018)
# This kills the proprietary software


%% Exercici 5 : loss of accuracy on significant digits

    % Lambda/anon functions
    f = @(x) sqrt(x .^ 2+1) - 1;
    g = @(x) (x .^ 2) ./ sqrt(x .^ 2+1) - 1;
    
    qtpie = -2*pi : 0.1 : 2*pi;

    n = 1:15;        % array [1 .. 5]
    t = 8 .^ (-n);
    
    y1 = f(t)
    y2 = g(t)
    
    [n ; t ; y1 ; y2]'  %
    

