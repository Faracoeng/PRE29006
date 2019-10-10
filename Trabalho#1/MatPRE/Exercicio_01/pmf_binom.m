function PK =  pmf_binom (n,k,p)
    
   % n
   % k
   % p

    PK = ( factorial(n) / (factorial(k) .* factorial(n-k))) .* ( (p .^ k).* ((1-p).^ (n-k)) );
    
return  