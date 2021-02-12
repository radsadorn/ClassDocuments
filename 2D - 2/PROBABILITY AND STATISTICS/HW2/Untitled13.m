figure(9)
sz = 40;

%nexttile
scatter(Total,Attacks,sz,'MarkerEdgeColor',[0 .5 .5],...
              'LineWidth',.5);
xlabel('Total Points (Point)');
ylabel('Attack points made by player');
title('Total points made by Women volleyball player in FIVB 2020 (Preliminary Round)');
grid on;
          
nexttile
scatter(Total,Blocks,sz,'MarkerEdgeColor',[1 .5 .5],...
              'LineWidth',.5)
xlabel('Total Points (Point)');
ylabel('Blocks points made by player');
title('Total points made by Women volleyball player in FIVB 2020 (Preliminary Round)');
grid on;

nexttile
scatter(Total,Serves,sz,'MarkerEdgeColor',[.2 .1 .5],...
              'LineWidth',.5)
xlabel('Total Points (Point)');
ylabel('Serve points made by player');
title('Total points made by Women volleyball player in FIVB 2020 (Preliminary Round)');
grid on;
