function N = rand_pascal(k,p)
    N = rand(1) < p;    
    if k > N 
        if N == 1
            N = 1 + rand_pascal(k-1,p); 
        else N = 1 + rand_pascal(k,p); 
        end
    end
return