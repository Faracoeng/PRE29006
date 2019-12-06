close all;
clear all;
clc;
%% Codificação polar
vet = [0 1 0 1 0 0 0 0 0 1 0 1 0 0 1 0 0 1 0 0 0 1 0 1];
codificacaoPolar(vet)
%% Codificação AMI
vet = [0 1 0 1 0 0 0 0 0 1 0 1 0 0 1 0 0 1 0 0 0 1 0 1];
codificacaoAMI(vet)
%% Testes de Média e autocorrelação
NExp = 100000;
vetorTeste = rand_bern(NExp,0.5);
%--------------------------------------| Codificação
pol = codificacaoPolar(vetorTeste);
ami = codificacaoAMI(vetorTeste);
%--------------------------------------| Média
mediaPolar = mean(pol)
mediaAMI = mean(ami)
%--------------------------------------| Autocorrelação
[R1, e1] = xcorr(pol, 30, 'biased');
[R2, e2] = xcorr(ami, 30, 'biased');
%--------------------------------------| Plot
figure(1)
stem(e1, R1);
title('Autocorrelaçao Polar')
figure(2)
stem(e2, R2);
title('Autocorrelaçao AMI')

