N = 100000;
M = 0;
hold on
graph = zeros(1001,1001);
graph2 = graph;
graph(:,1)=1;
graph(:,end)=1;
graph(end,:)=1;
graph(1,:)=1;
for k = 1:N
    C = rand(1,2);
    x = C(1,1);
    y = C(1,2);
    l = sqrt((x^2)+(y^2));
    if l < 1
        M = M + 1;
        graph(round((y*1000)+1),round((x*1000)+1)) = 1;
        spy(graph); drawnow
    else
        graph2(round((y*1000)+1),round((x*1000)+1)) = 1;
        spy(graph2,'r');drawnow
    end
end
fprintf("L'aproximation de pi est : %0.10f",4*(M/N))