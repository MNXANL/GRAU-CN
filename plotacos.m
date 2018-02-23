%% Plots
% Three functions one plot

%%
x = 0:2*pi
y1 = sin(x)
y2 = sin(x-0.25)
y3 = sin(x-0.5)
%plot(x, y1, '*', y2, '-', y3, 'o'), title('grafiquisima'), grid
%% Hold on/off
% Hold on to start writing plots on same window. Hold off to 'release'
plot(x, y1), hold on
plot(x, y2, 'o') ; pause(2)
plot(x, y3, :) ; pause
hold off
%% Pause
% Pause lets you stop the command win execution at a given place
% MUST be separated with semicolons
% Pause cannot be used with Matlab's publish :(
plot(x, y1) %hold on
plot(x, y2, 'o');  pause(2)
plot(x, y3, :) ; pause
%hold off
