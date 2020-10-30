class Node:
    def __init__(self, data):
        self.data = data
        self.left = None
        self.right = None
    
    def __str__(self):
        return str(self.data)

class Tree:
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

    def rank(self, node, data):
        
        if not node:
            return 0

        rank = 0
        rank = self.rank(node.left, data)
        if data >= node.data:
            rank += self.rank(node.right, data) + 1

        return rank
        

    def printTree(self, node, level = 0):
        if node != None:
            self.printTree(node.right, level + 1)
            print('     ' * level, node)
            self.printTree(node.left, level + 1)

if __name__ == '__main__':
    inp = input('Enter Input : ').split('/')

    tree = Tree()
    for data in inp[0].split():
        tree.insert(int(data))

    tree.printTree(tree.root)
    print('--------------------------------------------------')
    print(f'Rank of {inp[1]} : {tree.rank(tree.root, int(inp[1]))}')
        