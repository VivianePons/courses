
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
    return int(c/r)

def esperance(n,k):
    p = lambda i: factorial(i-1) * binomial(k,i-1)*(i-1)/k**i
    return float(sum([p(i)*i for i in xrange(1,n+1)]) + binomial(k,n)*factorial(n)*(n+1)/k**n)

def complexity(n,k):
    p = lambda i: float(factorial(i-1) * binomial(k,i-1)*(i-1))/float(k**i)
    return float(sum([p(i)*i**2/2 for i in xrange(1,n+1)]) + float(binomial(k,n)*factorial(n)*n**2/2)/float(k**n))
