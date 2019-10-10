function PP = pmf_pascal(n, k, p)
    PP = ( factorial(n-1) / (factorial(k-1) .* factorial(n-k))) .* ( (p .^ k).* ((1-p).^ (n-k)));
return