def harmonics(n):
    if n == 1:
        print(n, end = " ")
        return 1
    sum = harmonics(n - 1) + 1 / n
    print(f'+ 1/{n}', end = ' ')
    return sum

if __name__ == '__main__':
    print(' *** Harmonics ***')
    inp = int(input('Enter Input : '))

    print("= %.8f" %harmonics(inp))