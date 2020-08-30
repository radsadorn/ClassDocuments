if __name__ == '__main__':
    inp = input('Enter Input : ').split(',')

    weights, hertz = [], []
    for i in inp:
        i = i.split()
        while len(weights) > 0 and int(i[0]) > weights[-1]:
            print(hertz.pop())
            weights.pop()
        weights.append(int(i[0]))
        hertz.append(int(i[1]))
        
