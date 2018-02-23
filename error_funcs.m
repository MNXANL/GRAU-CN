%% Functions

% IMPORTANT: Function has to have same name as file name!!!
%function [output_args] = filename([input_args])
%   ... code goes here
%end

function [e_abs, e_rel, e_r_p] = error_funcs(x, y)
    e_abs = abs(x/y)
    e_rel = abs(e_abs/x)
    e_r_p = e_rel * 100
end



