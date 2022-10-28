%Ecrivez un programme qui demande d'entrer deux matrices carrées A et B.
%Il calcule ensuite, après avoir vérifié si les dimensions des matrices sont compatibles,
%le produit matriciel A⋅B. Le programme affiche ensuite le résultat.


a = 0;
b = 0;

while a <= 0
    a = input('Veuillez entrer n, la dimension de A tel que n>0 :');
end

A = zeros(a);

for i=1:a
    for j=1:a
        fprintf('Coordonée matriciel : %i,%i \n',i,j)
        k = input('Valeur :');
        A(i,j) = k;
    end
end



while b <= 0
    b = input('Veuillez entrer n, la dimension de B tel que n>0 :');
end

B = zeros(b);

for i=1:b
    for j=1:b
        fprintf('Coordonée matriciel : %i,%i \n',i,j);
        k = input('Valeur :');
        B(i,j) = k;
    end
end

if size(A) == size(B)
    disp('Le produit matriciel de ces matrices est possible, le voici')
    disp(A*B)
else
    disp('Désolé, le produit matriciel n''est pas faisable ici')
end
