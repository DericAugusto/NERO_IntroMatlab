%{
Curos de MATLAB do NERO - UFV      21/10/2020
Módulo 2 - Aula 2
%}

clear all;close all;clc;

a = 0;
if a>=1 && a<5
    disp('verdadeiro')
else
    disp('Falso')
end

%{
normal      boolean
  ~    <->     not
  &&   <->     and
  ||   <->     or
%}

a=5;
Texto = 'Beyoncé';
if Texto ~= 'Beyoncé'
    disp('Diferente')
else
    if not(a==7)
        disp('Passou aqui')
    end
end
    

