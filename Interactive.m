%% Interactive scripts
% Example of a 'hard-coded' script
% Abs error, rel error and percentage relative error

clear all, clc, format compact % nice options

x = pi
y = 22/7
%%
% Abs error
e_abs = abs(x-y)
%%
% Relative error
e_rel = e_abs/abs(x)
%%
% Relative error (percent)
e_r_p = e_rel * 100

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% The same, but interactive!
% Does not work with publish, but with editor (duh)
x = input('value of X: ') % pi
y = input('value of Y: ') % 22/7
%%
% Abs error
e_abs = abs(x-y)
disp('Abs error'), disp(e_abs)
%%
% Relative error
e_rel = e_abs/abs(x)
disp('Relative error'), disp(e_rel)
%%
% Relative error (percent)
e_r_p = e_rel * 100
disp('Relative error but in percent'), disp(e_r_p)

