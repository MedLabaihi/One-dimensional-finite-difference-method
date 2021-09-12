
Fonctions


disp("Donner les bords de l''intervalle");
a = input("a = ");  
b = input("b = ");  
c = input("Donner la condition aux bords c = ");  % c = N°GTP
N = input("Donner le nombre de subdivision N >=2 : "); 


x = linspace(a,b,N+2)';
uExa1 = uExacte1(x,a,b,c);
[A,B] = DifFinies(a,b,c,N,@f);
uAp1 = [c; A\B; c]; # on inclut les bords
plot(x,uExa1,'r',x,uAp1,'bx');
legend("Exacte","Approchee"); title("Différences finies pour 1D");
ErDiff = norm(uExa1-uAp1,'inf');
printf("L'erreur ||uExa-uApp||oo = %.5e\n",ErDiff);
