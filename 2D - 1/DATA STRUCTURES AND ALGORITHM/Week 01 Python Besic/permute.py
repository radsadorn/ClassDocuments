def permute(lst):
    lst_permute = []
    lst.reverse()
    lst_permute.append(lst.copy())
    for round in range(1, len(lst) - 1):
        copy_lst = lst.copy()

        for n in range(len(lst) - 1):
            if n != 0 :
                copy_lst[n], copy_lst[n + 1] = copy_lst[n + 1], copy_lst[n]
                lst_permute.append(copy_lst.copy())
                
            new_lst = copy_lst.copy()
            for m in range(len(new_lst) - 1):
                new_lst[m], new_lst[m + 1] = new_lst[m + 1], new_lst[m]
                lst_permute.append(new_lst.copy())
                
        if round < len(lst) - 2:
            lst[round + 1], lst[round + 2] = lst[round + 2], lst[round + 1]
            lst_permute.append(lst.copy())

    return lst_permute

print('*** Fun with permute ***')

lst = [int(a) for a in input('input : ').split(",")]

print('Original Cofllection: ', lst)
print('Collection of distinct numbers:')
print('', permute(lst))