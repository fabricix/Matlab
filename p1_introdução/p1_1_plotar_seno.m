%
% O objetivo deste script é plotar o valor da função
% f(x) = seno (x), para x=0 até x=2*pi.
%

% número de pontos a plotar
n = 100;

% início da variável independente (inicio:incremento:fim)
x = 0:2*pi/n:2*pi;

% cálculo da função seno em cada valor do vetor x
y = sin(x);

% plota a função
plot(x,y);

% coloca titulos nos eixos
xlabel('x');
ylabel('y');

% mostra nome dos dados
legend('sin(x)')

% define título da figura
title('Figura que mostra a função y=sin(x)')