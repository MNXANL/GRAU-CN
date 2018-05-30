function [ ye ] = RungeKutta( f, a, b, h, alpha )
% Euler millorat
    t = [a : h : b];
    N = length(t)
    ye(1) = alpha;


    for i=1:N-1
        
        k1 = h * f(t(i)    , ye(i)       ); 
        k2 = h * f(t(i)+h/2, ye(i) + k1/2); 
        k3 = h * f(t(i)+h/2, ye(i) + k2/2); 
        k4 = h * f(t(i+1)  , ye(i) + k3); 
        
        ye(i+1) = ye(i) + (k1 + k2+k2 + k3+k3 + k4) ./ 6;
    end
end