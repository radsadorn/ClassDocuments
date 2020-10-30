class Node:
    def __init__(self, data):
        self.data = data
        self.left = None
        self.right = None
        self.height = 1
    
    def __str__(self):
        return str(self.data)

class AVL(object): 

    def __init__(self):
        self.root = None

    def insert(self, node, data): 
      
        if not node:
            node = Node(data)
            return node
        elif data < node.data: 
            node.left = self.insert(node.left, data) 
        else: 
            node.right = self.insert(node.right, data) 
  
        node.height = 1 + max(self.getHeight(node.left), 
                           self.getHeight(node.right)) 
  
        balance = self.getBalance(node) 
  
        # Case 1 - Left Left 
        if balance > 1 and data < node.left.data: 
            return self.right_rotate(node) 
  
        # Case 2 - Right Right 
        if balance < -1 and data >= node.right.data: 
            return self.left_rotate(node) 
  
        # Case 3 - Left Right 
        if balance > 1 and data >= node.left.data: 
            node.left = self.left_rotate(node.left) 
            return self.right_rotate(node) 
  
        # Case 4 - Right Left 
        if balance < -1 and data < node.right.data:  
            node.right = self.right_rotate(node.right) 
            return self.left_rotate(node) 
  
        return node 
  
    def left_rotate(self, z): 
  
        y = z.right 
        T2 = y.left 
  
        y.left = z 
        z.right = T2 
  
        z.height = 1 + max(self.getHeight(z.left), 
                         self.getHeight(z.right)) 
        y.height = 1 + max(self.getHeight(y.left), 
                         self.getHeight(y.right)) 

        return y 
  
    def right_rotate(self, z): 
  
        y = z.left 
        T3 = y.right 

        y.right = z 
        z.left = T3 
  
        z.height = 1 + max(self.getHeight(z.left), 
                        self.getHeight(z.right)) 
        y.height = 1 + max(self.getHeight(y.left), 
                        self.getHeight(y.right)) 

        return y 
  
    def getHeight(self, root): 
        if not root: 
            return 0
  
        return root.height 
  
    def getBalance(self, root): 
        if not root: 
            return 0
  
        return self.getHeight(root.left) - self.getHeight(root.right) 

    def pre_order(self, node):
        if node == None:
            return ''

        s = str(node.data) + ' '\
            + self.pre_order(node.left)\
                + self.pre_order(node.right)
        return s

    def in_order(self, node):
        if node == None:
            return ''

        s = self.in_order(node.left)\
             + str(node.data) + ' '\
                 + self.in_order(node.right)
        return s

    def post_order(self, node):
        if node == None:
            return ''
        
        s = self.post_order(node.left)\
            + self.post_order(node.right)\
                + str(node.data) + ' '
        return s
  
    def printTree(self, node, level = 0):
        if node != None:
            self.printTree(node.right, level + 1)
            print('     ' * level, node)
            self.printTree(node.left, level + 1)

if __name__ == '__main__':
    inp = input('Enter Input : ').split()

    myTree = AVL() 

    for data in inp:
        myTree.root = myTree.insert(myTree.root, int(data))

    print('--------------------------------------------')
    print('Preorder  :', myTree.pre_order(myTree.root))
    print('In_order  :', myTree.in_order(myTree.root))
    print('Postorder :', myTree.post_order(myTree.root))
    
    