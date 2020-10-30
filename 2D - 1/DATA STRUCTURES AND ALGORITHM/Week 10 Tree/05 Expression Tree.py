class Node:
    def __init__(self, data, left = None, right = None):
        self.data = data
        self.left = left
        self.right = right

    def __str__(self):
        return str(self.data)


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

    def pre_order(self, node):
        if node == None:
            return ''
        s = str(node.data)\
            + self.pre_order(node.left)\
                + self.pre_order(node.right)
        return s

    def in_order(self, node):
        if node == None:
            return ''
        s = self.in_order(node.left)\
             + str(node.data)\
                 + self.in_order(node.right)
        if node.left is not None and node.right is not None:
            s = '(' + s + ')'
        return s

    def print_tree(self, node, level = 0):
        if node is not None:
            self.print_tree(node.right, level + 1)
            print('     ' * level, node)
            self.print_tree(node.left, level + 1)

if __name__ == '__main__':
    inp = list(input("Enter Postfix : "))
    exp = BST()
    s = Stack()
    for char in inp:
        if char in '+-*/':
            op1 = s.pop()
            op2 = s.pop()
            s.push(Node(char, op2, op1))
        else:
            s.push(Node(char))

    print("Tree :")
    exp_root = s.pop()
    exp.print_tree(exp_root)
    print("--------------------------------------------------")
    print("Infix :", exp.in_order(exp_root))
    print("Prefix :", exp.pre_order(exp_root))