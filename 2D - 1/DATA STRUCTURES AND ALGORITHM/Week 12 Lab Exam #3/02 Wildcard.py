def wildgrad(front, back):
    if back == []:
        print(''.join(front))
        return

    if back[0] == '_':
        wildgrad(front + ['0'], back[1:])
        wildgrad(front + ['1'], back[1:])
        return
    wildgrad(front + [back[0]], back[1:])

if __name__ == '__main__':

    print(' *** Wild grad ***')
    inp = list(input("Enter input ( '_' wildgrad ) : "))

    wildgrad([], inp)