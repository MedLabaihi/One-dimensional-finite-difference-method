
Fonctions


disp("Donner les bords de l''intervalle");
a = input("a = ");  
b = input("b = ");  
c = input("Donner les bords c = ");  
N = input("Donner le nombre de subdivision N >=2 : "); 


x = linspace(a,b,N+2)';
uExa2 = uExacte2(x,a,b,c);
[A,B] = DifFinies(a,b,c,N,@g);
uAp2 = [c; A\B; c];

plot(x,uExa2,'r',x,uAp2,'bx');
legend("Exacte","Approchee"); title("Differences finies pour 1D");
ErDiff = norm(uExa2-uAp2,'inf');
printf("L'erreur ||uExa2-uAp2||oo = %.5e\n",ErDiff);
print("FigDiff2_(N=10).pdf")
