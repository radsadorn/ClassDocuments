n = int(input('Enter Input : '))

for i in range(n + 1, -1, -1):
    print('.' * i + '#' * (n + 2 - i), end = '')
    print('+' + ( '+' * n if i == n + 1 or i == 0 else '#' * n) + '+')
for i in range(n + 2):
    print('#' + ( '#' * n if i == n + 1 or i == 0 else '+' * n) + '#', end = '')
    print('+' * (n + 2 - i) + '.' * i)
