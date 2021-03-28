%
% O objetivo deste script é mostrar a estrutura de controle if
% com um exemplo de verificação da porosidade de um solo
%

% porosidade inicial
po = 0.2;

% porosidade mínima
poro_min = 0.001;

% numero de incrementos
nincre=20;

% incremento de deformação
devol=linspace(0,0.25,nincre);

% vetor de porosidade
p = zeros(nincre,1);

for i=1:nincre

	p(i) = atualiza_porosidade(po,devol(i));

	% verifica o valor obtido
	if p(i) <= poro_min
	    p(i) = poro_min;
	end
end

plot(devol,p);
xlabel("deformação volumétrica")
ylabel("porosidade")

function p = atualiza_porosidade(po,evol)
	% calcula nova porosidade em função
	% da do incremento de deformação volumétrica
    % 
    % uso:
    %       p = atualiza_porosidade(po,devol)
    %
    %       p: nova porosidade
    %       po: porosidade inicial
    %       devol: variação de deformação volumétrica
    %

    % calcula a porosidade
    p = 1-(1-po)*exp(1)^evol;
end