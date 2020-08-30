def Unique(string):
    lst = [string[0]]
    for s in string:
        for i in range(len(lst)):
            if s not in lst:
                lst.append(s)

    mapper = dict()
    for i in range(len(lst)):
        mapper[lst[i]] = i

    unique_lst = list()
    for s in string:
        unique_lst.append(mapper[s])
    return unique_lst

if __name__ == '__main__':
    string = input("Enter String : ")
    print(Unique(string))

    '''a, ans = [], []
    for s in string:
        if s not in a:
            a.append(s)
        ans.append(a.index(x))
    '''
