%{
Curos de MATLAB do NERO - UFV      23/10/2020
Módulo 3 - Aulas 4
%}

%obs: para executar as seções separadas pressionar Ctrl+ENTER

% FORMAS DE SE CONFIGURAR O PLOT DO GRÁFICO
%% Jeito 1 - Por meio do comando set():

clearvars; close all; clc;

x = linspace(-5,5,1000);
y = atan(x); 

p = plot(x,y);

get(p);  %exibe as propriedades de p
%get(p, 'LineWidth')  %exbibe apenas a espessura da linha

set(p,'Color','blue','LineWidth', 2);
%set(p,'blue', 'LineWidth', 2);

%% Jeito 2 - Dentro da função plot():

clearvars; close all; clc;

x = linspace(-5,5,1000);
y = atan(x); 

p = plot(x,y, 'Color', 'blue', 'LineWidth', 2);

%% Jeito 3 - Igualando as configurações aos métodos da função plot():

clearvars; close all; clc;

x = linspace(-5,5,1000);
y = atan(x); 

p = plot(x,y);

p.LineWidth = 2;
p.Color = [0 0 1];  % 'blue' = 'b' = [0 0 1] = '#0000FF'

%{
Observações:

-> É possível encurtar as strings de definição de propriedades para algumas
propriedades como Cor e LineStyle. 

-> Os métodos da classe "plot" que representam as propriedades também podem
ser escritos com as primeiras letras maiúsculas e minúsculas que não fará 
diferença.

-> Para as cores básicas, é possível escrever em forma de palavras ou
letras correspondentes como 'black' ou 'k'.

-> A ordem em que as configurações são definidas não faz diferença.

-> As cores podem ser definidas a partir de seu respectivo número RGB.

Por exemplo, todas esses comendos à baixo são equivalentes e vão executar a
mesma função (vão fazer a mesma coisa):

p = plot(x,y, 'Color', 'black', 'LineStyle', '-.', 'LineWidth', 2);
p = plot(x,y, 'color', 'black', 'linestyle', '-.', 'linewidth', 2);
p = plot(x,y, 'color', '#000000', 'linestyle', '-.', 'linewidth', 2);
p = plot(x,y, 'color', [0 0 0], 'linestyle', '-.', 'linewidth', 2);
p = plot(x,y, 'black-.', 'LineWidth',2);
p = plot(x,y, 'k-.', 'LineWidth',2);
p = plot(x,y,'LineWidth', 2, 'k-.');

*mais informações podem ser encontradas no "help" dos comandos relacionados
à plotagem de funções. Pesquisar em:

help\MATLAB\Graphics\
%}

%% Outros comendos de customização do plot:

%{

title('Título Desejado')
xlabel('Label do eixo X')
ylabel('Label do eixo Y')

legend-> Adiciona legendas da propriedade DisplayName
legend('legenda1', 'legenda2') -> Adiciona as legendas nessa ordem para os
plots
legend('off') -> remove a legenda

Xlim([lim_inf,lim_sup]) -> limita o plot em x
Ylim([lim_inf,lim_sup]) -> limita o plot em y
grid on -> adiciona grid em x e y
grid off
grid minor -> adiciona o grid com espaçamentos menores em x e y

%}

%Exemplo:

clearvars; close all; clc;

x = linspace(-5,5,1000);
y = atan(x); 

p = plot(x,y);

p.LineWidth = 2;
p.Color = [0 0 1];

xlim([-2,2]);
title('Função Arco Tangente');
xlabel('Valores de X');
ylabel('Valores de Y');
grid minor

%% Aplicação específica para  plots em minutos/segundos
% (só funciona no Matlab R2020b ou superior)

% t=0 até 4 minutos de 15 em 15 segundos
t = 0:seconds(15):minutes(4);
y = rand(1,length(t));
p = plot(x,y);
set(p, 'DurationTickFormat', 'mm:ss');



