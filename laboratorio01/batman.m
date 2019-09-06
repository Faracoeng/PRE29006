clear all;
close all;

Nexp = 1e6;
X = rand(1, Nexp);

xbins = -1: 0.01: 1.1;
histograma_X = hist(X, xbins);
pdf_X_simu1 = histograma_X / trapz(xbins, histograma_X);

y = X.^2;

ybins = -01: 0.01: 1.1;
histograma_Y = hist(y, ybins);
pdf_Y_simu1 = histograma_Y / trapz(ybins, histograma_Y);

plot(xbins, pdf_X_simu1, 'LineWidth', 4)
hold on
plot(Ybins, pdf_Y_simu1, 'LineWidth', 4, 'r')


