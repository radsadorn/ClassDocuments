def find_sum(data, index, size):
    if index >= size:
        return 0
    sum = find_sum(data, 2 * index + 1, size)
    sum += find_sum(data, 2 * index + 2, size) + data[index]
    return sum

if __name__ == '__main__':
    inp = input('Enter Input : ').split('/')

    data = [int(a) for a in inp[0].split()]

    print(sum(data))
    for curr in inp[1].split(','):
        curr = curr.split()
        a = find_sum(data, int(curr[0]), len(data))
        b = find_sum(data, int(curr[1]), len(data))

        operator = '='
        if a > b:
            operator = '>'
        elif a < b:
            operator = '<'

        print(f'{curr[0]}{operator}{curr[1]}')
