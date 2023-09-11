%{
Curos de MATLAB do NERO - UFV      21/10/2020
Módulo 2 - Aula 6 e 7
%}

clear all; close all; clc;

n = 1
while n <= 10
    disp(n);
    n = n+1;
end

disp('-----------------------------------')

i = 1;
while i < 6
    x(i) = 2^i;
    i = i + 1;
end

disp(x);

disp('-----------------------------------')

i=1;
while i~=0
    if i<21
        disp(i)
        i = i+1;
    else
        disp('Fim !')
        break
    end
end