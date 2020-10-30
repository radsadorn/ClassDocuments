class Node:
    def __init__(self, data): 
        self.data = data  
        self.left = None  
        self.right = None 
        self.level = None 

    def __str__(self):
        return str(self.data) 

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

    def delete_successor(self, node, data):
        if node is None:
            return None
        
        if data < node.data:
            node.left = self.delete_successor(node.left, data)
        elif data > node.data:
            node.right = self.delete_successor(node.right, data)
        else:
            if node.left is None:
                node = node.right
            else:
                cur = node.right
                while cur.left is not None:
                    cur = cur.left
                node.right = self.delete_successor(node.right, cur.data)
                node.data = cur.data
        return node

    def delete_predecessor(self, node, data):
        if node is None:
            return None
        
        if data < node.data:
            node.left = self.delete_predecessor(node.left, data)
            return node
        elif data > node.data:
            node.right = self.delete_predecessor(node.right, data)
            return node
        else:
            if node.right is None:
                node = node.left
            else:
                cur = node.left
                while cur.right is not None:
                    cur = cur.right
                node.left = self.delete_predecessor(node.left, cur.data)
                node.data = cur.data
        return node

                
def printTree90(node, level = 0):
    if node != None:
        printTree90(node.right, level + 1)
        print('     ' * level, node)
        printTree90(node.left, level + 1)


tree = BST()
data = input("Enter Input : ").split(",")
for i in range (len(data)):
    data[i] = data[i].split()
    if data[i][0] == 'd':
        print("delete " + (data[i][1]))
        tree.delete_predecessor(tree.root, int(data[i][1]))
        printTree90(tree.root)
    elif data[i][0] == 'i':
        print("insert " + (data[i][1]))
        tree.insert(int(data[i][1]))
        printTree90(tree.root)