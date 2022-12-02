#!/usr/bin/env python3

from functools import reduce 

with open('input', 'r') as f:
    deers = [] # plural of deer blah blah blah
    deer  = 0
    for l in f:
        l = l.rstrip()
        if len(l):
            deer = deer + int(l);
        else:
            deers.append(deer)
            deer = 0
    deers.sort(reverse=True)
    print(reduce(lambda a,b: a+b, deers[:3])) 
    