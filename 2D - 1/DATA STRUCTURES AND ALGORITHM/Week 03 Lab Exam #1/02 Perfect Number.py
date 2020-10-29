if __name__ == '__main__':
    print(' *** Perfect Number Verification ***')
    n = int(input('Enter number : '))

    if n < 1:
        print('Only positive number !!!')
        quit()
    factors = [1]
    for i in range(2, n):
        if n % i == 0:
            factors.append(i)

    print(f'{n} is a PERFECT NUMBER.' if sum(factors) == n else f'{n} is NOT a perfect number.')
    print('Factors :', factors)
