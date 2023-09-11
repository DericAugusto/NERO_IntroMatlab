clear all; close all; clc;

v = [1:3:32];
disp('média de v (pela FMedia): ');
FMedia(v); 

disp('média de v (pela MS) :');
[mediaV, somaV] = MS(v);
disp(mediaV);


