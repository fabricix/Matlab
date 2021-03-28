%
% O objetivo deste script é calcular a tensão inicial no solo
%

% altura
height = 10;

% número de pontos
npoints = 100;

% peso específico do solo (kg/m3 *10 N/kg)
specific_weight = 2500*10;

% discretizando a altura do solo
soil_height = linspace(0,height,npoints);

% define se um vetor para armacenar cada valor 
initial_stress = zeros(1,npoints);
 
% calcula a tensão em cada ponto
for i = 1:npoints
    initial_stress(i) = soil_height(i)*specific_weight;
end

% plota os resultados
plot(initial_stress,soil_height)

% colocar o eixo Y em reversa para melhor interpretação
set(gca, 'YDir','reverse')

% coloca os titulos nos eixos
xlabel('Tensão no solo (Pa)')
ylabel('Altura do solo (m)')