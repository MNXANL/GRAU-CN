%% GRAU-CN | Pràctica A
% Errors de truncament -> Exercici 2 (jocs de prova)
format long

Values = 1 : 20;


for i = 1 : 20
    Values(i) = InfinitePartialSums(i);
    fprintf('%d & %.16f \n', i, Values(i));
end
