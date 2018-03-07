%% Hello world
% Matlab is shit
format compact
x = 2+3

diary memes.txt

vec = 0:10
%%
vec2in2 = 0:2:10
%%
w = 10:-3:-10
%%
z = linspace(10, 100, 20)
%%
diary off
%%
% Matrix of just ones
a = ones(4)
%%
% Matrix of just zeroes
a = zeros(4)
%%
b = diag(vec2in2)
%%
% Custom matrix
CM = [1 2 3 4 ; 4 5 4 5 ; 6 7 8 9 ; 1 2 3 5]

%%
%Rows
CM(1,:)

%Cols ; watch out for the comma!!!
CM(:,3)

%Kill a row/col by assigning it to a empty row/col
CM(3, :) = []

%Overwrite a row/col by assigning it to a empty row/col
CM(3, :) = [3 6 9 12]
%%
%Matrix determinant
det(a)

% Rank(B) // Similar rows on mat
rank(b)

%Transposability
c = magic(5)
%%
%Documentation / also on HELP
doc magic %square

% Same but on fancy text, like UNIX's man
help magic %square
%%
% Clear workspace
clear

% Clear matrices
clear a
clear b
clear c

% KILL'EM ALL
clear all