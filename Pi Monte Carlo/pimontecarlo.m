function p = pimontecarlo(N)
format long
%Nous avons un cercle inscrit dans un carré dont la longeur longueur d'un
%coté du carré étant le diamètre du cercle.
%Notre objectif étant basé sur la probabilité d'un point aléatoirement
%placé dans un carré qui est peut-être placé dans le cercle. Tout cela dit
%comme ça parraît lourd et complexe, simlifions nous le système.
%La probabilité de notre énoncé sera la même que si nous nous focalisons
%uniquement sur un quart de carré avec la même position du cercle initial.

%Fixons la longueur d'un coté du carré à 2 et le rayon du cercle de 1
%Prenons comme repère le centre du cercle
M = 0;
%M sera le compteur de point rentrant dans le cercle (voir plus tard)
for k = 1:N
%Boucle pour déterminer N points
    C = rand(1,2);
    x = C(1,1);
    y = C(1,2);
%Coordonnées du point fixé aléatoirement par rapport à notre référentiel
    l = sqrt((x^2)+(y^2));
%Calcul de la distance entre le centre du cercle et le point fixé
    if l < 1
%Donc si la distance est plus petite que le rayon du cercle, alors le point
%est forcément dans le cercle
        M = M + 1;
%Nous ajoutons alors 1 au compteur si la condition est vraie
    end
end
p = 4*(M/N);
end
