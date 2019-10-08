%% Questão 1.a
clear all;
close all;
clc;
rand_binom(510,0.5);                 


%% Questão 1.b
%-----Declarações---------
clear all;
close all;
clc;
NExp = 1000000;
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
for k = 1: n_01+1
    vetTeorico01(k) =  pmf_binom(n_01,k,p_01);  
end
% -------Teórico02-------------------------
vetTeorico02 = 0:n_02;

for k = 1 : n_02+1
    vetTeorico02(k) =  pmf_binom(n_02,k,p_02);  
end
%---------Plot experimento 01---------
histograma_01 = hist(vet01,0:n_01);
pmf_01_simul = histograma_01 / NExp;

figure; 
bar(0:n_01, pmf_01_simul,'b');
xlim([-2 max(vet01)+2]);
%--------------Plot experimento 02----
histograma_02 = hist(vet02,0:n_02);
pmf_02_simul = histograma_02 / NExp;

figure;
bar(0:n_02, pmf_02_simul,'r');
xlim([-2 max(vet02)+2]);
%----------Plot teorico 01---------------
figure
stem(0:n_01,vetTeorico01);
xlim([-2 max(n_01)+2]);
%----------Plot teorico 02---------------
figure
stem(0:n_02,vetTeorico02);
xlim([-2 max(n_02)+2]);
%  figure(2);
%  subplot(3,1,1);
%  stem(n,z);
%  subplot(3,1,2);
%  stem(n,z1);
%  subplot(3,1,3);
%  stem(n,z2);
 
