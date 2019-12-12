function [S]=interpolLagrange(x0,xi,yi)
    nPontos=length(xi)
    S=0
    //somatorio
    for i=1:nPontos
        produto=1
        //produtório
        for j=1:nPontos
           if i~=j then
                produto=produto*(x0-xi(j))/(xi(i)-xi(j))
           end
        end
        S=S+produto*yi(i)
    end
endfunction
