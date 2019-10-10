function k = rand_binom(n, p)  
     k = sum(rand(1,n) < p);
    return 