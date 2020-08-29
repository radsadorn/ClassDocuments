class MyInt:

    def __init__(self, n):
        self.n = n
        self.is_prime = False
        self.list_prime = list()

        for x in range(2, self.n + 1):
            a = 2
            while a <= x ** 0.5:
                if x % a == 0:
                    break
                a += 1
            else:
                self.list_prime.append(x)
                if x == self.n:
                    self.is_prime = True

    def isPrime(self):
        return self.is_prime

    def showPrime(self):
        print(f'Prime number between 2 and {self.n} : ', end = '')
        if self.n < 2:
            print('!!!A prime number is a natural number greater than 1')
            return 0
        for a in self.list_prime:
            print(a, end = " ")
        print()

    def __sub__(self, b):
        print(f'{self.n} - {b} = {self.n - (b // 2)}')

if __name__ == '__main__':
    print(' *** class MyInt ***')
    x, y = map(int, input('Enter 2 number : ').split())

    a = MyInt(x)
    b = MyInt(y)
    print(f'{x} isPrime :', a.isPrime())
    print(f'{y} isPrime :', b.isPrime())
    a.showPrime()
    b.showPrime()
    a.__sub__(y)