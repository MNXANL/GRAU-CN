function [ r ] = Convergence( f, maxIterations )
    format long
    r = f(1);
    for i = 1 : maxIterations
        r = f(r);
    end
end

