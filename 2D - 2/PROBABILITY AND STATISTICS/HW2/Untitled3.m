figure(3)
edges = linspace(0, 30, 11); % Create 11 bins.
histogram(Serves, 'BinEdges', edges);
xlim([0, 30]);
title('Serve points made by women volleyball player in FIVB 2020 (Preliminary Round)');
xlabel('Serve points (points)');
ylabel('Frequency of Serve points');
grid on;