def length(txt):
    if txt[0:] is txt[-1:]:
        print(txt[0], end = "*")
        return 1
    s = length(txt[:-1])
    print(txt[s], end = "*" if s % 2 == 0 else "~")
    return s + 1

if __name__ == '__main__':
    print("\n",length(input("Enter Input : ")),sep="")