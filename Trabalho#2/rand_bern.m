function k = rand_bern(n, p)  
    vet = 1:n;
    for i = 1:n
        if rand() < p;
            vet(i) = 1;
        else
            vet(i) = 0;
        end
    end
    k = vet;
return 