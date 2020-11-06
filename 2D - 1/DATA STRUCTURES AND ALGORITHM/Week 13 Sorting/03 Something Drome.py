def selection(data):
    for last in range(len(data) - 1, -1, -1):
        biggest = data[0]
        biggest_index = 0
        for i in range(1, last + 1):
            if data[i] > biggest:
                biggest = data[i]
                biggest_index = i
        data[last], data[biggest_index] = data[biggest_index], data[last]
 
    return data

if __name__ == '__main__':

    inp = [int(a) for a in list(input('Enter Input : '))]

    tmp = selection(inp.copy())

    drome = ''

    if inp[0] == inp[-1]:
        drome = 'Repdrome'
    elif inp == tmp:
        drome = 'Metadrome'
        for i in range(len(inp) - 1):
            if inp[i] == inp[i + 1]:
                drome = 'Plaindrome'
                break
    elif inp[0:] == tmp[len(tmp) - 1:0:-1] + tmp[:1]:
        drome = 'Katadrome'
        for i in range(len(inp) - 1):
            if inp[i] == inp[i + 1]:
                drome = 'Nialpdrome'
                break
    else:
        drome = 'Nondrome'

    print(drome)
