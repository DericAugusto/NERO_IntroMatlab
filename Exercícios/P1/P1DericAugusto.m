%{
Curos de MATLAB do NERO - UFV   
Prova 1
Conteúdos dos módulos 1 ao 3
%}

%% Atividade Avaliativa
% Curso Introdutório de Matlab

%% Questão 1
clear all;
close all;
clc;

% Baseando-se nos conteúdos vistos no curso, faça o que se pede:
% a) Crie um vetor com a seguinte saída Va = 2 9 16 23 … 198

Va = 2:7:198;

% b) Crie um vetor com a seguinte saída Vb = 0 3 9 27 ... 19683 

a=1;
i=1;
Vb(1)=0;
while a==1
    Vb(i+1)= 3^i;
    if Vb(i+1)==19683
        a=0;
    end
    i = i+1;
end

% (dica: pense antes de colocar em prática).
% c) [EXTRA] Seja i, o índice de cada elemento desse vetor, subtraia a raiz 
% (i-ésima - 1) de cada elemento correspondente, se i > 2. 
% Ex.: para i = 3, o elemento correspondente é o 9, então o cálculo a ser feito é: 
% 9 - raiz quadrada de 9, para i = 4: 27 menos raiz cúbica de 27, etc.

for i=1:length(Vb)
    if i>2
        Vb(i) = Vb(i) - Vb(i)^(1/(i-1));
    end    
end

%% Questão 2
clear all;
close all;
clc;

% Declare três vetores, A, B e C com 4 valores cada, A = [x1, x2, x3, x4]:
% a) Faça a concatenação vertical desses vetores a atribua o resultado a uma
% variável D.

A = [1 2 3 4];
B = [5 6 7 8];
C = [9 10 11 12];

D = vertcat(A,B,C);

% b) Mostre no Command Window os elementos da linha 2 e das colunas: [1 3 4],
% com apenas um comando.

disp(D(2,[1 3 4]));

% c) Construa uma matriz com as três linhas de D e com as colunas: [1 2 4],
% feito isso, altere todos os valores para 13, mostrando o resultado na tela.

M = horzcat(D,[1;2;4]);
M(:) = 13;
disp(M);

%% Questão 3
clear all;
close all;
clc;

% Crie script e funções (se necessário) para 
% automatizar o processo de atribuição de conceito a um grupo de estudantes. 

% Será necessário pedir ao usuário para entrar e armazenar 
% 10 nomes e 10 notas correspondentes a esses nomes 
% em uma matriz de dimensão 10x2, ou seja, 2 colunas e 10 linhas
% Dica: use a função input para entrada de dados).

% Feito isso, deverá ser criada uma função que receba essa matriz como
% entrada e analise se o aluno foi ou não aprovado. 
% Para aprovação, é necessário nota igual ou superior a 60;
% para reprovação direta é preciso ter obtido nota inferior a 40;
% no intervalo igual ou superior a 40 e inferior a 60, o aluno estará de recuperação. 

% A sua função deve, após as devidas comparações, mostrar na
% Command Window a saída da seguinte forma: 
% 1. O aluno (nome) foi aprovado!
% 2. O aluno (nome) está de recuperação!
% 3. O aluno (nome) foi reprovado!

disp('Olá ! Vamos coletar as notas dos 10 estudantes.');
disp(' ');

alunos = strings([10,2]);
for i=1:10
    aux = sprintf('Digite o nome do %dº estudante: ',i);
    alunos(i,1) = string(input(aux,'s'));
    aux = sprintf('Digite a nota do %dº estudante: ',i);
    alunos(i,2) = string(input(aux));   
end

disp(' ');
notas(alunos);

%% Questão 4 
% Utilize as personalizações por script 
% (comando set, notação de classe ou diretamente no comando plot)
% para criar um gráfico utilizando o comando plot que se 
% aproxime ao máximo da figura no anexo neste teste.
% O eixo y segue a função y = f(x) = x²+3x+4
% Após edição, salve a figura na extensão .fig do Matlab.

clear all;
close all;
clc;

x = linspace(-5,5,20);
y = x.^2 + 3*x +4;

p = plot(x,y);

xlim([-10,10]);
title('Eu uso 20 pontos no Linspace');
xlabel('Eixo X');
ylabel('Eixo Y');
legend('A minha espessura de linha é 3');

p.Color = [0 0.4470 0.7710];
p.LineWidth = 3;
p.LineStyle = '--';
p.MarkerIndices = 1:1:length(y);
p.Marker = 's';
p.MarkerSize = 4;
p.MarkerEdgeColor = 'blue';
p.MarkerFaceColor = 'black';

saveas(gcf,'Questão4.fig')

%% Questão 5
clear all;
close all;
clc

% Utilize o comando subplot para a criação de uma ambiente com 1 linha e duas colunas.

% No ambiente da esquerda crie um gráfico de barras com o número de alunos
% que foram reprovados, ficaram de recuperação e foram aprovados
% na questão 3. 
% Coloque as barras com cor vermelha e coloque embaixo dela o nome 
% do que ela representa ( reprovado,recuperação ou aprovado)

% No ambiente da direita crie um gráfico de pizza utilizando os dados do vetor X abaixo.
% Para o gráfico de pizza, modifique a cor da primeira fatia para verde 
% e da terceira para vermelha.
% Destaque a primeira e terceira fatia com a entrada ' explode' do comando pie.

disp('Olá ! Vamos coletar as notas dos 10 estudantes.');
disp(' ');

alunos = strings([10,2]);
for i=1:10
    aux = sprintf('Digite o nome do %dº estudante: ',i);
    alunos(i,1) = string(input(aux,'s'));
    aux = sprintf('Digite a nota do %dº estudante: ',i);
    alunos(i,2) = string(input(aux));   
end

disp(' ');
[nAprovados,nRecuperacao,nReprovados] = categoriaNotas(alunos);


subplot(1,2,1);
altura = [nAprovados nRecuperacao nReprovados];
itens = categorical({'Aprovados','Em Recuperação','Reprovados'});
%Para garantir que a ordem das barras estará certa:
itens = reordercats(itens,{'Aprovados','Em Recuperação','Reprovados'});
b = bar(itens,altura);
b.FaceColor = 'red';

subplot(1,2,2);
X = [2 3 4 5 6];
p = pie(X,[1 0 1 0 0]);
set(p(1), 'FaceColor','g');
set(p(5), 'FaceColor','r');
