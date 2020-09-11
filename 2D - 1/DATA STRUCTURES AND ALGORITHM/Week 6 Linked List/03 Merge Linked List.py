class Node:

    def __init__(self, data):
        self.data = data
        self.next = None
        self.previous = None

class LinkedList:

    def __init__(self):
        self.head = None
        self.tail = None
        self._size = 0

    def __str__(self):
        if self.isEmpty():
            return ""
        cur, s = self.head, str(self.head.data) 
        while cur.next != None:
            s += " " + str(cur.next.data)
            cur = cur.next
        return s

    def str_reverse(self):
        if self.isEmpty():
            return ""
        cur, s = self.tail, str(self.tail.data)
        while cur.previous != None:
            s += " " + str(cur.previous.data)
            cur = cur.previous
        return s

    def append(self, data):
        if self.isEmpty():
            self.head = self.tail = Node(data)
            self._size += 1
            return
        self._size += 1
        node = Node(data)
        node.previous = self.tail
        self.tail.next, self.tail = node, node
    
    def isEmpty(self):
        return self.size() == 0

    def size(self):
        return self._size

if __name__ == '__main__':
    inp = input('Enter Input (L1,L2) : ').split()

    l1 = LinkedList()
    l2 = LinkedList()
    print('L1    :', end = ' ')
    for data in  inp[0].split('->'):
        print(data, end = ' ')
        l1.append(data)
    print('\nL2    :', end = ' ')
    for data in  inp[1].split('->'):
        print(data, end = ' ')
        l2.append(data)

    print('\nMerge :', l1, l2.str_reverse())
