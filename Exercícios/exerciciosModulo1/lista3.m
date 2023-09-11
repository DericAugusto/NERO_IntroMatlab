%{
Curos de MATLAB do NERO - UFV      20/10/2020
Operações Básicas - Lista 3 
%}

clc; 
clear all;
close all;

%% 1)

disp('-----------------------------------')
disp('Questão 1: ')

X = [2 5  1 6; 3 2 6 8; 4 1 3 5];
X

disp('Somando -1 à cada elemento: ')
S1 = X+1; % X(:,:) = X 
S1

disp('Somando 3 aos componentes das linhas ímpares: ')
S2 = X;
S2([1,3],:) = S2([1,3],:) + 3;
S2

disp('Calculando a raiz quadrada dos elementos da matriz: ')
R = sqrt(X(:,:));
R

disp('Calculando o quadrado de cada elemento: ')
Q = X.^2;
Q

%% 2)

disp('-----------------------------------')
disp('Questão 2: ')

X = [2 5 1 6 ; 3 2 6 8 ; 4 1 3 5]
Y = [2 7 3 9 ; 1 2 5 2 ; 3 2 9 6]

disp('Somando X + Y: ')
A = X + Y;
A

disp('Elevando um termo de uma matriz ao termo da outra: ')
B = Y.^X;
B

disp('Dividindo um termo de uma matriz pelo correspondente da outra: ')
C = Y./X;
C

disp('Multiplicando cada elemento de X por Y: ')
Z = X.*Y;
Z

disp('Somando todos os elementos de Z: ')
w = sum(Z);
w = sum(w);
w

disp('X''*Y-W : ')
F = X'*Y-w;
F










