class Queue:

    def __init__(self):
        self.queue = []

    def __str__(self):
        return ', '.join(str(data) for data in self.queue) if self.size() != 0 else 'Empty'

    def push(self, data):
        if data[0] == 'EN' or self.size() == 0:
            self.queue.append(data)
        else:
            for i, val in enumerate(self.queue):
                if val[0] == 'EN':
                    self.queue.insert(i, data)
                    break
                elif i == self.size() - 1:
                    self.queue.append(data)
                    break

    def pop(self):
        return self.queue.pop(0) if self.size() != 0 else 'Empty'

    def size(self):
        return len(self.queue)

if __name__ == '__main__':
    lst = [data.split() for data in input('Enter Input : ').split(',')]
    queue = Queue()

    for data in lst:
        if len(data) == 1:
            pop = queue.pop()
            print(pop if pop == 'Empty' else int(pop[1]))
        else:
            queue.push(data)
