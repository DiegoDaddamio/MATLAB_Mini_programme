%Le programme demande un entier n supérieur à 100,
% puis calcule et affiche la somme des nombres pairs compris entre 0 et n.


n = 0;
k = 0;

while n <= 100
    n = input("Veuillez choisir n, supérieur à 100 : ");
end

for i=2:2:n
    k = k+ i;
end
disp(k)
