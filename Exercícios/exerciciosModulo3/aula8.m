%{
Curos de MATLAB do NERO - UFV      24/10/2020
Módulo 3 - Aula 8
%}

% Função subplot()
%% ex1:

clearvars;close all;clc;

x = linspace(-pi,pi);

%Subplot 3 linhas e 1 coluna da primeira linha:
subplot(3,1,1);
a = plot(x,cos(x));
title('cos(x)');
set(a,'Color','Red');


subplot(3,1,2);
b=plot(1*sin(4*x),2*sin(8*x));
title('Lemniscata');
b.Color='black';


subplot(3,1,3);
c=plot(x,1-sin(x));
title('1-sen(x)');
c.Color = 'green';

%% ex2 Mexidão:

clearvars;close all;clc;

subplot(2,3,1);
X = categorical({'Smal','Meium','Large','Extra Large'});
X = reordercats(X,{'Smal','Meium','Large','Extra Large'});
Y = [10 21 33 52];
bar(X,Y)

subplot(2,3,2);
Y = [10 15 20; 30 35 40; 50 55 62];
b = bar(Y);
b(3).FaceColor = [.2 .6 .5];

subplot(2,3,[3,6]);
X = [1 2 0.5 2.5 2];
pie(X);

subplot(2,3,[4,5]);
X = linspace(-5,5,100);
p = plot(X,X.^2);
legend('data3');
ylim([0,6]);






