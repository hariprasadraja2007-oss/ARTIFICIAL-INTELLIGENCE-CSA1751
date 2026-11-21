graph = {
    0: [1],
    1: [3],
    2: [1],
    3: [4, 2],
    4: [5],
    5: [7],
    6: [4],
    7: [6]
}

visited = set()

def dfs(node):
    visited.add(node)
    print(node, end=" ")

    for n in graph[node]:
        if n not in visited:
            dfs(n)

dfs(0)
