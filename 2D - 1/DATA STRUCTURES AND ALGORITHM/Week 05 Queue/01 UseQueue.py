class Queue:

    def __init__(self):
        self.queue = []

    def __str__(self):
        return ', '.join(str(data) for data in self.queue) if self.size() != 0 else 'Empty'

    def push(self, data):
        self.queue.append(data)

    def pop(self):
        return self.queue.pop(0) if self.size() != 0 else 'Empty'

    def size(self):
        return len(self.queue)

if __name__ == '__main__':
    lst = [data.split() for data in input('Enter Input : ').split(',')]
    queue = Queue()
    dequeued = Queue()
    for data in lst:
        if len(data) == 1:
            pop = queue.pop()
            if pop != 'Empty':
                dequeued.push(pop)
                print(pop,'<-', end = ' ')
        else:
            queue.push(int(data[1]))
        print(queue)

    print(dequeued, ':', queue)