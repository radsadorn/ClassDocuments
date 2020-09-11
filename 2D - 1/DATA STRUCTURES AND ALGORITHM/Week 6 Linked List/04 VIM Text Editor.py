class Node:

    def __init__(self, data):
        self.data = data
        self.next = None
        self.previous = None

class LinkedList:

    def __init__(self):
        self.head = self.tail = Node('')
        self._size = 0
        self.cursor = 0

    def __str__(self):
        if self.isEmpty():
            return ""
        cur, s, index = self.head, '', 0
        while cur.next != None:
            s += str(cur.data) + ' '
            cur = cur.next
            print(index, s)
            index += 1
        s += str(cur.data) + ' '

        # if index == self.cursor:
        #         s += '| '
        print(self.cursor)
        return s

    def insert(self, data):
        print(data)
        if self.size() == 0:
            self.head = Node(data)
            self.head.next = self.tail
            self.tail.previous = self.head
            self._size += 1
            self.cursor = 1
            return

        node = Node(data)
        self._size += 1

        # if self.tail.data == '|':
        #     self.cursor += 1
        #     node.previous = self.tail.previous
        #     node.next = self.tail
        #     self.tail.previous.next = node
        #     self.tail.previous.next, self.tail.previous = node, node
        #     return 
        self.cursor += 1
        print(self.cursor)
        node.previous = self.tail
        self.tail.next, self.tail = node, node

    def left(self):   
        if self.cursor >= 0:
            self.cursor -= 1   
        print(self.cursor)
        # if self.head.data == '|':
        #     return 

        # cur = self.head
        # while cur.next.data != '|':
        #     cur = cur.next

        # node = cur.next
        # cur.previous.next = node
        # cur.next = node.next
        # node.next = cur
        # cur.previous = node

        # if cur.next == None:
        #     self.tail = cur
        # if node.previous == None:
        #     self.head = node

    def right(self):
        if self.cursor < self.size() + 1:
            self.cursor += 1
        print(self.cursor)
        # if self.tail.data == '|':
        #     return 
        
        # cur = self.head
        # while cur.data != '|':
        #     cur = cur.next

        # if cur.next == None:
        #     return

        # node = cur.next
        # cur.previous.next = node
        # cur.next = node.next
        # node.next = cur
        # cur.previous = node

        # if cur.next == None:
        #     self.tail = cur
        # if node.previous == None:
        #     self.head = node
    def delete(self):
        if self.cursor == self.size():
            return 

        index = 0
        cur = self.head
        while index != self.cursor:
            index += 1
            cur = cur.next

        node = cur.previous
        node.next = cur.next
        cur.next.previous = node

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
        # elif data[0] == 'B':
        #     L.backspace()
        # else:
        #     L.delete()

    print(L)


        
        


        
    