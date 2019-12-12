function [x,y,z] = eula2(a,b,h,y0,z0)
    x = a:h:b
    y(1) = y0
    z(1) = z0
    n = length(x)
    for i = 2: n 
     y(i) = y(i-1)+h*df1(y(i-1),z(i-1))
     z(i) = z(i-1)+h*df2(y(i-1),z(i-1))  
    end
endfunction

function g = df1(y ,z)
    g = (z)
endfunction

function j = df2(y, z)
    j = (12-y-z)
endfunction
