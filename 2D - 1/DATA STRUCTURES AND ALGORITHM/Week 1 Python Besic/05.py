print("*** Fun with countdown ***")
x = [int(a) for a in input("Enter List : ").split()]

n_countdown = 0
new_list = []
check = False
for i in range(-1, -len(x) - 1, -1):
    if x[i] == 1:
        n_countdown += 1
        new_list.insert(0, 1)
        check = True
    if len(new_list):
        if x[i] == new_list[-1] + 1 and check:
            new_list.insert(0, x[i])
        elif x[i] != 1:
            check = False

print(f'[{n_countdown}, [', end = '')
for i in range(-1, -len(new_list) - 1, -1):
    if new_list[i + 1] == 1:
        print("[", end = '')
    print(new_list[i], end = '')
    if new_list[i] == 1:
        print("]", end = '')
        if n_countdown > 1:
            print(", ", end = '')
        n_countdown -= 1
    else:
        print(", ", end = '')
    
print("]]")