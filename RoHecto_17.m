%Le programme demande 2 nombres entiers n et m, 
% puis calcule et affiche les m premiers multiples de n.
n = 1.4;
m = 1.4;
while n ~= floor(n)
    n = input('n : ');
end

while m ~= floor(m)
    m = input('m : ');
end


for i=1:m
    disp(i+") : "+n*i)
end