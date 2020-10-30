class Node:

    def __init__(self, name, pos = 0):
        self.data = name
        self.pos = pos
        self.left = self.right = None

    def __str__(self):
        return str(self.data)

class Tree:

    def __init__(self):
        self.root = None

    def insert(self, node, name, pos):
        if not self.root:
            self.root = Node(name, pos)
            return
        
        if pos == node.pos * 2 + 1:
            node.left = Node(name, pos)
            return node
        if pos == node.pos * 2 + 2:
            node.right = Node(name, pos)
            return node

        if node.left:
            node.left = self.insert(node.left, name, pos)
        if node.right:
            node.right = self.insert(node.right, name, pos)

        return node

    def sum(self, node):
        if not node:
            return 0

        sum = self.sum(node.left)
        sum += self.sum(node.right) + int(node.data)

        return sum
    
    def find_sum(self, node):
        if not node:
            return 0

        sum = 0
        if node.left:
            sum += node.left.data
        if node.right:
            sum += node.right.data

        return sum

    def pow_at(self, node, pos):
        if not node:
            return 0
        if pos == node.pos:
            return self.find_sum(node)

        data = self.pow_at(node.left, pos)
        if data :
            return data

        data = self.pow_at(node.right, pos)
    
        return data

    def printTree(self, node, level = 0):
        if node != None:
            self.printTree(node.right, level + 1)
            print('     ' * level, node)
            self.printTree(node.left, level + 1)

if __name__ == '__main__':
    inp = input('Enter Input : ').split('/')

    heap = Tree()

    data = list(map(int, inp[0].split()))

    for pos, name in enumerate(data):
        heap.insert(heap.root, name, pos)

    print(heap.sum(heap.root))
    for data in inp[1].split(','):
        data = data.split()

        a, b = heap.pow_at(heap.root, int(data[0])), heap.pow_at(heap.root, int(data[1]))
        
        oper = '='
        if a > b:
            oper = '>'
        if a < b:
            oper = '<'

        print(f'{str(data[0])}{oper}{str(data[1])}')
            

    