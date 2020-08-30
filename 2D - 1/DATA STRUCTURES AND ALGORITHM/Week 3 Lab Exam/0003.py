if __name__ == '__main__':
    inp = [int(x) for x in input('Enter number end with (-1) : ').split()]

    if -1 not in inp:
        print('Invalid INPUT !!!')
        quit()

    max_ = None
    n_max = None
    di = dict()
    for n in inp:
        if n == -1:
            break
        di[n] = di.get(n, 0) + 1
        if max_ == None or max_ < di[n]:
            max_ = di[n]
            n_max = n
            
    counter = 0
    for v in di.values():
        if v == max_:
            counter += 1

    if len(di) == 0 or counter > 1 or max_ < sum(x for x in di.values()) / 2:
        print('Not found')
        quit()
    print(n_max)

