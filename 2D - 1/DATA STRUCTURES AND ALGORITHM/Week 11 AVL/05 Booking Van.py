class Node:

    def __init__(self, name, pos,data):
        self.name = name
        self.pos = pos
        self.data = data
        self.left = self.right = None

    def __str__(self):
        return str(self.name)

class Queue:
    def __init__(self):
        self.items = []

    def is_empty(self):
        return len(self.items) == 0

    def size(self):
        return len(self.items)

    def enqueue(self, data):
        self.items.append(data)

    def dequeue(self):
        if not self.is_empty():
            return self.items.pop(0)

class MinHeap:

    def __init__(self):
        self.root = None

    def insert(self, node, name, pos, data = 0):
        if not self.root:
            self.root = Node(name, pos, data)
            return
        
        if pos == node.pos * 2 + 1:
            node.left = Node(name, pos, data)
            return node
        if pos == node.pos * 2 + 2:
            node.right = Node(name, pos, data)
            return node

        if node.left:
            node.left = self.insert(node.left, name, pos, data)
        if node.right:
            node.right = self.insert(node.right, name, pos, data)

        return node

    def booking(self, data):
        q = Queue()
        self.root.data += data
        temp = self.root 

        q.enqueue(self.root.left)
        q.enqueue(self.root.right)

        heap = []

        while not q.is_empty():
            node = q.dequeue()
            if node.left is not None:
                q.enqueue(node.left)
            if node.right is not None:
                q.enqueue(node.right)

            if temp and temp.data < node.data:
                temp.left = temp.right = None
                heap.append(temp)
                temp = None

            if temp and temp.data == node.data:
                if temp.name < node.name:
                    temp.left = temp.right = None
                    heap.append(temp)
                    temp = None

            node.left = node.right = None
            heap.append(node)

            if temp and temp.data == node.data:
                if temp.name > node.name:
                    temp.left = temp.right
                    heap.append(temp)
                    temp = None

        if temp:
            heap.append(temp)
        self.root = None

        return heap
                
    def printTree(self, node, level = 0):
        if node != None:
            self.printTree(node.right, level + 1)
            print('        ' * level, node)
            self.printTree(node.left, level + 1)

if __name__ == '__main__':
    inp = input('Enter Input : ').split('/')

    heap = MinHeap()

    for name in range(int(inp[0])):
        heap.insert(heap.root, int(name) + 1, int(name))

    for cus, data in enumerate(inp[1].split()):
        heap.printTree(heap.root, 0)
        print(f'Customer {cus + 1} Booking Van {heap.root} | {data} day(s)')
        print('--------------------------------------------------')
        new_heap = heap.booking(int(data))
        for name in new_heap:
            # print(name.name, new_heap.index(name), name.data)
            heap.insert(heap.root, name.name, new_heap.index(name), name.data)