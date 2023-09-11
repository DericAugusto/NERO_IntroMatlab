%{
Curos de MATLAB do NERO - UFV      19/10/2020
Operações Básicas - Lista 1 
%}

clc;
clear all;

a = 5;
b = 3;
hip = sqrt(a^2 + b^2);
theta1 = asin(a/hip);
theta2 = asin(b/hip);
theta3 = pi/2;
x = pi - (theta1+theta2+theta3);
disp(x)