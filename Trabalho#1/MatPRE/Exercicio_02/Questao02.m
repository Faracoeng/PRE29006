%% Questão 1.a
clear all;
close all;
clc;
rand_pascal(5,0.5);
%% Questão 1.b
close all;
clear all;
clc;

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

figure(1); 
bar(k_01:k,pmf_01_simul,'b');
hold on;
xlim([-2 max(vet01)+2]);
%--------------Plot experimento 02----
histograma_02 = hist(vet02,k_02:k);
pmf_02_simul = histograma_02 / NExp;

figure(2);
bar(k_02:k, pmf_02_simul,'r');
hold on;
xlim([-2 max(vet02)+2]);
% %----------Plot teorico 01---------------
figure(1)
stem(k_01:k,vetTeorico01);
% %----------Plot teorico 02---------------
figure(2)
stem(k_02:k,vetTeorico02);
%-----variância 01-----
var_01 = var(pmf_01_simul)
med_01 = mean(pmf_01_simul)
var_teo01 = var(vetTeorico01)
med_teo01 = mean(vetTeorico01)
%-----variância 02-----
var_02 = var(pmf_02_simul)
med_02 = mean(pmf_02_simul)
var_teo02 = var(vetTeorico02)
med_teo02 = mean(vetTeorico02)