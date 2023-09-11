%{
Curos de MATLAB do NERO - UFV      20/10/2020
Módulo 1 - Aula 9
%}

clear all; close all; clc;

[var1,var2] = Multp(50,2);

disp('a= ');
disp(var1);
disp('b= ')
disp(var2);

function [result1,result2] = Multp(a,b)
    result1 = 2*a;
    result2 = 3*b;
end

