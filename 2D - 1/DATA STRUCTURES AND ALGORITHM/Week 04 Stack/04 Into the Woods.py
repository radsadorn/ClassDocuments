if __name__ == '__main__':
    inp = input('Enter Input : ').split(',')

    trees = []
    for a in  inp:
        a = a.split()
        if a[0] == 'A':
            trees.append(int(a[1]))
        else:
            counter = 0
            max_ = -1
            for index in range(-1, - len(trees) - 1, -1):
                 if trees[index] > max_:
                     max_ = trees[index]
                     counter += 1
            print(counter)