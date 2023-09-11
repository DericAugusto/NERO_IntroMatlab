%{
Curos de MATLAB do NERO - UFV      19/10/2020
M�dulo 1 - Aula 6 (aula + lista2)
%}

clc; 
clear all;
close all;

%{
Selecionando um bloco de c�digo e apertando F9 � poss�vel execut�-lo
separadamente
%}


%% Conte�do da aula

% cria��o da matriz 2x4
A = [2,10,7,6 ; 2,12,25,9] 

% elementos das linhas 1 at�2 e coluna 2 = 18
A(1:2,2) = 18;  
disp(A)

% concatena��o de matrizes verticalmente
C = [A; [30 21 19 1]] 

% excluindo a coluna 1 da matriz C
B =  [C(:,2:4)] 

%% Lista 2 (1)

b = [1 2 3 4 5 6];

% criando vetor que vai de 1 at� 6
c = 1:6; 

d = [1 2 3; 4 5 6]
d = [d ; [7 8 9]]

% vetor vertical
e = [5;10;15] 

% concatena��o horizontal
d = [d,e] 

d(:,2) = 100
d(2,:) = 20

% armazena o tamanho das n linhas e m colunas de d 
[n,m] = size(d) 

% largura da matriz = quantas colunas
f = length(d) 

% informa��o simplificada das vari�veis
who 

% informa��es detalhadas sobre as vari�veis atuais
whos 

clear b

% matriz onde a primeira linha vai de 2 at� 10 somando 3 de um elemento ao
% outro
x = [2:3:10 ; 12:-2:7] 

y = sin(pi)

Ano = 2019;

Cidade = 'Vi�osa'

Texto = ['Universidade Federal de' 'Cidade' 'Ano']

Texto = ['Universidade Federal de' 'Cidade' num2str(Ano)]

[Texto(1) Texto(14) Texto(25)]
[Texto(1) Texto(14) Texto(25) '' Texto(19:end)]


%% (2) e (3)

A = [2,10,7,6 ; 2,12,25,9];
A(:,3) = 13

A = [A ; 13*ones(1,4)]

B = A(:,2:4)

disp(B(2,:))