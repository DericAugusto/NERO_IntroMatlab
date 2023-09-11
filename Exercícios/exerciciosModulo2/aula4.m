%{
Curos de MATLAB do NERO - UFV      21/10/2020
Módulo 2 - Aula 4
%}

clear all; close all; clc;

switch mod(13,5)*10
    case 30
        disp('O resultado é 30')
    case {60,40,50}
        disp('Resultado é 10, 40 ou 50')
    otherwise
        disp('Nenhum resultado foi encontrado')
end

