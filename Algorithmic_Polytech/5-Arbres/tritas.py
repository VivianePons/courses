
def strid(v):
    if v < 10:
        return chr(97 + v)
    else:
        return strid(v//10) + strid(v%10)

def latex_node(idnode, value, red = False):
    idl = strid(idnode)
    s = "\\newcommand{\\node" + idl +"}{\\node[draw,circle] (node" + idl + ") {"
    if red:
        s+="\\red{" + str(value) + "}};}\n"
    else:
        s+= str(value) + "};}\n"
    return s

def latex_state_tree(t,n,redv = None, scale = 1):
    s = "{"
    for i in xrange(n):
        if i == redv:
            red = True
        else:
            red = False
        s+= latex_node(i,t[i],red)
    s+="\\scalebox{" +str(scale) + "}{"
    s+="\\begin{tikzpicture}[auto]\n"
    s+= "\\matrix[column sep=.3cm, row sep=.3cm,ampersand replacement=\\&]{\n"
    spaces = " "*8
    h = 0
    v = 0
    while v <= n:
        v=v*2 + 1
        h+=1
    L = 2**h-1
    matrix = [[spaces] * L for l in xrange(h)]
    def fill_matrix(matrix, t, i, l, j):
        if i >= L:
            return j
        elif i >= n:
            return j+1
        j = fill_matrix(matrix,t,2*i + 1,l+1,j)
        matrix[l][j] = " \\node" + strid(i) + " "
        j+=1
        j =fill_matrix(matrix, t, 2*i+2,l+1,j)
        return j
    fill_matrix(matrix, t, 0, 0, 0)
    s+= "\\\\\n".join("\\&".join(l) for l in matrix)
    s+="\\\\\n};\n"

    s+= "\\path[ultra thick, red]"
    for i in xrange(n):
        if 2*i+1 < n:
            s+= "\n(node" + strid(i) +") edge (node" + strid(2*i+1) + ")"
            if 2*i+2 < n:
                s+= " edge (node" + strid(2*i+2) + ")"
            else:
                break
        else:
            break
    s+=";\n\\end{tikzpicture}}}\n"
    return s

def latex_state_tab(t,n, redv = None):
    s = "\\begin{tabular}{"
    s+= "|c" * n
    s+="|"
    s+="|c"* (len(t)-n)
    s+="|}\n"
    s+="\\hline\n"
    def printi(t,i):
        v = ""
        e = ""
        if i == redv:
            v += " \\red{"
            e += "}"
        if i >= n:
            v+= "\\textit{"
            e+= "}"
        return v + str(t[i]) + e
    s+= " & ".join(printi(t,i) for i in xrange(len(t)))
    s+= "\\\\\n\\hline\n\\end{tabular}\n"
    return s


def insert(t,i, latex= True, scale = 0.5):
    tabstates = []
    treestates = []
    n = i+1
    if latex:
        tabstates.append(latex_state_tab(t,n, redv = i))
        treestates.append(latex_state_tree(t,n,redv=i, scale = scale))
    while i > 0:
        pere = (i-1)//2
        if t[i] > t[pere]:
            t[i],t[pere] = t[pere],t[i]
            i = pere
            if latex:
                tabstates.append(latex_state_tab(t,n, redv = i))
                treestates.append(latex_state_tree(t,n,redv=i, scale = scale))
        else:
            break

    if latex:
        return tabstates, treestates

def delete(t,i, latex = True, scale = 0.5):
    tabstates = []
    treestates = []
    n = i
    t[0],t[i] = t[i],t[0]
    pere = 0
    if latex:
        tabstates.append(latex_state_tab(t,n, redv = 0))
        treestates.append(latex_state_tree(t,n,redv=0, scale  = scale))
    while 2*pere+1 < i:
        imax = 2*pere+1
        if imax+1 < i and t[imax+1] > t[imax]:
            imax = imax+1
        if t[pere] < t[imax]:
            t[pere],t[imax] = t[imax],t[pere]
            pere = imax
            if latex:
                tabstates.append(latex_state_tab(t,n, redv = imax))
                treestates.append(latex_state_tree(t,n,redv=imax, scale = scale))
        else:
            break
    if latex:
        return tabstates, treestates

def tritas(t, latex = True, scale= 0.5):
    tabstates = []
    treestates = []
    for i in xrange(1,len(t)):
        if latex:
            ntab,ntree = insert(t,i, True, scale)
            tabstates.extend(ntab)
            treestates.extend(ntree)
        else:
            insert(t,i, False)

    for i in xrange(len(t)-1,0,-1):
        if latex:
            ntab,ntree = delete(t,i, True, scale)
            tabstates.extend(ntab)
            treestates.extend(ntree)
        else: delete(t,i, False)
    return tabstates, treestates

def printstates(tabstates, treestates):
    s = "\\begin{tabular}{cc}\n"
    if len(tabstates)%2 == 1:
        tabstates.append("")
        treestates.append("")
    for i in xrange(0,len(tabstates),2):
        s+= treestates[i]
        s+="&\n"
        s+= treestates[i+1]
        s+= "\\\\\n"
        s+= tabstates[i]
        s+="&\n"
        s+= tabstates[i+1]
        s+= "\\\\\n"
    s+="\\end{tabular}"
    return s

