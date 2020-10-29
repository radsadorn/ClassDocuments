class Node:

    def __init__(self, data = None):
        self.data = data
        self.next = None

class LinkedList:

    def __init__(self, head = None):
        if head == None:
            self.head = self.tail = None
            self.list_size = 0
            return
        self.head = head
        val = head
        self.list_size = 1
        while val.next != None:
            val = val.next
            self.list_size += 1
        self.tail = val

    def __str__(self):
        lst = []
        link = self.head
        while link.next != None:
            lst.append(link.data)
            link = link.next
        lst.append(link.data)
        return 'size ' + str(self.size()) + ' : ' + ' '.join(lst)

    def size(self):
        return self.list_size

    def isEmpty(self):
        return True if self.list_size == 0 else False

    def append(self, data):
        self.list_size += 1
        if self.head == None:
            self.head = Node(data)
            return
        link = self.head
        while link.next != None:
            link = link.next
        self.tail = link.next = Node(data)
    
    def addHead(self, data):
        link = Node(data)
        link.next = self.head
        self.head = link
        self.list_size += 1

    def isIn(self, data):
        link = self.head
        while link.next != None and link.data != data:
            link = link.next
        return True if link.data == data else False
    
    def before(self, data):
        if self.head.data == data:
            return None
        link = self.head
        while link.next != None and link.next.data != data:
            link = link.next
        return None if link.next == None else link

    def remove(self, data):
        self.list_size = self.list_size - 1 if self.list_size > 0 else 0
        link = self.before(data)
        if link == None and self.size() == 1:
            self.head = None
            return
        val = link.next
        link.next = link.next.next if link.next != None else None
        return val

    def removeTail(self):
        val = self.tail
        link = self.before(self.tail.data)
        link.next = None
        self.tail = link
        self.list_size -= 1
        return val

    def removeHead(self):
        val = self.head
        self.head = self.head.next
        self.list_size -= 1
        return val

    def deleteAfter(self, index):
        self.list_size = self.list_size - 1 if self.list_size > 0 else 0
        link = self.head
        if index > self.size():
            return Node()
        for i in range(index):
            link = link.next
        val = link.next
        link.next = link.next.next if link.next != None else None
        return val

    def nodeAt(self, index):
        link = self.head
        if index > self.size():
            return None
        for i in range(index):
            link = link.next
        return link


if __name__ == '__main__':
    link = LinkedList()

    link.append('A')
    link.append('B')
    link.append('C')
    print(link)

    link.addHead('0')
    print(link)

    print(link.removeHead().data)
    print(link)

    print(link.removeTail().data)
    print(link)

    link.append('M')
    link.append('N')
    link.append('O')
    print(link)
    print(link.before('O').data)

    print(link.isIn('M'))
    print(link.isEmpty())

    print(link.nodeAt(3).data)
    print(link.deleteAfter(3).data)
    print(link)


        
        



    
    
