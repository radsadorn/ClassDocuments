if __name__ == '__main__':
    color = input('Enter Input : ').split()
    counter, combo, combo_max = 0, 0, 0
    stacks = []
    for c in color:
        stacks.append(c)
        if len(stacks) > 2:
            if stacks[-1] == stacks[-2] and stacks[-2] == stacks[-3]:
                for i in range(3):
                    stacks.pop()
                if combo == 0:
                    combo, counter = 1, 0
                elif counter < 4:
                    combo += 1
                    counter = 0
                else:
                    combo = 0
        counter += 1
        if combo > combo_max:
            combo_max = combo

    print(len(stacks))
    stacks.reverse()
    print('Empty' if len(stacks) == 0 else ''.join(stacks))

    if combo_max > 1:
        print(f'Combo : {combo_max} ! ! !')
            
    
        
