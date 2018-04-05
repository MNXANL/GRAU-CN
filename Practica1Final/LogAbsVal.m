function [ r ] = LogAbsVal( f, iters )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
    x1 = 1;
    for i = 2 : iters
        x0 = x1;
        x1 = f(x0);
        r(i) =  (f(x1) - f(x0)) / f(x1);
    end
    
   
end

