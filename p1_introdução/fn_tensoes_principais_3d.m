function [sp,ni]=fn_tensoes_principais_3d(s)

    % Calcula as tensões e direções principais de um tensor em 3D
    % 
    % uso:
    %       [s,n] = tensoes_principais_3d(stress)
    %
    %       stress: tensor de tensões (deformações) na forma [sxx syy szz txy tyz tzx]
    %       s: tensões principais
    %       n: direções principais
    %

    % construir o tensor de 3x3
    stress = [s(1) s(4) s(6); s(4) s(2) s(5); s(6) s(5) s(3)];

    % computar autovalores e autovetores
    [ni,sp] = eig(stress);
    
end
