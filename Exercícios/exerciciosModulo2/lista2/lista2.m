%{
Curos de MATLAB do NERO - UFV      22/10/2020
Operaçãoes Lógicas e relacionais - Lista 2 
%}

%% 1)

clearvars; close all; clc;

disp(['Olá ! Para o cálculo de seu IMC, vamos precisar recolher' ...
    'alguns dados.']);
disp(' ');

nome = input('Primeiramente, nos diga seu nome: ','s');
idade = input('Agora sua idade: ');
peso = input('Seu peso: ');
altura = input('E sua altura: ');

disp(' ');

IMC = IMC(peso,altura);

classificacao = classIMC(IMC);

fprintf(['De acordo com seus dados, temos que seu IMC é de %0.2f,'...
    'com classificação de ''%s''.'], IMC, classificacao);


%% 2)

clearvars; close all; clc;

disp('Olá ! Será feito o cálculo da área do polígono.');
nLados = input('O polígono em questão tem esse número de lados: ');

disp(' ');


% INCOMPLETA -------
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    