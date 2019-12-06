function p = codificacaoPolar(vet)
    a = 5;
    aux = size(vet);
    for i = 1:aux(2)
        if vet(i)
            vet(i) = a;
        else
            vet(i) = -a;
        end
    end
    p = vet;
return