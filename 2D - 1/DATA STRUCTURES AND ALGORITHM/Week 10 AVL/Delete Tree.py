class Node:
    def __init__(self, data): 
        self.data = data  
        self.left = None  
        self.right = None 
        self.level = None 

    def __str__(self):
        return str(self.data) 
treedata = []
class BinarySearchTree:
    global treedata

    def __init__(self): 
        self.root = None

    def insert(self, val):  
        if self.root == None:
            self.root = Node(val)
        else:
            current = self.root
         
            while True:
                if val < current.data:
                    # print('less than', val, '<', current.data)
                    if current.left:
                        current = current.left
                    else:
                        current.left = Node(val)
                        break
                elif val > current.data:
                    # print('greater than', val, '>', current.data)
                    if current.right:
                        current = current.right
                    else:
                        current.right = Node(val)
                        break
                else:
                    break
   
# function to delete element in binary tree  
    def deletion(self, root, key): 
        if root == None : 
            return print('Error! Not Found DATA')
        if root.left == None and root.right == None: 
            if root.data == key :  
                self.root = None
                return
            else : 
                return root 

        if self.root.data == key and self.root.right == None: 
            self.root = self.root.left
            return

        key_node = None
        q = [] 
        q.append(root) 
        while(len(q)): 
            temp = q.pop(0) 
            if temp.data == key: 
                key_node = temp 
                break
            if temp.left: 
                q.append(temp.left) 
            if temp.right: 
                q.append(temp.right) 

        if key_node == None:
            return print('Error! Not Found DATA')
        elif key_node.data == key and key_node.right == None: 
            q = [] 
            q.append(root) 
            while(len(q)): 
                temp = q.pop(0) 
                if temp.left: 
                    if temp.left.data == key_node.data:
                        temp.left = None 
                        break
                if temp.right: 
                    if temp.right.data == key_node.data:
                        temp.right = None 
                        break
        else:
            temp = self.in_order(key_node.right)
            if temp == None:
                key_node = None
                return 
            if key_node.right == temp:
                key_node.right = None
            key_node.data = temp.data

        return root 

    def in_order(self, node):
        if node == None:
            return
        temp = self.in_order(node.left)
        if temp == None:
            return node
        if node.left is temp and temp.left == None:
            node.left = temp.right
        return temp

                
def printTree90(node, level = 0):
    if node != None:
        printTree90(node.right, level + 1)
        print('     ' * level, node)
        printTree90(node.left, level + 1)


tree = BinarySearchTree()
data = input("Enter Input : ").split(",")
for i in range (len(data)):
    data[i] = data[i].split()
    if data[i][0] == 'd':
        print("delete " + (data[i][1]))
        tree.deletion(tree.root, int(data[i][1]))
        printTree90(tree.root)
    elif data[i][0] == 'i':
        print("insert " + (data[i][1]))
        tree.insert(int(data[i][1]))
        printTree90(tree.root)