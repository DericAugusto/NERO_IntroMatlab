%{
Curos de MATLAB do NERO - UFV      20/10/2020
Opera��es B�sicas - Lista 4
%}

clear all; close all; clc;

nome = input('Fala o nome a�, brou: ','s');
disp('   ');
disp('show');
disp('   ');
disp('Tu � grand�o ou catitoco?');
disp('   ');
altura = input('Qual a altura? Escreva aqui (em metros): ');
disp('   ');
peso = input('E o peso, man�? Fala�: ');
disp('   ');
disp(['B�ozin, ',nome,'? Seja muito bem vindo, fal�!']);

IMC = peso/altura^2;
disp('   ');
disp(['Pelo que voc� falou, e pelos meus c�lculos'...
    ' matem�ticos seu IMC � de: ',int2str(IMC),'%']);
