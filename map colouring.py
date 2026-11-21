
graph = {
    'A': ['B', 'C'],
    'B': ['A', 'C'],
    'C': ['A', 'B', 'D'],
    'D': ['C']
}

colors = ['Red', 'Green', 'Blue']
result = {}

def is_safe(region, color):
    for neighbour in graph[region]:
        if result.get(neighbour) == color:
            return False
    return True

def color_map(regions):
    if not regions:
        return True

    region = regions[0]

    for color in colors:
        if is_safe(region, color):
            result[region] = color

            if color_map(regions[1:]):
                return True

            del result[region]

    return False

regions = list(graph.keys())

if color_map(regions):
    print("Map Colouring:")
    for region, color in result.items():
        print(region, "->", color)
else:
    print("No solution")
