function [ ye ] = EulerMill( f, a, b, h, alpha )
% Euler millorat
    h = 0.1;
    t = [a : h : b];
    N = length(t)
    ye(1) = alpha;


    for i=1:N-1
        
        k1 = h * f(t(i), ye(i)); 
        k2 = h * f(t(i+1), ye(i)+k1); 
        
        ye(i+1) = ye(i) + (0.5*(k1+k2)) ;
    end
end