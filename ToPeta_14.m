%Le programme génère un code de 4 chiffres. Il demande à l'utilisateur
% d'entrer une valeur ; selon les cas, il indique « code bon » ou « recommencer ». 
% Si le code est bon, le programme se termine. Le programme a de la patience : 
% il continue tant que le code bon n'est pas trouvé.

coder = 0;
code = -1;

for i =1:4
    coder = coder + randi([0,9],1)*(10^(i-1));
end
while true
    code = input("Code :");
    if code == coder
        disp("Code bon")
        break
    elseif code == -666
        disp('Chuuut')
        disp(coder)
    end
    disp('Recommencer')
end