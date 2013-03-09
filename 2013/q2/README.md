# Bounding Boxes

You're working on a more advanced minecraft clone, with variable-sized boxes, and you need a program to compute the total volume of all of the bounding boxes in the world. Write a program that takes the coordinates of opposite corners of each bounding box, and computes the total volume. If multiple bounding boxes overlap, the volume of the overlap should only be counted once.

Input will consist of a line with the number of bounding boxes, N, followed by N lines, one for each bounding box. Each bounding box is designated by six integers, separated by spaces, in order: the X, Y and Z coordinates of the first corner, and the X, Y and Z coordinates of the second corner. All bounding boxes are axis-aligned.

The output will be the total volume of space enclosed, as an integer, on a single line.

## Sample Input

```
2
0 0 0 2 2 2
1 1 1 3 3 3
```

## Sample Output

`15`
