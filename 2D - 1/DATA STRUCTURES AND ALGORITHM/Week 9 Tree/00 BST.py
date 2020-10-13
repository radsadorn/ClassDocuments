class Node:
    def __init__(self, data):
        self.data = data
        self.left = None
        self.right = None
    
    def __str__(self):
        return str(self.data)

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

class Stack:
    def __init__(self):
        self.items = []

    def is_empty(self):
        return len(self.items) == 0

    def size(self):
        return len(self.items)

    def push(self, data):
        self.items.append(data)

    def pop(self):
        if not self.is_empty():
            return self.items.pop()

class BST:
    def __init__(self):
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

    def BFS(self): 
        q = Queue()
        q.enqueue(self.root)
        s = "Breadth : "
        while not q.is_empty():
            node = q.dequeue()
            s += str(node.data) + ' '
            if node.left is not None:
                q.enqueue(node.left)
            if node.right is not None:
                q.enqueue(node.right)
        return s

    def pre_order(self, node):
        if node == None:
            return
        print(node.data, end = ' ')
        self.pre_oder(node.left)
        self.pre_oder(node.right)

    def in_order(self, node):
        if node == None:
            return
        self.in_oder(node.left)
        print(node.data, end = ' ')
        self.in_oder(node.right)

    def post_order(self, node):
        if node == None:
            return
        self.post_order(node.left)
        self.post_order(node.right)
        print(node.data, end = ' ')

    def min(self):
        node = self.root
        while node.left != None:
            node = node.left
        return node.data

    def max(self):
        node = self.root
        while node.right != None:
            node = node.right
        return node.data
    
    def printTree(self, node, level = 0):
        if node != None:
            self.printTree(node.right, level + 1)
            print('     ' * level, node)
            self.printTree(node.left, level + 1)

if __name__ == '__main__':
    T = BST()
    inp = [int(i) for i in input('Enter Input : ').split()]
    for i in inp:
        root = T.insert(i)
    T.printTree(root)