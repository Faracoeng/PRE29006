%% -------------------------------| QUESTAO 3.a i
close all;
clear all;
clc;
%--------------------------------| VALOR ESPERADO
n = 20;
p = 0.9;
EX = n * p

%% -------------------------------| QUESTAO 3.a ii
close all;
clear all;
clc;
%--------------------------------| PROBABILIDADE
n = 20;
k = 0:15;
p = 0.9;
pr = 0;
for i = k
   x = pmf_binom(n,i,p);
   pr = pr + x;
end
resultado = 1 - pr

%% -------------------------------| QUESTAO 3.b i
close all;
clear all;
clc;
%--------------------------------| VALOR ESPERADO
k = 16; % quantos sucessos são requeridos
p = 0.9; % probabilidade
EX = k/p 
%% -------------------------------| QUESTAO 3.b ii
close all;
clear all;
clc;
%--------------------------------| PROBABILIDADE
n = 16:20;
p = 0.9;
k = 16;
x = 0;
pr = 0;
for i = n
   x = pmf_pascal(i,k,p);
   pr = pr + x;
end
pr
% -------------------------------------------------------------
%% Simulção das respostas


% a.i
NExp = 1000;
vet01 = 0:1000;
for i = 1:NExp
   vet01(i) = rand_binom(20, 0.9);  
end
mean(vet01) % número médio de pacotes recebidos.

% a.ii
total = 0;
for i = 1:NExp
   if vet01(i) >= 16 
        total = total + 1;
   end 
end
total / NExp % Probabilidade de que o arquivo original seja recuperado

% b.i
vet02 = 0:1000;
for i = 1:NExp
   vet02(i) = rand_pascal(16, 0.9);  
end
mean(vet02) % número médio de transmissões necessárias para que se recupere o arquivo.

% b.ii
total02 = 0;
for i = 1:NExp
   if vet02(i) <= 20
       total02 = total02 + 1; 
       
   end 
end
total02 / NExp % probabilidade de que se recupere a informação em no máximo 20 transmissões.

