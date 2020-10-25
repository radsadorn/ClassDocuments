class Node:

    def __init__(self, name, pos = 0):
        self.data = name
        self.pos = pos
        self.left = self.right = None

    def __str__(self):
        return str(self.data)

class Tree:

    def __init__(self):
        self.heap = None
        self.root = None

    def insert(self, data):
        if self.root is None:
            self.root = Node(data)
            return self.root
        node = self.root
        while True:
            if data < node.data:
                if node.left == None:
                    node.left = Node(data)
                    return self.root
                node = node.left
            else:
                if node.right == None:
                    node.right = Node(data)
                    return self.root
                node = node.right

    def insert_heap(self, node, name, pos):
        if not self.heap:
            self.heap = Node(name, pos)
            return
        
        if pos == node.pos * 2 + 1:
            node.left = Node(name, pos)
            return node
        if pos == node.pos * 2 + 2:
            node.right = Node(name, pos)
            return node

        if node.left:
            node.left = self.insert_heap(node.left, name, pos)
        if node.right:
            node.right = self.insert_heap(node.right, name, pos)

        return node
    
    def find_sum(self, node):
        if not node:
            return 0

        sum = self.find_sum(node.left)
        sum += self.find_sum(node.right) + int(node.data)

        return sum

    def pow_at(self, node, pos):
        if not node:
            return None
        if pos == node.pos:
            return self.find_sum(node)

        data = self.pow_at(node.left, pos)
        if data :
            return data

        data = self.pow_at(node.right, pos)
    
        return data

    def in_order(self, node):
        if node == None:
            return []

        s = self.in_order(node.right)\
             + [node.data]\
                 + self.in_order(node.left)
        return s

    def printTree(self, node, level = 0):
        if node != None:
            self.printTree(node.right, level + 1)
            print('     ' * level, node)
            self.printTree(node.left, level + 1)

if __name__ == '__main__':
    inp = input('Enter Input : ').split('/')

    heap = Tree()

    for data in inp[0].split():
        heap.insert(int(data))

    data = heap.in_order(heap.root)

    for pos, name in enumerate(data):
        heap.insert_heap(heap.heap, name, pos)

    heap.printTree(heap.heap)
    print(heap.find_sum(heap.heap))
    for data in inp[1].split(','):
        data = data.split()

        a, b = heap.pow_at(heap.heap, int(data[0])), heap.pow_at(heap.heap, int(data[1]))
        
        oper = '='
        if a > b:
            oper = '>'
        if a < b:
            oper = '<'

        print(f'{str(data[0])}{oper}{str(data[1])}')
            

    