%{
Curos de MATLAB do NERO - UFV      21/10/2020
Módulo 2 - Aula 8
%}

clear all; close all; clc;

v = [12, -3, 0, 2, 10, 1, 9, 5, 11, -1];
disp(v);

disp('Posição do número 10:')

for i = 1:length(v)
    if v(i)==10
        disp(i)
        break
    end
end

disp('Ordenando...')

v1 = sort(v);
disp(v1);

disp('Posição do número 10:')
for i = 1:length(v)
    if v1(i)==10
        disp(i)
        break
    end
end