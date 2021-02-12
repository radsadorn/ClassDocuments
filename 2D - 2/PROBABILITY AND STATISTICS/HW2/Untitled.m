figure(1)
edges = linspace(0, 400, 21); % Create 20 bins.
histogram(Attacks, 'BinEdges', edges);
xlim([0, 400]);
title('Attack points made by women volleyball player in FIVB 2020 (Preliminary Round)');
xlabel('Attack points (points)');
ylabel('Frequency of Attack points');
grid on;