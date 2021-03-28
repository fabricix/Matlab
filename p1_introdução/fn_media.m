function ave = fn_media(x)

    % Calcula a média de um vetor
    % 
    % uso:
    %       val = fn_media(x)
    %
    %       x: é um vetor de n componentes
    %       val: valor medio dos elementos do vetor
    %
    
    ave = sum(x(:))/numel(x); 
end
