
def double(T):
    c = 0
    for i in xrange(1,len(T)):
        for j in xrange(i):
            c+=1
            if T[i] == T[j]:
                return c
    return c

def worst_case(n):
    L = range(n)
    return double(L)

def average(n,k,r):
    c = 0
    for i in xrange(r):
        L = [randint(1,k) for j in xrange(n)]
        c+= double(L)
    return float(c/r)

def complexity(n,k):
    p = lambda i: float(i*factorial(i-1) * binomial(k-1,i-1))/float(k**i)
    return float(sum([p(i)*(i*(i-1)/2+i/2) for i in xrange(1,n+1)]) + float(binomial(k,n)*factorial(n)*n**2/2)/float(k**n))
