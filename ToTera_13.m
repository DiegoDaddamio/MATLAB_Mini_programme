%Le programme demande a, b et c puis résout, en tenant compte
% de toutes les possibilites : ax2+bx+c=0

a = input('a :');
b = input('b :');
c = input('c :');
disp("Voici la fonction encodée : "a"x²+ "b"x+ "c"")

delta = b^2-(4*a*c);

if delta > 0
    disp('Il y a deux racines dans la fcontion')
    x1 = (-b-sqrt(delta))/(2*a);
    x2 = (-b+sqrt(delta))/(2*a);
    disp("Les voicis : {"+x1+";"+x2+"}")

elseif delta == 0
    disp("Il n'y à qu'une seule racine dans la fonction")
    x = (-b)/(2*a);
    disp("La voici : {"+x+"}")

else
    disp("Cette fonction ne possède aucun racine")

end
