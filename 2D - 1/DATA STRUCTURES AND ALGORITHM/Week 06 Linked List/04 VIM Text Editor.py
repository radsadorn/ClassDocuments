class Node:

    def __init__(self, data):
        self.data = data
        self.next = None
        self.previous = None

class LinkedList:

    def __init__(self):
        self.head = self.tail = Node('|')
        self._size = 1

    def __str__(self):
        if self.isEmpty():
            return ""
        cur, s = self.head, str(self.head.data) 
        while cur.next != None:
            s += " " + str(cur.next.data)
            cur = cur.next
        return s

    def insert(self, data):
        node = Node(data)
        self._size += 1

        cur = self.head
        while cur.data != '|':
            cur = cur.next

        node.next = cur
        if cur.previous != None:
            cur.previous.next = node
        node.previous = cur.previous
        if cur.previous == None:
            self.head = node
        cur.previous = node

    def left(self):
        if self.head.data == '|':
            return

        cur = self.head
        while cur.next.data != '|':
            cur = cur.next

        node = cur.next
        if cur.previous != None:
            cur.previous.next = node
        cur.next = node.next
        node.next = cur
        node.previous = cur.previous
        if cur.previous != None:
            cur.previous = node

        if cur.next == None:
             self.tail = cur
        if node.previous == None:
             self.head = node

    def right(self):
        if self.tail.data == '|':
            return
        
        cur = self.head
        while cur.data != '|':
            cur = cur.next

        node = cur.next
        if cur.previous != None:
            cur.previous.next = node
        else:
            self.head = node
        cur.next = node.next
        if node.next != None:
            node.next.previous = cur
        else:
            self.tail = cur
        node.next = cur
        node.previous = cur.previous
        cur.previous = node

    def delete(self):
        if self.tail.data == '|' or self.size() < 2:
            return

        cur = self.head
        while cur.data != '|':
            cur = cur.next

        node = cur.next
        cur.next = node.next
        if node.next != None:
            node.next.previous = cur
        else:
            self.tail = cur
    
    def backspace(self):
        if self.head.data == '|':
            return
        
        cur = self.head
        while cur.next.data != '|':
            cur = cur.next

        node = cur.next
        node.previous = cur.previous
        if cur.previous != None:
            node.previous.next = node
        else:
            self.head = node

    def isEmpty(self):
        return self.size() == 0

    def size(self):
        return self._size

if __name__ == '__main__':
    inp = input('Enter Input : ').split(',')

    L = LinkedList()
    for data in inp:
        data = data.split()
        if data[0] == 'I':
            L.insert(data[1])
        elif data[0] == 'L':
            L.left()
        elif data[0] == 'R':
            L.right()
        elif data[0] == 'D':
            L.delete()
        elif data[0] == 'B':
            L.backspace()

    print(L)