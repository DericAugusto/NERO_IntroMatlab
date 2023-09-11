%exemplos de teste

clearvars; close all;clc;

a = linspace(-100,100);
b = linspace(-100,100);
[X,Y] = meshgrid(a,b);
Z = X.^2 + Y.^2;
%surf(X,Y,Z);
mesh(X,Y,Z);

%%
t = linspace(-100,100);
x = t;
y = t;
z = x.^2+y.^2;
plot3(x,y,z);
grid on