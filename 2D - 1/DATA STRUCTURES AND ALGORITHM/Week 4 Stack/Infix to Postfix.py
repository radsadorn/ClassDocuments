class Stack:

    def __init__(self):
        self.stack = []

    def pop(self):
        return self.stack.pop()
    
    def push(self, var):
        self.stack.append(var)

    def peek(self):
        return self.stack[-1]

    def size(self):
        return len(self.stack)

    def is_empty(self):
        return True if len(self.stack) == 0 else False

if __name__ == '__main__':
    inp = list(input('Enter Infix : '))

    stacks = Stack()

    operator = {
        '*': 2, 
        '/': 2, 
        '^': 3, 
        '(': 3, 
        '+': 1, 
        '-': 1, 
    }

    print('Postfix : ', end = '')
    for i in inp:
        if i in '+-*/^(':
            if not stacks.is_empty() and operator.get(i, -2) <= operator.get(stacks.peek(), -2):
                while not stacks.is_empty() and stacks.peek() != '(':
                    print(stacks.pop(), end = '')
            stacks.push(i)
        elif i == ')':
            while not stacks.is_empty() and stacks.peek() != '(':
                print(stacks.pop(), end = '')
            stacks.pop()
        else:
            print(i, end = '')

    while stacks.size() != 0:
        print(stacks.pop(), end = '')
