class Node:
    def __init__(self, data):
        self.data = data
        self.left = None
        self.right = None
    
    def __str__(self):
        return str(self.data)

class BST:
    def __init__(self):
        self.root = None

    def insert(self, node, data):
        if not node:
            return Node(data)
        if data < node.data:
            node.left = self.insert(node.left, data)
        else:
            node.right = self.insert(node.right, data)

        return node


def height(obj):
    if not obj:
        return -1
    a = height(obj.left) + 1
    b = height(obj.right) + 1

    return max(a, b)

if __name__ == '__main__':
    T = BST()
    inp = [int(i) for i in input('Enter Input : ').split()]
    for i in inp:
        T.root = T.insert(T.root, i)

    print('Height :', height(T.root))