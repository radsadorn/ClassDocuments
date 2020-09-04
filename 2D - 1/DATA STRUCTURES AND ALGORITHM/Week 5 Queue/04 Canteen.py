class Queue:

    def __init__(self):
        self.queue = []

    def __str__(self):
        return ', '.join(str(data) for data in self.queue) if self.size() != 0 else 'Empty'

    def push(self, data):
        if self.size() == 0:
            self.queue.append(data)
        else:
            for i, val in enumerate(self.queue):
                if data[0] < val[i]:
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
    inp = input('Enter Input : ').split('/')

    lst = dict()
    for data in inp[0].split(','):
        data = data.split()
        lst[data[1]] = lst.get(data[1], data[0])

    queue = Queue()
    for data in inp[1].split(','):
        data = data.split()
        if len(data) == 1:
            pop = queue.pop()
            print(pop if pop == 'Empty' else int(pop[1]))
        else:
            data[0] = lst[data[1]]
            queue.push(data)
