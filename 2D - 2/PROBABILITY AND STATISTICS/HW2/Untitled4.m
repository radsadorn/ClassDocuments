figure(4)
edges = linspace(0, 440, 12); % Create 11 bins.
histogram(Total, 'BinEdges', edges);
xlim([0, 440]);
title('Total points made by women volleyball player in FIVB 2020 (Preliminary Round)');
xlabel('Total points (points)');
ylabel('Frequency of Total points');
grid on;