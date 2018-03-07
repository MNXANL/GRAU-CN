%% Format changes in matlab
% Some *BODY* one told _me_ the |world| is gona roll me
%
% Default format is []
x = 1/7

format long 	% Set a format for a file from that point onwards 
format short 
format compact

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
disp('Displaying several formats...')

% Formats a variable (x) depending on a certain criterion (e | g | eng | ...)
% Note that the last one remains there!!!
format short e, x
format short g, x
format short eng, x 	%eng stands for 'engineering'

disp('... same formats but using [long]...')
format long e, x
format long g, x
format long eng, x
%g stands for 'engineering'

publish('memes.m')


