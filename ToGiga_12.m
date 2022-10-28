%Jeu du juste prix. L’objectif est de trouver par tâtonnements un nombre caché, compris entre 0 et 100 que l’ordinateur s’est choisi.
%Le programme choisit donc d’abord un entier compris entre 0 et 100, qu’il note Kche.
%Le programme demande ensuite à l’utilisateur d’entrer un nombre : selon les cas le programme indique : trop grand, trop petit ou gagné.
%Et ce jusqu’àce que le nombre Kche soit trouvépar l’utilisateur.

Kche = randi(101,1,1)-1;
player = -1;

while true

    player = input("Veuillez indiquez votre nombre :");

    if player > Kche
        disp('Trop grand')

    elseif player < Kche
        disp('Trop petit')

    else
        disp('Victoire !')
        break

    end

end
