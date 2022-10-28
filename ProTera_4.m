%Ecrivez un programme qui demande d'introduire deux réels a et b, avec a<b.
%Il calcule alors une suite élémentaire de la façon suivante : il part de a, place cette valeur dans une
%variable c et incrémente c par pas successifs de 0.1.
%Le programme s'arrête dès que c s'approche de b de moins de 0.1.
%Il donne alors la valeur de c et le nombre d'itérations qui ont été nécessaires.

a = 1;
b = 0;
while a > b
    disp('Veuillez introduire a et b tel que a < b')
    a = input('a :');
    b = input('b :');
end
c = a:0.1:b-0.1;
c2 = size(c);
k = c2(2)-1;
disp(c)
disp(k)