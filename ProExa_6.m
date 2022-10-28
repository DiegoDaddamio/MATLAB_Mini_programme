%demande un entier positif n.
%vérifie que l'entrée est correcte
%génère n nombres aléatoires (il y a une fonction MATLAB qui fait ça)
%calcule la somme de ces n nombres
%indique ce résultat en sortie
%Note : Il est interdit ici d'utiliser la fonction qui calcule la somme des éléments d'un tableau.

k = true;

while k
    disp('Veuillez représenter n, un entier positif')
    n = input('n :');
    if n == floor(n)
        if n > 0
            k = false;
        end
    end
end
random = rand(n,1);
for i = random
    k = k + i;
end
disp(k)
