

def find(T, a):
    for b in T:
        if b == a:
            return True
    return False


T = [2, 3, 5, 8, -5, 9, 0, 4, 1, 12]
print(find(T,5))
print(find(T, 10))
