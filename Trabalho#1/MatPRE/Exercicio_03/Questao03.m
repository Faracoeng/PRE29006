%% Questão 3.a i
n = 20; % Número de pacotes transmitidos
p = 0.9; % probabilidade
EX = n * p
% 18 transmissões em média;

%% Questão 3.a ii
n = 20;
k = 0:15;
p = 0.9;
pr = 0;
for i = k
   i
   x = pmf_binom(n,i,p) 
   pr = pr + x;
 
end
resultado = 1 - pr
%% Questão 3.b i
k = 16; % quantos sucessos são requeridos
p = 0.9; % probabilidade
EX = k/p 
% 17.80 transmissões em média;

%% Questão 3.b ii

n = 16:20;
p = 0.9;
k = 16;
x = 0;
pr = 0;
for i = n
  i
   x = pmf_pascal(i,k,p) 
   pr = pr + x;
end
pr

