%{
Curos de MATLAB do NERO - UFV      22/10/2020
Módulo 3 - Aulas 1 e 3
%}

clearvars; close all; clc;

x = linspace(-5,5,1000);

y1=x.^2;
y2=x.^3;

hold on
plot(x,y1);
plot(x,y2);
hold off