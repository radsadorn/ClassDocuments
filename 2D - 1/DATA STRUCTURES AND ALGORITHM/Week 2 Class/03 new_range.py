def new_range(x):
    n = 0
    for s in x:
        if s == ' ':
            n += 1

    start, end, step = 0.0, 10.0, 1.0
    if n == 0:
        end = float(x)
    elif n == 1:
        start, end = map(float, x.split())
    else:
        start, end, step = map(float, x.split())

    lst = []
    while start < end:
        lst.append(round(start, 3))
        start += step
    return lst

if __name__ == '__main__':
    print("*** New Range ***")
    x = input("Enter Input : ")
    print(tuple(new_range(x)))