
 
Fonctions


disp("Donner les bords de l''intervalle");
a = input("a = ");  % a = 0
b = input("b = ");  % b = N°poste
c = input("Donner la condition aux bords c = ");  % c = N°GTP
N = input("Donner le nombre de subdivision N >=2 : "); 

x = linspace(a,b,N+2)';


uExa3 = uExacte3(x,a,b,c);
[A,B] = DifFinies(a,b,c,N,@h);

uApp3 = [c; A\B; c];

clf(); plot(x,uExa3,'r',x,uApp3,'bx');

legend("Exacte","Approchee"); title("Différences finies pour 1D");
ErDiff = norm(uExa3-uApp3,'inf');
printf("L'erreur ||uExa-uApp||oo = %.4e\n",ErDiff);
input("Continuez ?","s")



printf("\n\nOrdre de Cvgce : K=Erreur/h^2\n");
printf("=================================\n");
N=1;

for k=1:8
  N=2*N; h=(b-a)/(N+1);
  x = linspace(a,b,N+2)';
  uExa = uExacte3(x,a,b,c);
  [A,B] = DifFinies(a,b,c,N,@h);
  uA = [c; A\B; c];
  ErDiff = norm(uExa-uA,'inf');
  K=ErDiff/h^2;
  printf("N = %d\t\tK = %.3f\n",N,K);
endfor
