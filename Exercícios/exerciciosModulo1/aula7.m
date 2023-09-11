%{
Curos de MATLAB do NERO - UFV      20/10/2020
M�dulo 1 - Aula 7
%}
 
clear all; close all; clc;

M = [1:5;6:10]
N = [-3:2:5;11:15]
k =5

disp('Adi��o termo a termo de 2 matrizes: ');
disp('OPERA��O->  M+N');
M+N

disp('Multiplica��o de todos os elementos de uma matriz por escalar: ')
disp('OPERA��O->  k*M');
k*M

disp('Multiplica��o termo a termo de 2 matrizes: ')
disp('OPERA��O->  M.*N');
M.*N

disp('Divis�o termo a termo de 2 matrizes: ')
disp('OPERA��O->  N./M');
N./M

disp('Pot�ncia de todos os elementos de uma matriz por um escalar: ')
disp('OPERA��O->  M.^k');
M.^k


C = [2 4; 3 5]
D = [4 8; 6 10]

disp('Multiplica��o de Matrizes (linhas por colunas): ')
disp('OPERA��O->  C*D');
C*D

disp('Concatena��o horizontal de 2 matrizes: ')
disp('OPERA��O-> horzcat(C,D)');
horzcat(C,D)

disp('Concatena��o vertical de 2 matrizes: ')
disp('OPERA��O-> vertcat(C,D)');
vertcat(C,D)

disp('Transposta de uma matriz: ')
disp('OPERA��O-> M''');
M'

disp('Determinante de uma matriz: ')
disp('OPERA��O-> det(C)');
det(C)

disp('Inversa de uma matriz: ')
disp('OPERA��O-> inv(C)');
inv(C)


disp('Retorna a maior dimens�o de uma matriz: ')
disp('OPERA��O-> length(M)');
length(M)

disp('Retorna as dimens�es de uma matriz: ')
disp('OPERA��O-> size(M)');
size(M)
V = size(M);
disp('V ='); disp(V);












