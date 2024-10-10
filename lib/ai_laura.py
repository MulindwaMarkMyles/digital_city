import heapq

# Graph and heuristic data
graph = {
    'S': {'B': 1, 'A': 3},
    'A': {'C': 2, 'B': 2},
    'B': {'C': 3},
    'C': {'D': 4, 'G': 4},
    'D': {'G': 1},
    'G': {}
}

heuristic = {
    'A': 5,
    'B': 7,
    'C': 4,
    'D': 1,
    'G': 0,
    'S': 7
}


# Base class for Search Algorithms
class SearchAlgorithm:
    def __init__(self, graph, start, goal):
        self.graph = graph
        self.start = start
        self.goal = goal
        self.expanded = []
    
    def print_results(self, path):
        unexpanded = sorted(set(self.graph.keys()) - set(self.expanded))
        print(f"Order of Expanded Nodes: {self.expanded}")
        print(f"Unexpanded Nodes: {unexpanded}")
        print(f"Path Found: {path}")

    def search(self):
        raise NotImplementedError("Search method should be implemented in subclasses.")


# Depth First Search (DFS) Class
class DFS(SearchAlgorithm):
    def search(self):
        stack = [(self.start, [self.start])]
        while stack:
            node, path = stack.pop()
            self.expanded.append(node)
            if node == self.goal:
                self.print_results(path)
                return path
            for neighbor in sorted(self.graph[node], reverse=True):
                stack.append((neighbor, path + [neighbor]))
        self.print_results(None)
        return None


# Breadth First Search (BFS) Class
class BFS(SearchAlgorithm):
    def search(self):
        queue = [(self.start, [self.start])]
        while queue:
            node, path = queue.pop(0)
            self.expanded.append(node)
            if node == self.goal:
                self.print_results(path)
                return path
            for neighbor in sorted(self.graph[node]):
                queue.append((neighbor, path + [neighbor]))
        self.print_results(None)
        return None


# Uniform Cost Search (UCS) Class
class UCS(SearchAlgorithm):
    def search(self):
        priority_queue = [(0, self.start, [self.start])]
        while priority_queue:
            cost, node, path = heapq.heappop(priority_queue)
            self.expanded.append(node)
            if node == self.goal:
                self.print_results(path)
                return path
            for neighbor, edge_cost in self.graph[node].items():
                heapq.heappush(priority_queue, (cost + edge_cost, neighbor, path + [neighbor]))
        self.print_results(None)
        return None


# Greedy Search Class
class Greedy(SearchAlgorithm):
    def __init__(self, graph, heuristic, start, goal):
        super().__init__(graph, start, goal)
        self.heuristic = heuristic

    def search(self):
        priority_queue = [(self.heuristic[self.start], self.start, [self.start])]
        while priority_queue:
            h, node, path = heapq.heappop(priority_queue)
            self.expanded.append(node)
            if node == self.goal:
                self.print_results(path)
                return path
            for neighbor in sorted(self.graph[node]):
                heapq.heappush(priority_queue, (self.heuristic[neighbor], neighbor, path + [neighbor]))
        self.print_results(None)
        return None


# A* Search Class
class AStar(SearchAlgorithm):
    def __init__(self, graph, heuristic, start, goal):
        super().__init__(graph, start, goal)
        self.heuristic = heuristic

    def search(self):
        priority_queue = [(self.heuristic[self.start], 0, self.start, [self.start])]
        while priority_queue:
            f, g, node, path = heapq.heappop(priority_queue)
            self.expanded.append(node)
            if node == self.goal:
                self.print_results(path)
                return path
            for neighbor, edge_cost in self.graph[node].items():
                new_g = g + edge_cost
                new_f = new_g + self.heuristic[neighbor]
                heapq.heappush(priority_queue, (new_f, new_g, neighbor, path + [neighbor]))
        self.print_results(None)
        return None


# User Input and Main Logic
def main():
    start_node = 'S'
    goal_node = 'G'

    print("\n1. Tree Search")
    print("2. Graph Search\n")
    choice = input("What do you want to do: ")

    if choice == '1' or choice == '2':  # In this case, tree search and graph search will behave similarly
        search_type = input("\n1. DFS Search\n2. BFS Search\n3. UCS Search\n4. Greedy Search\n5. A* Search\nChoice: ")

        search_algo = None
        if search_type == '1':
            search_algo = DFS(graph, start_node, goal_node)
        elif search_type == '2':
            search_algo = BFS(graph, start_node, goal_node)
        elif search_type == '3':
            search_algo = UCS(graph, start_node, goal_node)
        elif search_type == '4':
            search_algo = Greedy(graph, heuristic, start_node, goal_node)
        elif search_type == '5':
            search_algo = AStar(graph, heuristic, start_node, goal_node)
        else:
            print("Invalid Search Choice")
            return

        if search_algo:
            search_algo.search()

    else:
        print("Invalid Choice")


if __name__ == "__main__":
    main()
