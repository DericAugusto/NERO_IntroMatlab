%{
Curos de MATLAB do NERO - UFV      24/10/2020
Módulo 3 - Aula 7
%}

% Função bar()
%% ex1:

clearvars;close all;clc;

x=2:2:20;
y=2:4:38;
bar(x,y,0.4);
length(y)
length(x)
%bar(y);

% bar(itens,altura,larguraDasBarras)

%% ex2 - Com palavras:

clearvars;close all;clc;

altura = [2 3 4 6];

itens = categorical({'Small','Medium','Large','Extra Large'});
%Para garantir que a ordem das barras estará certa:
itens = reordercats(itens,{'Small','Medium','Large','Extra Large'});

b = bar(itens,altura);
get(b);

%% ex3 - Mais de uma barra por legenda:

clearvars;close all;clc;

y = [2 2 3;2 5 6;2 8 9;2 11 12];
x = categorical({'Jan','Fev','Mar','Abr'});
x = reordercats(x,{'Jan','Fev','Mar','Abr'});
bar(x,y);

%% ex4 - Empilhar barras(uma em cima da outra):

clearvars;close all;clc;

y = [2 2 3;2 5 6;2 8 9;2 11 12];
x = categorical({'Jan','Fev','Mar','Abr'});
x = reordercats(x,{'Jan','Fev','Mar','Abr'});
bar(x,y,'stacked');

%% ex5 - Acrescentando Legendas:


clearvars;close all;clc;

y = [2 2 3;2 5 6;2 8 9;2 11 12];
x = categorical({'Jan','Fev','Mar','Abr'});
x = reordercats(x,{'Jan','Fev','Mar','Abr'});
bar(x,y,'stacked');

ylim([0 35]);
labels={'Lúpulo','Água','Cevada'};
legend(labels);

% mais coisas no final da videoaula...





















