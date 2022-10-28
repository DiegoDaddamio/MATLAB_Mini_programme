%Ecrivez un programme qui demande d'introduire un entier n positif.
%Il crée et affiche ensuite un tableau de 3 lignes et n colonnes tel que :
%la première ligne contient 1/n,2/n,3/n,...n/n
%la seconde ligne contient les mêmes termes que ceux de la colonne 1, mais pris au carré
%la troisième ligne contient les mêmes termes que ceux de la colonne 1, mais pris à la racine carrée.

n = 0;

while n <= 0
 n = input('Veuillez entrer n tel que n>0 :');
end

tab = zeros(3,n);

for i=1:n
    tab(1,i) = i/n;
end

tab(2,1) = tab(1,1).^2;
for i = 1:2
    tab(3,i) = tab(i,1).^(1/2);
end

disp(tab)