%{
Curos de MATLAB do NERO - UFV      22/10/2020
Operaçãoes Lógicas e relacionais - Lista 1 
%}

%% 1)

clearvars; close all; clc;

A = [30 40 2 55; 3 70 20 12];
B = [30 40 20 5; 30 7 20 12];

% A==[0 15 30; 5 60 7] %not possible

% A==b %not possible

A==B

~(A==B)

B = A

A==B

%% 2)

clearvars; close all; clc;

A = [30 40 20 55; 3 70 20 12];
B = [30 40 20 55; 30 7 20 12];

if isequal(A,B)
    disp('A é igual à B')
    
else
    disp('A é diferente de B') 

end

disp('Fim')

%% 3)

clearvars; close all; clc;

disp(['Vamos ver se voce pode votar!' newline])

anoAtual = input('Me diga em que ano estamos: ');


disp(' ');

if mod(anoAtual, 2) == 0
    
    nascimento = input('Entre com o ano que você nasceu: ');
    idade = anoAtual - nascimento;
    
    if idade < 16
        disp('Você ainda não tem idade para votar.');
    elseif idade >= 18
        disp('Voce deve votar esse ano!');
    else
        disp('Você fez seu título de eleitor?');
        titulo = input('Se sim, digite 1, se não, digite 0: ');
        disp(' ');
        if titulo == 1
            disp('Voce deve votar esse ano!');
        else
            disp('Você não pode votar, já que não fez seu título de eleitor.')
        end
    end
else
    disp('Não teremos eleições nesse ano.')
end
    
%% 4)

clearvars; close all; clc;

senha = input('Entre com sua senha: ' , 's');

if senha=="Deric123"
    disp('ACESSO PERMITIDO');
else
    disp('ACESSO NEGADO (otário!)');
end

%% 5)

clearvars; close all; clc;

n = input('Digite a quantidade de números que serão analisados: ');

disp(' ');

i = 1;
num = zeros(n);
for i=1:n
    string = sprintf('Digite o %s° número: ',int2str(i));
    num(i)= input(string);   
end

disp(' ');

numOrdem = sort(num, 'descend');
for i =1:length(numOrdem)
    disp(numOrdem(i));
end

%% 6)

clearvars; close all; clc;

disp('Vamos calcular seu peso ideal.');
disp(' ');

sexo = input('Entre com o seu sexo (1->masculino 2->feminino): ');
peso = input('Entre com o seu peso: ');
altura = input('Entre com a sua altura: ');

if sexo==1   
    pesoIdeal = (72.7*altura)-58;
else
    pesoIdeal = (62.1*altura)-44.7;
end
    
    
diferenca = pesoIdeal - peso;
sinal = sign(diferenca);
    
disp(' ')

if sinal<0
   moduloKg = abs(diferenca);
   fprintf('Você precisa perder %0.2f kilos para alcansar seu peso ideal.', moduloKg);
elseif sinal>0
   fprintf('Você precisa ganhar %0.2f kilos para alcansar seu peso ideal.', diferenca);
else
   disp('Você está exatamente no seu peso ideal !');
end
    
    
    

           
        









