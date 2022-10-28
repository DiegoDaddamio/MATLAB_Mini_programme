%Le programme génère un code de 4 chiffres. Il demande à l'utilisateur
% d'entrer une valeur ; selon les cas, il indique « code bon » ou « recommencer ». 
% Si le code est bon, le programme se termine. Le programme a de la patience : 
% il continue tant que le code bon n'est pas trouvé.

coder = randi([0,9],1,4);
code = zeros(1,4);

for i=1:4

    code(i) = input("("+i+") Veuillez entrer le code :");
end

while code ~= coder

    disp('Recommencer')
    for i=1:4

        code(i) = input("("+i+") Veuillez entrer le code :");
    end
end

disp("Code bon")