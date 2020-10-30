class Node:

    def __init__(self, data, freq, left = None, right = None):
        self.data = data 
        self.freq = freq
        self.left = left
        self.right = right

    def __str__(self):
        return str(self.data)

class Huffman:

    def __init__(self):
        self.root = None

    def insert(self, node, data, freq):
        if not node:
            return Node(data, freq)
        elif freq < node.freq:
            node.left = self.insert(node.left, data, freq)
        elif freq == node.freq:
            if data < node.data:
                node.left = self.insert(node.left, data, freq)
            else:
                node.right = self.insert(node.right, data, freq)
        else:
            node.right = self.insert(node.right, data, freq)
        return node

    def in_order(self, node):
        if not node:
            return []

        s = self.in_order(node.right)\
            + [Node(node.data, node.freq)]\
                + self.in_order(node.left)

        return s

def printTree(node, level = 0):
    if node != None:
        printTree(node.right, level + 1)
        print('     ' * level, node)
        printTree(node.left, level + 1)

def printCode(node, code):
    s = ''
    if node:
        s = printCode(node.right, code + '1')
        if node.data != '*':
            s += "'" + str(node.data) + "': '" + code + "'";
        a = printCode(node.left, code + '0')
        if a != '':
            s += ', ' + a
    return s

def search(node, data, code): 
    if not node:
        return None
        
    if data == node.data:
        return code
    if node:
        s = search(node.right, data, code + '1')
        if s != None:
            return s
        s = search(node.left, data, code + '0')
        return s
    
if __name__ == '__main__':

    inp = list(input('Enter Input : '))
    s = set(inp)

    huff = Huffman()

    for data in s:
        huff.root = huff.insert(huff.root, data, inp.count(data))
    
    data = huff.in_order(huff.root)
    temp = [data.pop()]

    while len(data) != 0 or len(temp) != 1:
        if len(temp) > 1:
            if data == [] or (data[-1].freq >= temp[0].freq + temp[1].freq):
                a, b =  temp.pop(0), temp.pop(0)
                temp.append(Node('*', a.freq + b.freq, a, b))
            else:
                temp.append(data.pop())
        else:
            temp.append(data.pop())

    print('{' + f'{printCode(temp[0], "")}' + '}')
    printTree(temp[0])
    print('Encoded! : ', end = '')
    for key in inp:
        print(search(temp[0], key, ''), end = '')

