%% Questão 1.a
clear all;
close all;
clc;
rand_pascal(5,0.5);
%% Questão 1.b

NExp = 100000;
k = 490;
k_01 = 2;
k_02 = 5;
p_01 = 0.5;
p_02 = 0.4;
vet01 = 1:NExp;
vet02 = 1:NExp;

%-----------simulação01-------------
for i = 1:NExp
   vet01(i) = rand_pascal(k_01, p_01);
   vet02(i) = rand_pascal(k_02, p_02);
end
% -------Teórico01-------------------
vetTeorico01 = k_01:k;
for i = vetTeorico01
    vetTeorico01(i-k_01+1) =  pmf_pascal(i,k_01,p_01);  
end
% -------Teórico02-------------------------
vetTeorico02 = k_02:k;
for i= vetTeorico02
    vetTeorico02(i-k_02+1) =  pmf_pascal(i,k_02,p_02);  
end

%---------Plot experimento 01---------
histograma_01 = hist(vet01,k_01:k);
pmf_01_simul = histograma_01 / NExp;

figure ; 
bar(k_01:k,pmf_01_simul,'b');
%hold on;
xlim([-2 max(10)+2]);
%--------------Plot experimento 02----
histograma_02 = hist(vet02,k_02:k);
pmf_02_simul = histograma_02 / NExp;

figure ;
bar(k_02:k, pmf_02_simul,'r');
%hold on;
xlim([-2 max(10)+2]);
% %----------Plot teorico 01---------------
figure 
stem(k_01:k,vetTeorico01);
xlim([-2 max(10)+2]);
% %----------Plot teorico 02---------------
figure 
stem(k_02:k,vetTeorico02);
xlim([-2 max(10)+2]);
%-----variância 01-----
var(pmf_01_simul)
mean(pmf_01_simul)
%-----variância 02-----
% var(pmf_02_simul)
% mean(pmf_02_simul)