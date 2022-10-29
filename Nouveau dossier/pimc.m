N = 100000;
M = 0;
for k = 1:N
    C = rand(1,2);
    x = C(1,1);
    y = C(1,2);
    l = sqrt((x^2)+(y^2));
    if l < 1
        M = M + 1;
    end
end
fprintf("L'aproximation de pi est : %0.4f",4*(M/N))