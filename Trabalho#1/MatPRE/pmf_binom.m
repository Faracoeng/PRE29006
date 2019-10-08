function PK =  pmf_binom (n,k,p)

    PK = ( factorial(abs(n)) / (factorial(abs(k)) .* factorial(abs(n-k)))) .* ( (p .^ k).* ((1-p).^ (n-k)) );
    
return  