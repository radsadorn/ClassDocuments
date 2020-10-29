class StackCalc:

    def __init__(self):
        self.stack = []

    def run(self, arg):
        arg = arg.split()

        for s in arg:
            if s == 'DUP':
                self.stack.append(self.stack[-1])
            elif s == 'POP':
                self.stack.pop()
            elif s == '+': 
                self.stack.append(self.stack.pop() + self.stack.pop())
            elif s == '-': 
                self.stack.append(self.stack.pop() - self.stack.pop())
            elif s == '*': 
                self.stack.append(self.stack.pop() * self.stack.pop())
            elif s == '/': 
                self.stack.append(self.stack.pop() // self.stack.pop())
            else:
                try:
                    self.stack.append(int(s))
                except:
                    print(f'Invalid instruction: {s}')
                    quit()

    def push(self, var):
        self.stack.append(var)
    
    def pop(self):
        return self.stack.pop()

    def peek(self):
        return self.stack[-1]
    
    def size(self):
        return len(self.stack)

    def getValue(self):
        return 0 if len(self.stack) == 0 else self.stack[-1]

if __name__ == '__main__':
    print('* Stack Calculator *')
    arg = input('Enter arguments : ')
    machine = StackCalc()
    machine.run(arg)
    print(machine.getValue())