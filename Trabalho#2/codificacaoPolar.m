function p = codificacaoPolar(vet)
    a = 5;
    for i = 1:24
        if vet(i) == 0
            vet(i) = -a;
        else
            vet(i) = a;
        end
    end
    p = vet;
return