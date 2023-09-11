%{
Curos de MATLAB do NERO - UFV      20/10/2020
Operações Básicas - Lista 5 
%}

clearvars; close all; clc;

n = input('Número de usuários: ');
disp(' ')

for i = 1:n
    nomes(i) = string(input(['Nome do usuário ', int2str(i), ': '],'s')); 
end

disp(' ')

idades = zeros(n);
for i = 1:n   
    idades(i) = input(['Idade do usuário ', int2str(i),': ']);
end

disp(' ')

[oldestName, oldestAge, youngestName, youngestAge] = EdgeAges(nomes,idades);

disp('Nome do mais velho e sua idade: ');
disp(oldestName);
disp(oldestAge);
disp('Nome do mais novo e sua idade: ');
disp(youngestName);
disp(youngestAge);

disp('Idade média dos usuários: ');
idadeMedia = MediaIdade(idades);
disp(idadeMedia);

disp('Usuário com a idade mais próxima à mediana: ');
idadeMediana = Mediana(nomes,idades);
disp(idadeMediana);
