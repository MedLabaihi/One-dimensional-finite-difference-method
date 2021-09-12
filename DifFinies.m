function [A,B]=DifFinies(a,b,c,N,f)
    h = (b-a)/(N+1);
    A = 2*diag(ones(N,1))-diag(ones(N-1,1),1)-diag(ones(N-1,1),-1);
    B = f([a+h:h:b-h]',a,b)*(h^2);
    B(1) = B(1)+c; B(N) = B(N)+c;
endfunction





##function [A,B]=DifFinies(a,b,c,N)
##    h = (b-a)/(N+1);
##    A = 2*diag(ones(N,1))-diag(ones(N-1,1),1)-diag(ones(N-1,1),-1);
##    B = ones(N,1)*(h^2);
##    B(1) = B(1)+c; B(N) = B(N)+c;
##endfunction
















