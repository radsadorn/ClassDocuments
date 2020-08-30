def Find3Sum(x):
    n = len(x)
    ans = []

    if n < 3:
        return 'Array Input Length Must More Than 2'
    else:
        for i in range(n):
            for k in range(i + 1, n):
                for m in range(k + 1, n):
                    sum = x[i] + x[k] + x[m]
                    lst = [x[i], x[k], x[m]]
                    if sum == 0:
                        if lst not in ans:
                            ans.append(lst)
    return ans



def main():
    lst = list(map(int, input("Enter Your List : ").split()))
    print(Find3Sum(lst))

if __name__ == '__main__':
    main()