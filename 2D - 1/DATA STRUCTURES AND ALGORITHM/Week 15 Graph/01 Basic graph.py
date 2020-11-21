if __name__ == '__main__':

    inp = input("Enter : ").split(',')

    node, graph = [], {}
    for a in inp:
        a = a.split()

        for i in range(2):
            node += a[i] if a[i] not in node else []

        graph[a[0]] = graph.get(a[0], []) + [a[1]]
        
    node.sort()

    print('    ' + '  '.join(node))
    for now in node:
        s = []
        for edge in node:
            s.append('1' if edge in graph.get(now, []) else '0')
        print(f'{now} : ' + ', '.join(s))

