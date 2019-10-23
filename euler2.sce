function [x,y,z] = eula2(a,b,h,y0,z0)
    x = a:h:b
    y(1) = y0
    z(1) = z0
    n = length(x)
    for i = 2: n 
     y(1) = y(i-1)+h*df1(x(i-1),z(i-1))
     z(i) = z(i-1)+h*df2(x(i-1),z(i-1))  
    end
endfunction

function g = df1(x)
    g = ("derivada da função ")
endfunction

function j = df2(x)
    j = ("")
endfunction
