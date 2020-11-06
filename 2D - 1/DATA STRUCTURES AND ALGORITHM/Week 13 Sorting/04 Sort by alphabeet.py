def insertion(data):

    for i in range(1, len(data)):
        tmp = data[i]

        for k in range(i, -1, -1):
            if tmp < data[k - 1] and k > 0:
                data[k] = data[k - 1]
            else:
                data[k] = tmp
                break

    return data

if __name__ == '__main__':
    inp = input('Enter Input : ').split()

    alphabets = 'abcdefghijklmnopqrstuvwxyz'

    d = {}
    data = []
    for w in inp:
        for alp in list(w):
            if alp in alphabets:
                d[alp] = d.get(alp, w)
                data.append(alp)

    data = insertion(data)
    print(' '.join([d[a] for a in data]))

    

    

    

