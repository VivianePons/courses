import os, sys

def puissance(a,n):
    d = n.bit_length()-1
    r = 1
    while d >= 0:
        r = r*r
        if 1 & (n >> d) == 1:
            r = r*a
        d -= 1
    return r

a = 1
n = 1

if len(sys.argv) > 1:
    a = float(sys.argv[1])

if len(sys.argv) > 2:
    n = int(sys.argv[2])

print(puissance(a,n))
