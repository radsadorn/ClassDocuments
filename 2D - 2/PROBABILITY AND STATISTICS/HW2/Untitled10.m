stems=fix(Blocks/10);
leaf=fix(rem(Blocks,10));
[stems, index]=sort(stems,'ascend');
leaf=leaf(index);
[a,b]=hist(stems,unique(stems));
n=length(a);
b(n);
start = 0;

fprintf('Block points made by women volleyball player in FIVB 2020 (Preliminary Round)\n');
for ii=1:n
    tmp = 0;
    fprintf('%2d | ',start);
    while b(ii) > start
        start = start + 1;
        fprintf('\n%2d | ',start);
    end
    
    [leaf(1:a(ii)), index]=sort(leaf(1:a(ii)),'ascend');
    for kk = 1:a(ii)
        for mm = 2:2:8
            if (tmp < mm && leaf(kk) >= mm)
                fprintf('\n%2d | ',start);
            end
        end
        fprintf('%d',leaf(kk));
        tmp = leaf(kk);
    end
    for mm = 2:2:8
        if tmp < mm
            fprintf('\n%2d | ',start);
        end
    end
    leaf(1:a(ii))=[];
    start = start + 1;
    fprintf('\n');
end