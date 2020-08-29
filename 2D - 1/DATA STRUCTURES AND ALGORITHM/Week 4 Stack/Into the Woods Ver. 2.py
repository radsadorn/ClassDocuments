def heightUp(height, check):
    if check:
        return (height + 2) if height % 2 == 1 else (height - 1)
    else:
        return height


if __name__ == '__main__':
    inp = input('Enter Input : ').split(',')
    check = False
    trees = []
    for a in  inp:
        a = a.split()
        if a[0] == 'A':
            trees.append(int(a[1]))
        elif a[0] == 'S':
            check = True
        else:
            counter = 0
            max_ = -1
            for index in range(-1, - len(trees) - 1, -1):
                 if heightUp(trees[index], check) > max_:
                     trees[index] = heightUp(trees[index], check)
                     max_ = trees[index]
                     counter += 1
            check = False
            print(counter)