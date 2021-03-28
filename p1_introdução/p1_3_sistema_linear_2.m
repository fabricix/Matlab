%
% O objetivo deste script é resolver um sistema de equações
% utilizando a função 'solve' com variáveis simbólicas
%

% define x y z como variáveis simbólicas
syms x y z;

% define cada equação linear 
eqn1 = 2*x + y + z == 2;
eqn2 = -x + y - z == 3;
eqn3 = x + 2*y + 3*z == -10;

% chama à função solve
sol = solve(eqn1, eqn2, eqn3);

% imprime os resultados
disp("x="+double(sol.x));
disp("y="+double(sol.y));
disp("z="+double(sol.z));
