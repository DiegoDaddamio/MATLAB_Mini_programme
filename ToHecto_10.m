%Un palindrome est un mot qui se lit de facon identique dans les 2 sens
%(exemple : radar est un palindrome). Le programme demande un mot X,
%verifie s’il est un palindrome et affiche « oui » ou « non » selon les cas.

K = true;
while K
    m = lower(char(input('Donne moi un mot :','s')));
    k = length(m)-1;
    n = zeros(k,1);

    for i = 0:length(m)-1
      n(1,i+1) = m(1,k+1-i);
    end

    n = char(n);
    n = n(1,:);

    if n == m
        disp("Oui, "+m+" est un palindrôme !")
        K = false;
    else
        disp("Non, "+m+" n'est pas d'un parlindrôme")
    end
end