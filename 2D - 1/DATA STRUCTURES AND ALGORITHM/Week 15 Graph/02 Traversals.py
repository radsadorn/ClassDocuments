def DFT(graph, node, edge):
    print(edge, end = ' ')
    node.remove(edge)
    for a in graph[edge]:
        if a in node:
            DFT(graph, node, a)

def BFT(graph, visited, edge):
    if edge == []:
        return ''

    print(edge[0], end = ' ')

    for a in graph[edge[0]]:
        if a not in visited:
            edge.append(a)
            visited.append(a)
    BFT(graph, visited, edge[1:])

if __name__ == '__main__':

    inp = input("Enter : ").split(',')

    node, graph = [], {}
    for a in inp:
        a = a.split()

        for i in range(2):
            node += a[i] if a[i] not in node else []
            
        graph[a[0]] = graph.get(a[0], []) + [a[1]]
        graph[a[1]] = graph.get(a[1], []) + [a[0]]
        
    node.sort()

    # Display
    tmp = node.copy()
    print('Depth First Traversals : ', end = '')
    for a in node:
        if a in tmp:
            DFT(graph, tmp, a)

    print('\nBredth First Traversals : ', end = '')
    for a in node:
        if a not in tmp:
            tmp.append(a)
            BFT(graph, tmp, [a])