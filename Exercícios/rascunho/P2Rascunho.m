%Déric Augusto - PROVA FINAL do Curso de Matlab do NERO

%% QUESTÃO 1:

clearvars;close all;clc;
load carbig.mat

% Grafico discreto dos dados de Aceleração
t = 1:length(Acceleration);
scatter(t,Acceleration, 'filled');

% Calculando os coeficientes da reta dada pela regressão linear e os
% armazenando
regressaoGeral = polyfit(t,Acceleration,1);
disp(regressaoGeral);
save regressaoGeral;

% Construindo função simbólica a partir do coeficientes encontrados
syms('x');
f(x) = regressaoGeral(1)*x + regressaoGeral(2);

%Plotando função simbólica sobre o gráfico scatter e salvando o gráfico
%final
hold on
ezplot(f,[0,450,8,26]);
grid on
title('Regressão linear de Acceleration');
xlabel('modelos de carro em ordem cronológica')
ylabel('aceleração do carro')
saveas(gcf,'fig1.pdf');
hold off

%Derivando f(x) e plotando
fLinha = diff(f);
ezplot(fLinha,[-100,100,-0.01,0.01]);
grid on
title('f''(x)');

%{ 
O que acontece com a aceleração média dos modelos carros à medida que o 
tempo passa?

R. É possível notar através da função da regreção linear que a aceleração
média dos carros aumenta à medida que o tempo passa. Sendo mais preciso, 
com base nos dados disponíveis podemos afirmar ainda que a aceleração  
dos carros aumenta em média de forma linear, comparando o penúltimo  modelo 
lançado com o mais recente, à uma taxa de 0,72%, de um para o outro.
%}

% Escrevendo os dados do vetor tipo "double" Acceleration em uma tabela
% xlsx
writematrix(Acceleration,'tabelaQ1.xlsx')

%% QUESTÃO 2:

clearvars;close all;clc;

%Obs: executar primeiramente a questão 1
load regressaoGeral.mat
load carbig.mat

year = zeros(13,406);

%Calculando a aceleração média dos carros em cada ano
for i=70:82
    for j=1:406
       if Model_Year(j) == i
           year(i-69,j)= 1;        
       else
            year(i-69,j)= 0;
       end
    end
end

mediaAceleration(1:13)=0;
soma=0;
quantosNoAno=0;

for i=1:13
    for j=1:406
        if year(i,j) == 1
            quantosNoAno = quantosNoAno+1;
            soma = soma + Acceleration(j);
        end
    end
    mediaAceleration(i) = soma/quantosNoAno;
end

clear year soma quantosNoAno

%Plotando a regressão linear dessa aceleração média
t = 70:82;
scatter(t,mediaAceleration, 'filled');

regressaoAno = polyfit(t,mediaAceleration,1);

syms('x');
f(x) = regressaoAno(1)*x + regressaoAno(2);

hold on
A = ezplot(f,[69,83,12.5,16]);
A.Color = 'red';

%Plotando sobre o gráfico a regressão calculada na Questão 1 com base nos
%dados de todos os carros
%{
syms('x');
f(x) = regressaoGeral(1)*x + regressaoGeral(2);


pontos(1:13) = 0;
a=1;
for i=70:82
    pontos(a) = f(i);
    a=a+1;
end

B = plot(t,pontos);
B.Color = 'blue';
B.LineStyle = '--';
%}
%Finalizando gráfico
grid on
title('Aceleração dos carros para os modelos de cada ano');
xlabel('ano')
ylabel('aceleração média dos carros')
hold off














