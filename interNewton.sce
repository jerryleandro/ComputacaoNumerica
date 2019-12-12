function S=interpolNewton(x0,xi,yi)
    coef=tabDif(xi,yi);
    n=length(xi);
    
    S=coef(1);
    for i=2:n
        prod=1;
        
        for(j=1:i-1)
            prod=prod*(x0-xi(j));
        end
        
        S=S+coef(i)*prod; 
    end
endfunction
