function [p] = Steffensen(f, p0, tol, iterations)

format long    % This prints more decimal places. 

for i = 1 : iterations
    p1 = f(p0);
    p2 = f(p1);
    p = p0 - (p1-p0).^2/(p2 - 2*p1 + p0);
                                
    if abs(p-p0) < tol 
        break         
    end
    p0=p; 
end
if abs(p-p0)>tol
    fprintf('failed to converge in 1000 iterations.');
end