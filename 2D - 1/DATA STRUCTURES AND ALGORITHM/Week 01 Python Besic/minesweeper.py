def num_grid(lst):

    for i in range(0, 5):
        for k in range(0, 5):
            if lst[i][k] == '-':
                count = 0
                for row in range(i - 1, i + 2):
                    for col in range(k - 1, k + 2):
                        if row > -1 and row < 5 and col > -1 and col < 5:
                            count += 1 if lst[row][col] == '#' else 0
                lst[i][k] = str(count)


    return lst

lst_input = []

input_list = input().split(",")

for e in input_list:

  lst_input.append([i for i in e.split()])

print("\n",*lst_input,sep = "\n")

print("\n",*num_grid(lst_input),sep = "\n")

#num_grid(lst_input)