%
% O objetivo deste script é mostrar a estrutura de controle switch
% com um exemplo que mostra o comportamento constitutivo de materiais 
%

% vetor de deformação
strain = linspace(0,0.1,100);

material = "linear";

switch material
    
    case "linear"

        stress = material_linear(strain);

    case "nao_linear"

        stress = material_nao_linear(strain);
        
    case "viscoso"

        stress = material_viscoso(strain);
    
    otherwise
        
        disp("nenhum material identificado...");
end

% grafica a curva tensão deformação
plot(strain,stress)
xlabel("deformação")
ylabel("tensão")

function stress = material_linear(strain)
    %
    % função que retorna a curva tensão-deformação de um material 
    % hipotético de comportamento linear
    %
    E=100;
    stress=E*strain;
end

function stress = material_nao_linear(strain)
    %
    % função que retorna a curva tensão-deformação de um material 
    % hipotético de comportamento não linear
    %
    E=100;
    stress=E*strain.^0.2;
end

function stress = material_viscoso(strain)
    %
    % função que retorna a curva tensão-deformação de um material 
    % hipotético de comportamento viscoso
    %
    E=100;
    stress=E*strain.^2.0;
end