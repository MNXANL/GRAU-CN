format compact
x = 2+3

% Saves stuff in a file
%diary memes.txt

vec = 0:10
vec2in2 = 0:2:10

w = 10:-3:-10

% linspace(begin, end, num_occurrences)
%z = linspace(10, 100, 20)

% Stops file saving
%diary off

a = ones(4)
a = zeros(4)
b = diag(vec2in2)

% Custom matrix 
CM = [1 2 3 4 ; 4 5 4 5 ; 6 7 8 9 ; 1 2 3 5]

% Row
CM(1, :) % First row

% Col ; watch out for the comma!!!
CM(: ,3) % Second col