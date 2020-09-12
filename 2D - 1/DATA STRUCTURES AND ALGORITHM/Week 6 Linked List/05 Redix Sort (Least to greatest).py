class Node:
    def __init__(self, data):
        self.data = data
        self.next = None

class LinkedList:
    def __init__(self):
        self.head = None
        self._size = 0

    def __str__(self):
        cur, s = self.head, str(self.head.data)
        while cur.next != None:
            s += " -> " + str(cur.next.data)
            cur = cur.next
        return s

    def is_empty(self):
        return self.head == None

    def append(self, item):
        self._size += 1
        if self.is_empty():
            self.head = Node(item)
            return

        cur, node = self.head, Node(item)
        if item < cur.data:
            node.next = cur
            self.head = node
            return
            
        while(cur.next != None):
            if item < cur.next.data:
                node.next = cur.next
                cur.next = node
                return
            cur = cur.next
        cur.next = node

    def remove(self):
        self._size -= 1
        node = self.head
        self.head = self.head.next
        return node.data

    def size(self):
        return self._size

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
    max_bits = get_max_bits(max(L))
    qq = list(LinkedList() for i in range(10))
    # print(q)
    for i in range (1, max_bits + 2):
        print('------------------------------------------------------------')
        print(f'Round : {i}')
        while not q.is_empty():
            num = q.deQueue()
            num_digit = get_digit(num, i)
            qq[num_digit].append(num)

        check = qq[0].size()

        for a in range(10):
            print(a, ':', end = ' ')
            while not qq[a].is_empty():
                enq = qq[a].remove()
                print(enq, end = ' ')
                q.enQueue(enq)
            print()
        if check == q.size():
            return i - 1, q

    return max_bits, q
    
if __name__ == '__main__':
    inp = [int(a) for a in input('Enter Input : ').split()]

    times, radix = radix_sort(inp.copy())
    print('------------------------------------------------------------')
    print(times, 'Time(s)')

    print('Before Radix Sort :', ' -> '.join(str(a) for a in inp))
    print('After  Radix Sort :', ' -> '.join(str(a) for a in radix.item()))

