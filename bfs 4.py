from collections import deque

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

def bfs(start):
    visited = set()
    queue = deque([start])
    visited.add(start)

    while queue:
        node = queue.popleft()
        print(node, end=" ")

        for n in graph[node]:
            if n not in visited:
                visited.add(n)
                queue.append(n)

bfs(0)
