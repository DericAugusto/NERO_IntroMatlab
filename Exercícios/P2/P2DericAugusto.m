%Déric Augusto - PROVA FINAL do Curso de Matlab do NERO         27/10/2020

%% QUESTÃO 1:

clearvars;close all;clc;
load carbig.mat

% Grafico discreto dos dados de Aceleração
hold on
s = scatter(Model_Year,Acceleration, 'filled');

% Calculando os coeficientes da reta dada pela regressão linear e os
% armazenando
regressaoGeral = polyfit(Model_Year,Acceleration,1);
save regressaoGeral;

% Construindo função simbólica a partir do coeficientes encontrados
syms('x');
f(x) = regressaoGeral(1)*x + regressaoGeral(2);

%Plotando função simbólica sobre o gráfico scatter e salvando o gráfico
%final
p = ezplot(f,[69,83,7,29]);
p.LineStyle = '--';
grid on
title('Aceleração dos carros para os modelos lançados em cada ano');
legend('modelos de carro lançados','regressão linear de todos os pontos');
xlabel('ano de lançamento');
ylabel('aceleração do carro');
saveas(gcf,'fig1.pdf');
hold off


%Derivando f(x) e plotando
fLinha = diff(f);
ezplot(fLinha,[-100,100,0,0.5]);
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

%% QUESTÃO 2 (executar primeiramente a questão 1):

clearvars;close all;clc;

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
syms('x');
g(x) = regressaoGeral(1)*x + regressaoGeral(2);

B = ezplot(g,[69,83,12.5,16]);
B.Color = 'blue';
B.LineStyle = '--';


%Finalizando gráfico e salvando imagem
grid on
title('Aceleração dos carros para os modelos de cada ano');
legend([A B],{'Regressão linear com base na aceleração média por ano',...
    'Regressão linear com base na aceleração média global'},...
    'Location','southeast')
legend('boxoff')
xlabel('ano')
ylabel('aceleração média dos carros')
hold off
saveas(gcf,'fig2.pdf');


%Calculando os erros percentuais médios (em módulo) das regressões lineares 
%em relação às velocidades médias em cada ano
erroF(1:13) = 0;
erroG(1:13) = 0;
a=1;
for i=70:82
    erroF(a) = abs(f(i) - mediaAceleration(a));
    erroG(a) = abs(g(i) - mediaAceleration(a));
    a=a+1;
end

erroF = (sum(erroF)/length(erroF))*100;
fprintf(['O erro médio percentual cometido pela regressão linear com'...
        ' base na aceleração média por ano é de %0.2f%%.'],erroF);
    
disp(' ');    
    
erroG = (sum(erroG)/length(erroG))*100;
fprintf(['O erro médio percentual cometido pela regressão linear com'...
        ' base na aceleração média global é de %0.2f%%.'],erroG);
    
disp(' ');  

TAB = table(erroF,erroG);
writetable(TAB,'tabelaQ2.xlsx');

%% QUESTÃO 3 (executar primeiramente a questão 1):

clearvars;close all;clc;

load regressaoGeral.mat
load carbig.mat

% Calculando os coeficientes da reta dada pela regressão linear
regressaoPeso = polyfit(Model_Year,Weight,1);

% Construindo funções simbólicas a partir dos coeficientes encontrados
syms('x');
p(x) = regressaoPeso(1)*x + regressaoPeso(2);
g(x) = regressaoGeral(1)*x + regressaoGeral(2);

%Descobrindo taxa de variação das retas
fprintf(['A taxa de variação da regressão linear dos dados de aceleração'...
    ' é de %0.2f%%.'], regressaoGeral(1)*100);

disp(' ');

fprintf(['A taxa de variação da regressão linear dos dados de peso'...
    ' é de %0.2f%%.'], regressaoPeso(1)*100);

disp(' ');

%Calculando suas derivadas
fLinha = diff(p);
gLinha = diff(g);

%Plotando regressões (subplot em cima)
subplot(2,1,1);

yyaxis left
A = ezplot(p,[69,83]);  % [69,83,3200,5000]
A.Color = 'red';

yyaxis right
B = ezplot(g,[69,83]);  % ,[69,83,12.5,16]
B.Color = 'blue';

title('Regressões Lineares');
xlabel('');
grid on

%Plotando derivadas (subplot em baixo)
subplot(2,1,2);

yyaxis left
a = ezplot(fLinha,[69,83]);  % ,[-100,100,-71.5,71]
a.Color = 'red';
a.LineStyle = '--';

yyaxis right
b = ezplot(gLinha,[69,83]);  % ,[-100,100,0,0.5]
b.Color = 'blue';
b.LineStyle = '--';

title('Derivadas');
xlabel('');
grid on

%Salvando figura final e tabela com dados do peso
saveas(gcf,'fig3.pdf');
writematrix(Weight,'tabelaQ3.xlsx')

%{ 
O aumento na capacidade de aceleração acompanha o peso?

R. Podemos notar através dos gráficos das funções de regressão linear dos
dados de aceleração e peso através dos anos que o peso dos carros diminui
proporcionalmente ao passo que a capacidade de aceleração cresce. Isso já
se era esperado, visto que força é igual à massa multiplicada pela
aceleração e assim, a aceleração pode ser dada pela massa dividida pela
força. Então, diminuir a massa de um carro é uma boa estratégia para se
alcansar uma maior aceleração. 

Qual das variáveis cresce mais rápido ?

R. Analisando as taxas de variação das retas dadas pelas regressões
lineares, é possível notar que o peso médio decresce em média a uma taxa de 
-7126.02% e a aceleração média aumenta a uma taxa de 22.58%%. Então em 
módulo o peso cresce mais rápido, mas como são grandezas diferentes, não é
possível se tirar conclusões desses dados.
%}

%% QUESTÃO 4 (executar primeiramente as questões 1 à 3):

clearvars;close all;clc;

Q1 = readtable('tabelaQ1.xlsx');
Q2 = readtable('tabelaQ2.xlsx');
Q3 = readtable('tabelaQ3.xlsx');

writetable(Q1,'RelatorioCarros.xlsx','Sheet','Questão1');
writetable(Q2,'RelatorioCarros.xlsx','Sheet','Questão2');
writetable(Q3,'RelatorioCarros.xlsx','Sheet','Questão3');

clearvars;

disp('Isso é tudo, pessoal! :)');

