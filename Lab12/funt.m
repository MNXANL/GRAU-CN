function [ y ] = funt(x) 
    % sin(x)/x    if x /= 0
    % 1           if x == 0
    if x == 0
        y = 1
    else
        y = sin(x) ./ x;
    end
end

