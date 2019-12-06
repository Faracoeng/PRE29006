function p = codificacaoAMI(vet)
    a = 5;
    for i = 1:24
        if vet(i) == 1
            vet(i) = a;
            a = -a;
        end
    end
    p = vet;
return