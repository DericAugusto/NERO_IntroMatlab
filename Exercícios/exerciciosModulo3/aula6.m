%{
Curos de MATLAB do NERO - UFV      24/10/2020
Módulo 3 - Aula 6
%}

% Função pie()
%% ex1:

clearvars;close all;clc;

x = [2 3 4 1];
pie(x);

%% ex2 - Pizza Incompleta:

clearvars;close all;clc;

x = [0.4 0.2 0.1];
pie(x);

%% ex3 - Pizza de Categorias:

clearvars;close all;clc;

x = categorical({'Obrigatória','Facultativa',...
    'Obrigatória','Optativa','Obrigatória','Optativa'});
pie(x);

%% ex4 - Explodindo (destacando) Fatias:

clearvars;close all;clc;

x = [2 3 4 1];
pie(x,[1 0 1 0]);

%% ex5 - Destacando Fatias de Categorias:

clearvars;close all;clc;

x = categorical({'Obrigatória','Facultativa',...
    'Obrigatória','Optativa','Obrigatória','Optativa'});
explode = {'Facultativa','Obrigatória'};
pie(x,explode);

%% ex6 - Etiquetas na fatia:

clearvars;close all;clc;

x = [2 3 4 1];
labels = {'Morno','Quente','Escaldante','Frio'};
pie(x,labels);

%% ex7 - Etiquetas + destaque:

clearvars;close all;clc;

x = [2 3 4 1];
labels = {'Morno','Quente','Escaldante','Frio'};
pie(x,[1 1 0 0],labels);

%% ex8 - Legenda:

clearvars;close all;clc;

x = [2 3 4 1];
labels = {'Morno','Quente','Escaldante','Frio'};
pie(x);
legend(labels);

%% ex9 - Configurações de Cor das fatias e textos:

clearvars;close all;clc;

x=[2 3 4 1];
labels = {'Morno','Quente','Escaldante','Frio'};
p = pie(x,labels);

set(p(1), 'FaceColor','r');
set(p(3), 'FaceColor','k');

get(p(1));

%{
p(1) -> referente à fatia do 1° dado
p(2) -> referente ao texto do 1° dado
p(3) -> referente à fatia do 2° dado
p(4) -> referente ao texto do 2° dado

ex:

t = p(4);
t.BackgroundColor = 'cyan';
t.EdgeColor = 'red';
t.FontSize = 14;
t.FontName = 'comicsans';
%}