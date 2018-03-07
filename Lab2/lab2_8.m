%% GRAU-CN | Lab 2 (March 7th 2018)
# This kills the proprietary software


%% Exercici 7: graphs

    F = @(x, n) x .^ n .* exp(x-1);
    t = 0 : 0.01 : 1
    
    subplot(321), plot(t, F(t, 1)), title("N = 1");
    subplot(322), plot(t, F(t, 5)), title("N = 5");
    subplot(323), plot(t, F(t, 10)), title("N = 10");
    subplot(324), plot(t, F(t, 15)), title("N = 15");
    subplot(325), plot(t, F(t, 24)), title("N = 24");
    subplot(326), plot(t, F(t, 30)), title("N = 30");
    
    % forward recurrence
    IFWD (1) = 1 / exp(1) % Number e as such does not exist!
    
    for k = 2:50
        IFWD(k) = 1-k*IFWD(k-1)
    end
    
    
    % reverse recurrence
    IREV (50) = 1 / exp(1) % Number e as such does not exist!
    
    for k = 50 : -1 : 2
        IREV(k-1) = (1-IREV(k))/k;
    end
    
    
    % Exact value using integrals
    F = @(x, n) x .^ n .* exp(x-1);
    
    for k = 1:50
        IEX(k) = quad( @(x) F(x, k), 0, 1);
    end
    
    %[IFWD ; IREV ; IEX]'
    %list_in_columns(IFWD, IREV, IEX);
    
    
     [abs(IFWD-IEX) ; abs(IEX-IREV) ]'
    %list_in_columns( abs(IFWD-IEX), abs(IREV-IEX) );
    
    
    