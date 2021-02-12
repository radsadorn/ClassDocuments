figure(2)
edges = linspace(0, 55, 12); % Create 11 bins.
histogram(Blocks, 'BinEdges', edges);
xlim([0, 60]);
title('Block points made by women volleyball player in FIVB 2020 (Preliminary Round)');
xlabel('Block points (points)');
ylabel('Frequency of Block points');
grid on;