%Ecrivez un programme qui demande d'entrer un entier n strictement positif.
%Il vérifie que cette condition est remplie, puis calcule et affiche n! (factorielle de n).

k = 0;

while k == 0 
    n = input('Veuillez entrer n tel que n>0 : ');

    if n > 0 
        if n == floor(n)
            k = 1;
        end
    end
end

fact = n;

while n-1 > 0
k = n-1;
fact = fact * k;
n = k;
end
disp(fact)