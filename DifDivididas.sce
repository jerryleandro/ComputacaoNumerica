function [coef]=tabDif(x,y)
    n=length(x);
    T=zeros(n,n);
    
    T(:,1)=y;
    
    for j=2:n
        for i=1:n-j+1
            T(i,j)=(T(i+1,j-1)-T(i,j-1))/(x(i+j-1)-x(i));
        end
    end
    
    coef=T(1,:);
endfunction
