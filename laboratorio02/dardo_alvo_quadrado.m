clear all;
close all;
clc;

Nexp = 100000;

X = rand(1,Nexp);
Y = rand(1,Nexp);
figure(1)
scatter(X(1:1000),Y(1:1000)) % acessando somente as 1000 primeiras posições

D = sqrt((X - 0.5).^2 + (Y - 0.5).^2);

SD = -0.1 : 0.01 : 0.8;

freq_D = hist(D,SD);
pdf_D = freq_D / trapz(SD, freq_D);
figure(2)
bar(SD, pdf_D, 'D') % Poderia usar plot()
