function [m,s] = fn_stat(x)
    
    % Calcula o desvio standar de um conjunto de valores
    % 
    % uso:
    %       [m,s] = fn_stat(x)
    %
    %       x: é um vetor de n componentes
    %       m: média dos valores
    %       s: desvio padrão
    %

    % número de elementos
    n = length(x);

    % media
    m = sum(x)/n;

    % desvio padrão
    s = sqrt(sum((x-m).^2/n));
end
