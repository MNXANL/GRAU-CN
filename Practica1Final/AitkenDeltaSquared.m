%Accelerating Convergence
%11 The following sequences converge to 0. Use Aitken's delta square method
%to generate{pn^} until|pn^|<=5*1E-2
function [aitken] = AitkenDeltaSquared(f, maxIterations)
    format long
    for i = 1 : maxIterations
     x(i) = f(i);
    end
    iterats = x'

    % % % % % % % % % % % 

    n = length(x);
    a(:,1) = x';
    for j=1:2
        for i=j:n-1
            a(i+1, j+1) = (a(i+1,j) - a(i,j));
        end
    end
    for i=2 : n-1
        a(i+1, 4) = a(i+1,1) - a(i+1,2)^2/a(i+1,3);
    end
    aitken=a(:,[1,4])


end