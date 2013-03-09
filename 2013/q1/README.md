# Centrally Located!

You're playing sim city, and crime is starting to break out all over your city because you haven't bothered to put in a police station. Since you don't have much tax revenue, you can only afford one police station, and you want to pick the best location for it. You decide to represent the intersections in your city as nodes in a graph, and write a program to pick the best intersection for your police station.

Write an algorithm that takes the topology of the graph, and finds the node with the shortest average distance to all other nodes. If multiple nodes are tied for shortest distance, choose the node with the lowest node ID.

Input will be the number of nodes, N, and the number of edges, E on the first line. The following E lines will be three space-separated integers describing the edges in the graph: the starting node ID, the ending node ID, and the length of the edge. The node ID for the first node will be 0, and the node ID for the last node will be N-1.

The output will be the node with the shortest average distance to every other node. If multiple nodes tie for shortest average distance, the output will be the node with the lowest ID.

## Sample Input

```
5 5
0 1 1
1 2 1
1 3 1
2 3 1
3 4 1
```

## Sample Output

```
1
```
