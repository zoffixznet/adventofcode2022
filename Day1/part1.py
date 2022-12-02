#!/usr/bin/env python3

with open('input', 'r') as f:
    max  = 0
    deer = 0
    for l in f:
        l = l.rstrip()
        if len(l):
            deer = deer + int(l);
        else:
            if max < deer:
                max = deer
            deer = 0
    print(max)
    