%% Squares
% FOUR squares on a plot
% *Grouping:*
% Plot 1: 10 -> 50 
% Plot 2: 10 -> 100
RU = randn(10000, 1)
RN = randn(10000, 1)
subplot(221), plot(RU), title('uniform')
subplot(222), hist(RU, 100), title('uniform')
subplot(223), plot(RN), title('normal')
subplot(224), hist(RN, 100), title('normal')

%% Subplot warning
% It's an ID just as a HTML error message:
% Mid number is number cols
% Last number is plot ID
