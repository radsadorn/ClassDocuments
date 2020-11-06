def selection(data):
    for last in range(len(data) - 1, -1, -1):
        if data[last] < 0:
            continue
        biggest = data[0]
        biggest_index = 0
        for i in range(1, last + 1):
            if data[i] > biggest:
                biggest = data[i]
                biggest_index = i
        data[last], data[biggest_index] = data[biggest_index], data[last]
 
    data = [str(a) for a in data]
    print(' '.join(data))
        

if __name__ == '__main__':
    inp = [int(a) for a in input('Enter Input : ').split()]
    selection(inp)