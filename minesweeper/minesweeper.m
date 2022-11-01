setting = true;
game = true;
while setting
    n = input('Dimensions : ');    
    if (n == round(n) && n>0)
        setting = false;
    end
end
setting = true;
bmax = round((n^2)/4);
flagmax = bmax;
flag = 0;
fprintf("Max bomb is %u",bmax); disp(' ')
while setting
    k = input('Bombs : ');    
    if (k == round(k) && k>0 && k<=bmax)
        setting = false;
    end
end
bomber = zeros(n+4);
ghost = bomber;
player = ones(n)*10;
while sum(sum(bomber)) < k
    bomber(randi([3,n+2],1),randi([3,n+2],1)) = 1;
end

for i = 2:n+1
    for j = 2:n+1
        count = sum(sum(bomber(i:2+i,j:2+j)));
        if bomber(i+1,j+1) == 0
            ghost(i+1,j+1) = count;
        end
    end
end
ghost2 = ghost + bomber*10;
ghost2 = ghost2(3:n+2,3:n+2);
while game
    disp(player)
    k = input('flag/show/exit : ',"s");
    if k == "flag"
        k1 = input('row : ');
        k2 = input('col : ');
        if player(k1,k2) == 11
            player(k1,k2) = 10;
            flag = flag - 1;
        elseif player(k1,k2) == 10
            if flag <= flagmax
                player(k1,k2) = 11;
                flag = flag + 1;
            else
                disp("You have already placed all of your flags")
            end
        end
    elseif k == "show"
        k1 = input('row : ');
        k2 = input('col : ');
        if player(k1,k2) == 11
            disp("It's flaged")
        elseif player(k1,k2) == 10
            if ghost2(k1,k2) == 10
                player(k1,k2) = 15;
                disp('boom')
                disp(player)
                break
            else
                player(k1,k2) = ghost2(k1,k2);
            end
        else
            disp('You already discover this one')
        end
    elseif k == "exit"
        disp('See you soon')
        break
    else
        disp("Don't understand")
    end
end