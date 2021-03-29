%
% O objetivo deste script é mostrar a estrutura de controle while
% com um exemplo típico de simulação numérica 
%

% tolerância do algoritmo (erro máximo admissível)
erro_adm = 0.001;

% numero de iterações máximas
niter_max=150;

% iteração inicial
niter = 1;

% loop principal da simulação
while ( niter<niter_max )

    % obtém o erro da solução (tolerância)
    erro_solucao = update_approximation();
    
    % incrementa a iteração em 1
    niter = niter + 1;
    
    if erro_solucao<erro_adm
        break;
    end
end

% imprime o número de interação e o erro
fprintf('Na iteração %d o erro foi %f \n',niter,erro_solucao)

function tolerance = update_approximation()
	
	%
	% função que define um erro aleatório simulando um erro obtido
	% numa simulação numérica aproximada
    %
    tolerance = rand();
end