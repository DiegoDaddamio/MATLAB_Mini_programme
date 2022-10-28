%Ecrivez un programme qui demande d’entrer 2 nombres a et b, 
%puis calcule et affiche les solutions de ax+b=0

a = input('Veuillez entrer une constante a :');
b = input('Veuillez entrer une constante b :');
while a == 0
    disp('a ne peut être égal à 0')
    a = input('Veuillez entrer une constante a différente de 0 :');
end
x = -b/a