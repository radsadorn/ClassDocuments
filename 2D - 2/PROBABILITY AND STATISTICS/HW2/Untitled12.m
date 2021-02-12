stems=fix(Total/10);
leaf=fix(rem(Total,10));
[stems, index]=sort(stems,'ascend');
leaf=leaf(index);
[a,b]=hist(stems,unique(stems));
n=length(a);
b(n);
start = 0;

fprintf('Total points made by women volleyball player in FIVB 2020 (Preliminary Round)\n');
for ii=1:n
    fprintf('%2d | ',start);
    while b(ii) > start
        start = start + 1;
        fprintf('\n%2d | ',start);
    end
    
    [leaf(1:a(ii)), index]=sort(leaf(1:a(ii)),'ascend');
    for kk = 1:a(ii)
        fprintf('%d',leaf(kk))
    end
    leaf(1:a(ii))=[];
    start = start + 1;
    fprintf('\n');
end