
1;

function y=uExacte1(x,a,b,c)
    y = c+(b-x).*(x-a)/2;
endfunction
#=====================================

function y=g(x,a,b)
    y = sin(pi*(x-a)/(b-a) );
endfunction

#======================================
function y=uExacte2(x,a,b,c)
    R = pi/(b-a); Rx = R*(x-a);
    y = c + sin( Rx )*R^(-2);
endfunction
#========================================


function y=h(x,a,b)
    y = 1 + cos( 4*pi*(x-a)/(b-a) );
endfunction

function y=uExacte3(x,a,b,c)
    R = 4*pi/(b-a); Rx = R*(x-a);
    y = c + ( cos( Rx )-1 )*R^(-2) ;
    y = y + (b-x).*(x-a)/2;
endfunction


function y= f(x,a,b,c)
  y=ones(length(x),1);
endfunction
#=====================================
