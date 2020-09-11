class Node:
    def __init__(self, value):
        self.value = value
        self.next = None

class LinkedList:
    def __init__(self):
        self.head = None
        self._size = 0

    def __str__(self):
        cur, s = self.head, str(self.head.value)
        while cur.next != None:
            s += " -> " + str(cur.next.value)
            cur = cur.next
        return s

    def isEmpty(self):
        return self.head == None

    def append(self, item):
        self._size += 1
        if self.isEmpty():
            self.head = Node(item)
            return
        node = self.head
        while(node.next != None):
            node = node.next
        node.next = Node(item)

class Queue:

    def __init__(self, data = None):
        self.queue = []
        if data != None:
            for d in data:
                self.enQueue(int(d))

    def __str__(self):
        return ' '.join(str(a) for a in self.queue)

    def enQueue(self, data):
        self.queue.append(data)

    def enQueue_front(self, data):
        self.queue.insert(0, data)

    def deQueue(self):
        return self.queue.pop(0) if self.size() != 0 else 'Empty'

    def item(self):
        return self.queue

    def size(self):
        return len(self.queue)
    
    def is_empty(self):
        return self.size() == 0

## FUNCTIONS

def get_digit(n, d):
    n = abs(n)
    for i in range(d - 1):
        n //= 10
    return n % 10

def get_max_bits(n):
    i = 0
    while n > 0:
        n //= 10
        i += 1
    return i

def radix_sort(L):
    q = Queue(L)
    print(max(L))
    max_bits = get_max_bits(max(L))
    print(max_bits)
    qq = list(Queue() for i in range(10))
    # print(q)
    for i in range (1, max_bits + 2):
        print('------------------------------------------------------------')
        print(f'Round : {i}')
        while not q.is_empty():
            num = q.deQueue()
            num_digit = get_digit(num, i)
            if num < 0:
                qq[num_digit].enQueue_front(num)
            else:
                qq[num_digit].enQueue(num)
        for i in range(10):
            print(i, ':', end = ' ')
            while not qq[i].is_empty():
                enq = qq[i].deQueue()
                print(enq, end = ' ')
                q.enQueue(enq)
            print()
    return max_bits, q
    
if __name__ == '__main__':
    inp = [int(a) for a in input('Enter Input : ').split()]

    times, radix = radix_sort(inp)
    print('------------------------------------------------------------')
    print(times, 'Time(s)')

    before = LinkedList()
    for data in inp:
        before.append(data)
    after = LinkedList()
    for data in radix.item():
        after.append(data)

    print('Before Radix Sort :', before)
    print('After  Radix Sort :', after)

