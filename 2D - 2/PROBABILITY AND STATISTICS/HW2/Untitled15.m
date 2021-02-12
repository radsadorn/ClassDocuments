a_mean = mean(Attacks);
a_mode = mode(Attacks);
a_median = median(Attacks);
a_std = std(Attacks)

b_mean = mean(Blocks);
b_mode = mode(Blocks);
b_median = median(Blocks);
b_std = std(Blocks)

s_mean = mean(Serves);
s_mode = mode(Serves);
s_median = median(Serves);
s_std = std(Serves)

t_mean = mean(Total);
t_mode = mode(Total);
t_median = median(Total);
t_std = std(Total)

fprintf('\nAttack points\n\tmean \t%f\n\tmode \t%d\n\tmedian \t%d\n\tStandard deviation \t%f\n', a_mean, a_mode, a_median, a_std);
fprintf('\nBlock points\n\tmean \t%f\n\tmode \t%d\n\tmedian \t%d\n\tStandard deviation \t%f\n', b_mean, b_mode, b_median, b_std);
fprintf('\nServe points\n\tmean \t%f\n\tmode \t%d\n\tmedian \t%d\n\tStandard deviation \t%f\n', s_mean, s_mode, s_median, s_std);
fprintf('\nTotal points\n\tmean \t%f\n\tmode \t%d\n\tmedian \t%d\n\tStandard deviation \t%f\n', t_mean, t_mode, t_median, t_std);
