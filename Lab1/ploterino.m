%% Plots
% Examples of plots
% *Really simple plot*
x = 0:2*pi
y = sin(x)
plot(x, y)

%% WTF, where's the plot???
x = 0 : (pi/20) : 2*pi  % Semicolon avoids numbers!
y = sin(x)
plot(x, y)

%% Semicolon at the end of a line generates the plot!!!
x = 0 : (pi/20) : 2*pi ; 
y = sin(x)
plot(x, y)

%% Three functions one plot
x = x = 0 : (pi/20) : 2*pi ; 
y1 = sin(x)
y2 = sin(x-0.25)
y3 = sin(x-0.5)
plot(x, y1, y2, y3), title('3-in-1'), grid

%% Which plot is which? Assign them a (simple) symbol
plot(x, y1,'*', y2,'--', y3, 'x'), title('3-in-1'), grid

%% Different plots, different windows
plot(x, y1, 'o'), hold on
plot(x, y2, 'o') ; pause %click on cmd life
plot(x, y3, 'o')
hold off