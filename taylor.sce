function t = taylor(x0 , x , n)
    t = exp(x0)
    for i = 2: n 
        t = t+exp(x0)*(x - x0)^(i-1)/factorial(i-1)
    end
endfunction

t = taylor(-4.63,3.94,17)
