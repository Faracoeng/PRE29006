%% Questão 1.a
clear all;
close all;
clc;


%% Questão 1.b
%-----Declarações---------
clear all;
close all;
clc;
NExp = 100000;
n_01 = 10;
n_02 = 50;
p_01 = 0.1;
p_02 = 0.25;
vet01 = 1:NExp;
vet02 = 1:NExp;

%-----------simulação01-------------
for i = 1:NExp
   vet01(i) = rand_binom(n_01, 0.1);
   vet02(i) = rand_binom(n_02, 0.25);
end
% -------Teórico01-------------------
vetTeorico01 = 0:n_01;
for k = vetTeorico01
    vetTeorico01(k+1) =  pmf_binom(n_01,k,p_01);  
end
% -------Teórico02-------------------------
vetTeorico02 = 0:n_02;

for k = vetTeorico02
    vetTeorico02(k+1) =  pmf_binom(n_02,k,p_02);  
end
%---------Plot experimento 01---------
histograma_01 = hist(vet01,0:n_01);
pmf_01_simul = histograma_01 / NExp;

figure(1); 
bar(0:n_01, pmf_01_simul,'b');
hold on;
xlim([-2 max(vet01)+2]);
%--------------Plot experimento 02----
histograma_02 = hist(vet02,0:n_02);
pmf_02_simul = histograma_02 / NExp;

figure(2);
bar(0:n_02, pmf_02_simul,'r');
hold on;
xlim([-2 max(vet02)+2]);
%----------Plot teorico 01---------------
figure(1)
stem(0:n_01,vetTeorico01);
xlim([-2 max(n_01)+2]);
%----------Plot teorico 02---------------
figure(2)
stem(0:n_02,vetTeorico02);
xlim([-2 max(n_02)+2]);
%-----variância 01-----
var(pmf_01_simul)
mean(pmf_01_simul)
%-----variância 02-----
var(pmf_02_simul)
mean(pmf_02_simul)
 

