%Le programme demande un entier n,
% puis calcule et affiche la somme des n premiers nombres impairs.
n = 0.5;
k = 1;
c = 0;
m = 0;

while n ~= floor(n)
    n = input("Veuillez choisir n, un entier : ");
end
while m < n
    c = k + c;
    k = k+2;
    m = m + 1;
    disp(c)
end

