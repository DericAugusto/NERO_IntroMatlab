%{
Curos de MATLAB do NERO - UFV      24/10/2020
Módulo 3 - Aulas 6s
%}

% Função polar()
%% ex1:

clearvars; close all; clc;

t = linspace(-pi,pi,1000);
polar(t, 1-sin(t), 'r');


%% ex2:

clearvars; close all; clc;

x = linspace(-pi,pi,100);

hold on
title('Caracóis de Pascal (Limaçons)');
legend
for ii = 0.4:.2:1.2
    polar(x,ii+cos(x));
    pause(1)
end

%{ 
Tarefa

a) adicionar as legendas como o Kevin fez no vídeo dentro do for à cada
plot.
legend('legenda1', 'legenda2')

b)pesquisar pela função polarplot() e entender as diferenças em relação à 
função polar()  
      
%}

%% ex3:

clearvars; close all; clc;

th = [0:.01:2*pi];
polar(th, sin(2*th).*cos(2*th),'--r');
grid on