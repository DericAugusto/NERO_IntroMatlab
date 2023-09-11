%{
Curos de MATLAB do NERO - UFV      20/10/2020
Módulo 1 - Aula 7
%}
 
clear all; close all; clc;

M = [1:5;6:10]
N = [-3:2:5;11:15]
k =5

disp('Adição termo a termo de 2 matrizes: ');
disp('OPERAÇÃO->  M+N');
M+N

disp('Multiplicação de todos os elementos de uma matriz por escalar: ')
disp('OPERAÇÃO->  k*M');
k*M

disp('Multiplicação termo a termo de 2 matrizes: ')
disp('OPERAÇÃO->  M.*N');
M.*N

disp('Divisão termo a termo de 2 matrizes: ')
disp('OPERAÇÃO->  N./M');
N./M

disp('Potência de todos os elementos de uma matriz por um escalar: ')
disp('OPERAÇÃO->  M.^k');
M.^k


C = [2 4; 3 5]
D = [4 8; 6 10]

disp('Multiplicação de Matrizes (linhas por colunas): ')
disp('OPERAÇÃO->  C*D');
C*D

disp('Concatenação horizontal de 2 matrizes: ')
disp('OPERAÇÃO-> horzcat(C,D)');
horzcat(C,D)

disp('Concatenação vertical de 2 matrizes: ')
disp('OPERAÇÃO-> vertcat(C,D)');
vertcat(C,D)

disp('Transposta de uma matriz: ')
disp('OPERAÇÃO-> M''');
M'

disp('Determinante de uma matriz: ')
disp('OPERAÇÃO-> det(C)');
det(C)

disp('Inversa de uma matriz: ')
disp('OPERAÇÃO-> inv(C)');
inv(C)


disp('Retorna a maior dimensão de uma matriz: ')
disp('OPERAÇÃO-> length(M)');
length(M)

disp('Retorna as dimensões de uma matriz: ')
disp('OPERAÇÃO-> size(M)');
size(M)
V = size(M);
disp('V ='); disp(V);












