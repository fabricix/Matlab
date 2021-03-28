%
% O objetivo deste script é resolver um sistema de equações
% não linear utilizando a função 'solve' com variáveis simbólicas
%

% definir as variáveis simbólicas
syms x y;

% definir equações a resolver
eq1 = x^2*y^2 == 0;
eq2 = x-y/2 == 1.2;

% resolver o sistema chamando a 'solve'
[solx,soly] = solve(eq1, eq2);

% imprimir os resultados
disp("x1="+double(solx(1)));
disp("x2="+double(solx(2)));
disp("y1="+double(soly(1)));
disp("y2="+double(soly(2)));