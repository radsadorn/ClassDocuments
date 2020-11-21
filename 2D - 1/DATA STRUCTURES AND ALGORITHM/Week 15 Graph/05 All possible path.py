def possible_path(graph, start, stop, path, all_path):
    if start == stop:
        for index, data in enumerate(all_path):
            if len(path) < len(data):
                all_path.insert(index, path)
                return
        all_path.append(path)
        return

    for a in graph.get(start, []):
        if a[0] not in path:
            possible_path(graph, a[0], stop, path + [a[0]], all_path)



if __name__ == '__main__':

    inp, path = input('Enter Input : ').split('/')

    graph = {}
    for a in inp.split(','):
        a = a.split()
        graph[a[0]] = graph.get(a[0], []) + [a[1]]
        graph[a[1]] = graph.get(a[1], []) + [a[0]]

    src, des = path.split()
    all_path = []
    possible_path(graph, src, des, [src], all_path)
    
    if all_path == []:
        print(f"{src} can't go to {des}")
    else:
        print(f"All possible path from {src} to {des} :")
        for path in all_path:
            print(' -> '.join(path))