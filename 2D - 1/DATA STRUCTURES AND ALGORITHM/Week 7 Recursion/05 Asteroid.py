def asteroid_collision(asts):
    if len(asts) <= 1:
        return asts

    temp = asteroid_collision(asts[1:])

    if len(temp) != 0 and asts[0] > 0 and temp[0] < 0:
        if asts[0] > abs(temp[0]):
            return asteroid_collision([asts[0]] + temp[1:])
        elif asts[0] == abs(temp[0]):
            return temp[1:] if len(temp) > 1 else []
        else:
            return temp
    else:
        return [asts[0]] + temp

if __name__ == '__main__':
    x = input("Enter Input : ").split(",")
    x = list(map(int,x))
    print(asteroid_collision(x))