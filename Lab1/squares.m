%% Squares
% Two squares on a plot
RU = rand(10000, 1)
RN = rand(10000, 1)
subplot(211), hist(RU)
subplot(212), hist(RN)

%%

% Alternative grouping for each plot: 
% Plot 1: 10 -> 50 
% Plot 2: 10 -> 100
RU = rand(10000, 1)
RN = rand(10000, 1)
subplot(211), hist(RU, 50)
subplot(212), hist(RN, 100)


