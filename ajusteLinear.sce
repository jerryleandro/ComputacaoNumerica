function f = alinear(x , y)
    n = length(x)
    sx = 0
    sxq = 0
    sy = 0
    sxy = 0
    for i = 1: n
        sx= sx+x(i)
        sxq = sxq+ x(i)*x(i)
        sy = sy+y(i)
    end
    a = [n , sx;sx ,sxq];
    b = [sy;sxy];
    a = inv(a)*b
endfunction
    
