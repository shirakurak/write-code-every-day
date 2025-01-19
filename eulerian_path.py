def is_eulerian_path(graph):
    odd_degree_vertices = 0
    for vertex in graph:
        if len(graph[vertex]) % 2 != 0:
            odd_degree_vertices += 1

    return odd_degree_vertices == 0 or odd_degree_vertices == 2

graph = {
    0: [1, 2],
    1: [0, 2],
    2: [0, 1, 3],
    3: [2]
}

print(is_eulerian_path(graph))  # True

graph = {
    0: [1, 2],
    1: [0, 2, 3],
    2: [0, 1, 3],
    3: [1, 2, 4],
    4: [3]
}

print(is_eulerian_path(graph))  # False