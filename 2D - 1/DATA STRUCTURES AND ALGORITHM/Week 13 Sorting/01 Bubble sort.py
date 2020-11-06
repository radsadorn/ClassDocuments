def bubble_sort(data):
    step = 1
    for last in range(len(data) - 1, -1, -1):
        swap = False
        tmp = None
        for i in range(last):
            if data[i] > data[i + 1]:
                tmp = data[i]
                data[i], data[i + 1] = data[i + 1], data[i]
                swap = True
        if swap:
            if step == len(data) - 1:
                print(f'last step : {data} move[{tmp}]')
                return
            else:
                print(f'{step} step : {data} move[{tmp}]')
            step += 1
        else:
            print(f'last step : {data} move[{tmp}]')
            return
        

if __name__ == '__main__':
    inp = [int(a) for a in input('Enter Input : ').split()]
    bubble_sort(inp)
