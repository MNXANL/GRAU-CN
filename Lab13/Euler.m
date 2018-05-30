function [ ye ] = Euler( f, a, b, h, alpha )
%UNTITLED7 Summary of this function goes here
%   Detailed explanation goes here
    h = 0.1;
    t = [a : h : b];
    N = length(t)
    ye(1) = alpha;


    for i=1:N-1
        ye(i+1) = ye(i) + h*f(t(i), ye(i)); 
    end
end