%
% O objetivo deste script é resolver um sistema de equações
% invertendo a matrixz de coeficientes mediante a função 'inv'

% matriz dos coeficientes
A = [2 1 1; -1 1 -1; 1 2 3];

% vetor termos lado direito
b = [2; 3; -10];

% inverte a matriz para obter x = A^-1*b
x = inv(A)*b;

% mostra o resultado
disp("x1="+x(1));
disp("x2="+x(2));
disp("x3="+x(3));