def odd_list(alist):
    new_list = []
    for x in alist:
        n = 0
        if x % 2 == 1:
            new_list.append(x)

    return new_list


print(" ***Function Odd List***")
x = [int(i) for i in input("Enter list numbers : ").split()]

print("Input list : ", x, "\nOutput list : ", odd_list(x)) 