function p = codificacaoAMI(vet)
    a = 5;
    aux = size(vet);
    for i = 1:aux(2)
        if vet(i) == 1
            vet(i) = a;
            a = -a;
        end
    end
    p = vet;
return