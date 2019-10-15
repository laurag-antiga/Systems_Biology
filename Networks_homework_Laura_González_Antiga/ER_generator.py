#!/usr/bin/env python3
from sys import argv
from random import random, choice


def ER(N, p):
    links = list()
    for node in range(1, N+1):
        for other_node in range(1, N+1):
            if node == other_node:
                break
            if random() <= p:
                links.append((node, other_node))
    return links

def print_pajek(links, file):
    with open(file+".net", "w") as outFH:
        outFH.write("*Vertices %s\n" %N)
        outFH.write("*Edges\n")
        for link in links:
            outFH.write("%s %s\n"%(link[0], link[1]))


if __name__ == '__main__':

    N = int(argv[1])
    p = float(argv[2])
    file = argv[3]
    print_pajek(ER(N,p), file)
    
