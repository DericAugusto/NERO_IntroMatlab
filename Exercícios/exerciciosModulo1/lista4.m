%{
Curos de MATLAB do NERO - UFV      20/10/2020
Operações Básicas - Lista 4
%}

clear all; close all; clc;

nome = input('Fala o nome aí, brou: ','s');
disp('   ');
disp('show');
disp('   ');
disp('Tu é grandão ou catitoco?');
disp('   ');
altura = input('Qual a altura? Escreva aqui (em metros): ');
disp('   ');
peso = input('E o peso, mané? Falaê: ');
disp('   ');
disp(['Bãozin, ',nome,'? Seja muito bem vindo, falô!']);

IMC = peso/altura^2;
disp('   ');
disp(['Pelo que você falou, e pelos meus cálculos'...
    ' matemáticos seu IMC é de: ',int2str(IMC),'%']);
