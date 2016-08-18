︠24a96efa-f2de-407c-94aa-33b56a8a92a7i︠
%html
<h2>
    Génération récursive de chemins
</h2>

<p>
    Dans ce TP, nous allons étudier les méthodes récursives de générations d'objets combinatoires, et plus particulièrement, les chemins dans le plan.
</p>
︡4d8516de-0dce-4a22-a3b6-1c5aae73e500︡{"html":"<h2>\n    Génération récursive de chemins\n</h2>\n\n<p>\n    Dans ce TP, nous allons étudier les méthodes récursives de générations d'objets combinatoires, et plus particulièrement, les chemins dans le plan.\n</p>\n"}︡
︠c8619842-d8c6-450b-9127-817b29bccf1ai︠
︠fa236f1f-e943-46d5-848e-1e30ff728b5f︠
︠ea0feddd-d3f1-4c0f-83eb-c39aab141e34i︠
%html
<h3>
    Chemins dans le plan
</h3>
︡9b4246d4-e590-4660-96ad-5cdb3cde326e︡︡{"done":true,"html":"<h3>\n    Chemins dans le plan\n</h3>"}
︠3dc4f137-27c4-4032-ae1b-354cdf8159afi︠
%html
<p>
    On considère les deux vecteurs suivants qu'on appelle des "pas"
</p>
︡daff6609-e9c0-485f-8956-3f5614621d55︡{"html":"<p>\n    On considère les deux vecteurs suivants qu'on appelle des \"pas\"\n</p>\n"}︡
︠bfa93231-3373-4116-9bfe-f89524d56f30︠
step0 = (1,0)
step1 = (0,1)
︠82b47fdd-f1ba-47e0-a6a1-c5eb4b6ee3d1i︠
%html
<p>
    Un chemin est une liste de pas, par exemple :
</p>
︡0b572c12-cbe8-4a31-bd29-e33cf7e3a423︡{"html":"<p>\n    Un chemin est une liste de pas, par exemple :\n</p>\n"}︡
︠3f849f07-aab4-4ccb-9d25-e5ee1c9161c4︠
chemin = [step0,step0,step1,step0]
chemin
︠5225515b-6733-4250-b99e-c950824827f3i︠
%html
<p>
    Pour dessiner un chemin, on part de (0,0) et on se déplace selon les valeurs du vecteur. Par exemple, le chemin précédent se dessine par :
</p>

︡ec203c0b-8168-4ce8-9ded-b77e367a6a22︡{"html":"<p>\n    Pour dessiner un chemin, on part de (0,0) et on se déplace selon les valeurs du vecteur. Par exemple, le chemin précédent se dessine par :\n</p>\n\n"}︡
︠30aec6c6-6b28-423a-ad0d-29144cedbf92︠
line2d([(0,0),(1,0),(2,0),(2,1),(3,1)])
︠9609ac47-e8ce-4fc9-9977-6eba9303f28fi︠
%html
<p>
    <strong>Ecrivez une fonction qui prend en paramètre un chemin et retourne le plot du chemin. </strong> 
</p>
︡447595f9-bc31-4c52-be85-132657757824︡{"html":"<p>\n    <strong>Ecrivez une fonction qui prend en paramètre un chemin et retourne le plot du chemin. </strong> \n</p>\n"}︡
︠43a1a74f-4bf5-4e88-8478-d51e6d202be8︠

︠3d302c37-972e-4e83-81c0-283b9933745d︠

︠50e55a45-4498-44d6-af31-f8753a13d188i︠
%md
La taille d'un chemin est son nombre de pas. Le but de l'exercice est d'écrire une fonction <code>chemins(n)</code> qui retourne 
**la liste de tous les chemins de taille n**. 

Observez les fonctions suivantes :

︡d714a6f6-d0b6-4c82-b5b5-a980c01d29e2︡︡{"done":true,"md":"La taille d'un chemin est son nombre de pas. Le but de l'exercice est d'écrire une fonction <code>chemins(n)</code> qui retourne \n**la liste de tous les chemins de taille n**. \n\nObservez les fonctions suivantes :"}
︠a7bd48e4-4b2b-4584-8124-c5ac1ace2369︠
def chemins0():
    R = []
    R.append([]) # un chemin de taille 0 est une liste vide
    return R
    
def chemins1():
    R = []
    R.append([(1,0)]) # on ajoute les 2 chemins de taile 1 posible
    R.append([(0,1)])
    return R
    
def chemins2():
    R = []
    for chemin in chemins1():
        chemin_a = list(chemin)  # on copie le chemin
        chemin_a.append((1,0)) # on lui ajoute le pas (1,0)
        chemin_b = list(chemin) # on copie le chemin
        chemin_b.append((0,1)) # on lui ajoute le pas (0,1)
        R.append(chemin_a) # on ajoute les deux chemins  au résultat
        R.append(chemin_b)
    return R
︠435451a9-3a2a-4fff-9127-b791852908b2︠
chemins2()
︠82c07ad7-93da-4ef8-976f-051d0d3414ad︠

︠8202c00f-9014-4486-8a64-2dbe09017c52i︠
%md
**En vous inspirant de la fonction <code>chemins2</code>, écrivez une fonction <code>chemins3</code> qui retourne la liste des chemins de taille 3**.
︡5a9d209a-e155-42d7-9cda-23d289a65aad︡︡{"done":true,"md":"**En vous inspirant de la fonction <code>chemins2</code>, écrivez une fonction <code>chemins3</code> qui retourne la liste des chemins de taille 3**."}
︠804a4ccc-4df2-4a38-85ec-734c9ddedbd8︠
def chemins3():
    """
    Retourne la liste des chemins de taille 3
    """
    # écrire le code ici
︠04cad636-25a7-42f3-9f77-8c087ef864df︠
# quelques tests que doit valider votre fonction: si tout va bien, rien ne s'affiche !
R = chemins3()
assert(len(R) == 8)
assert([(1,0),(0,1),(0,1)] in R)
︠d7da5562-34ea-48b7-aca7-f73b785aef2c︠

︠82492354-4fb1-4caf-8924-7e5146abef16i︠
%md
** Sur la même idée, écrivez à présent une fonction <code>chemins</code> qui prend en paramètre une taille $n$ et retourne la liste des chemins de taille $n$ **

Indication : vous devez séparer le cas $n=0$ des autres cas.
︡030a58ec-8f51-4496-98db-59ea85a227cc︡︡{"done":true,"md":"** Sur la même idée, écrivez à présent une fonction <code>chemins</code> qui prend en paramètre une taille $n$ et retourne la liste des chemins de taille $n$ **\n\nIndication : vous devez séparer le cas $n=0$ des autres cas."}
︠b24d5f9d-0ea7-4e18-bf92-b5c1fb1d3ce5︠
def chemins(n):
    """
    Retourne la liste des chemins de taille n
    """
    # écrire le code ici
︠f2d53dd7-9212-4e79-9cc0-bbf12c907c66︠
# quelques tests que doit valider votre fonction: si tout va bien, rien ne s'affiche !
assert(chemins(0) == [[]])
assert(len(chemins(1)) == 2)
assert(len(chemins(2)) == 4)
C1 = chemins(3)
C2 = chemins3()
C1.sort()
C2.sort()
assert(C1 == C2)
assert(len(chemins(4)) == 16)
︠3b5a9900-79f4-4649-b820-a03cd7e18aaf︠
︠04c68735-b32f-4aa6-a0d3-50aaaa56685f︠
︠ee294448-972f-441f-964c-c5d9e0843d6e︠

︠deed9f19-910b-4946-8592-5824bc5fb1fci︠
%html
<p>
    A présent, on va chercher à engendrer tous les chemins qui terminent en un point $(a,b)$ donné. Répondez à la question suivante :
    <br />
    <strong>Si je construis le chemin $c$ qui termine en $(a,b)$ en rajoutant un pas $(1,0)$ au chemin $c'$, où terminait $c'$ ? Même question si le pas rajouté est $(0,1)$.</strong>
</p>
︡38a916ca-6789-4df8-9c1c-e6d5f3f2de34︡︡{"done":true,"html":"<p>\n    A présent, on va chercher à engendrer tous les chemins qui terminent en un point $(a,b)$ donné. Répondez à la question suivante :\n    <br />\n    <strong>Si je construis le chemin $c$ qui termine en $(a,b)$ en rajoutant un pas $(1,0)$ au chemin $c'$, où terminait $c'$ ? Même question si le pas rajouté est $(0,1)$.</strong>\n</p>"}
︠58afd505-58e2-472e-a8bd-c86db2569307i︠
%html
<p>
    <strong>Utilisez votre réponse pour construire une fonction récursive <code>chemin_end_point</code> prenant en paramètre une abscisse $a$ et une ordonnée $b$ et qui retourne un générateur sur les chemins partant de l'origine et terminant en $(a,b)$.</strong>
</p>

<p>
    Pour écrire votre fonction, réfléchissez aux questions suivantes : que doit retourner la fonction quand je lui demande la liste des chemins qui terminent en (0,0) ? Que doit retourner la fonction si un des points $a$ ou $b$ est négatif ? <strong>Faites bien attention à la différence entre une liste contenant le chemin vide et une liste vide de chemins !</strong>
</p>
︡98cee1d1-d825-4105-b1fe-2c90db115e7e︡︡{"done":true,"html":"<p>\n    <strong>Utilisez votre réponse pour construire une fonction récursive <code>chemin_end_point</code> prenant en paramètre une abscisse $a$ et une ordonnée $b$ et qui retourne un générateur sur les chemins partant de l'origine et terminant en $(a,b)$.</strong>\n</p>\n\n<p>\n    Pour écrire votre fonction, réfléchissez aux questions suivantes : que doit retourner la fonction quand je lui demande la liste des chemins qui terminent en (0,0) ? Que doit retourner la fonction si un des points $a$ ou $b$ est négatif ? <strong>Faites bien attention à la différence entre une liste contenant le chemin vide et une liste vide de chemins !</strong>\n</p>"}
︠0b067264-9057-41f9-8212-d8828a52d866︠
def chemins_end_point(a,b):
    """
    Retourne la liste des chemins terminant au point (a,b)
    """
    # écrire le code ici
︠32347ccf-c6ef-47aa-ac78-839b4c855a25s︠
# quelques tests que doit valider votre fonction: si tout va bien, rien ne s'affiche !
assert(chemins_end_point(0,0) == [[]])
assert(chemins_end_point(-1,0) == [])
assert(chemins_end_point(0,-2) == [])
assert(chemins_end_point(1,0) == [[(1,0)]])
assert(chemins_end_point(0,1) == [[(0,1)]])
assert(len(chemins_end_point(3,5)) == binomial(8,3))
︡9c89e6f2-5617-45da-9b17-f0135aed0b24︡︡{"done":true}
︠805cf833-1b64-4ad4-88c8-3927d4e5c9ee︠

︠391d5c8b-f706-40b2-ae2c-cc4d86d4e639i︠
%html
<p>
    <strong>Vérifiez sur plusieurs valeurs de $a$ et $b$ que le nombre de chemins que vous obtenez est égal à <code>binomial(a+b,a)</code>.</strong>
</p>
︡5e06bd65-1419-4c1f-867f-c3a592863b0b︡{"html":"<p>\n    <strong>Vérifiez sur plusieurs valeurs de $a$ et $b$ que le nombre de chemins que vous obtenez est égal à <code>binomial(a+b,a)</code>.</strong>\n</p>\n"}︡
︠6fcec962-d356-44ce-8cbb-35de93b62e63︠

︠ba06336a-e4e2-4f31-b902-55470a32bada︠

︠17c5f787-adf2-4190-8d0f-7cd0b52a590fi︠
%html 
<p>
    <strong>Ecrivez à présent une fonction <code>chemins_up_end_point</code> qui retourne un générateur sur les chemins terminant en $(a,b)$ et tel qu'en tout point le chemin soit au dessus de la diagonale, c'est à dire qu'on doit toujours avoir $b\geq a$.</strong>
</p>
︡cea32b6a-d92a-4417-8452-2d5e672ee7a8︡{"html":"<p>\n    <strong>Ecrivez à présent une fonction <code>chemins_up_end_point</code> qui retourne un générateur sur les chemins terminant en $(a,b)$ et tel qu'en tout point le chemin soit au dessus de la diagonale, c'est à dire qu'on doit toujours avoir $b\\geq a$.</strong>\n</p>\n"}︡
︠caf3c7b1-1180-4b63-85b0-faad4d2cc12c︠
def chemins_up_end_point(a,b):
    """
    Retourne la liste des chemins terminant au point (a,b)
    tels que le chemin reste au dessus de la dagonal (b >= a)
    """
    # écrire le code ici
︠59e16ad5-d476-46e3-8a2a-038c7e93962b︠
# quelques tests que doit valider votre fonction: si tout va bien, rien ne s'affiche !
assert(chemins_up_end_point(0,0) == [[]])
assert(chemins_up_end_point(-1,0) == [])
assert(chemins_up_end_point(0,-2) == [])
assert(chemins_up_end_point(1,0) == [])
assert(chemins_up_end_point(0,1) == [[(0,1)]])
assert(len(chemins_up_end_point(3,3)) == 5)
assert(len(chemins_up_end_point(4,4)) == 14)
︠aadbda09-8367-44f7-a6c3-6e162de964cf︠
︠7d991511-0399-4344-a520-f98de4f16c13︠

︠50f4ca45-08f1-4275-b3ad-c235fd6b693d︠

︠de2a4b5b-1f87-482c-96fc-98fa2fad3c98i︠
%html
<p>
    <strong>Selon cette contrainte, combien obtenez-vous de chemins qui terminent en $(5,5)$ ?</strong>
</p>
︡26285733-2467-40bf-8b4a-dfb80f07f329︡{"html":"<p>\n    <strong>Selon cette contrainte, combien obtenez-vous de chemins qui terminent en $(5,5)$ ?</strong>\n</p>\n"}︡
︠c12383da-d3a2-4f45-bf0a-464cea36fa3e︠
︠4f8e6fb1-dd55-437e-9354-7b2459bb26f4i︠
%html
<p>
    <strong>Comptez les chemins qui terminent en $(n,n)$ pour $1 \leq n \leq 6$, vous devez trouver 1, 2, 5, 14, 42, 132. Cherchez ces nombres sur Google.</strong>
</p>
︡c1a9634d-27f5-4453-9238-ca5959f12171︡{"html":"<p>\n    <strong>Comptez les chemins qui terminent en $(n,n)$ pour $1 \\leq n \\leq 6$, vous devez trouver 1, 2, 5, 14, 42, 132. Cherchez ces nombres sur Google.</strong>\n</p>\n"}︡
︠81f1db72-6568-4e91-b141-6d1c5be97ea9︠

︠4da4d8fa-a857-4565-88f4-28857b75e5cci︠
%html
<p>
    <strong>Les <em>Nombres de Catalans</em> sont des objets classiques de la combinatoires. Parcourez la page wikipedia et voyez si trouvez dans Sage certains des objets décrits.</strong> 
</p>
︡48e70ea9-f766-4a42-8d02-332cfe6bfb96︡{"html":"<p>\n    <strong>Les <em>Nombres de Catalans</em> sont des objets classiques de la combinatoires. Parcourez la page wikipedia et voyez si trouvez dans Sage certains des objets décrits.</strong> \n</p>\n"}︡
︠03752833-3c14-4104-8aed-3803080ad972︠

︠3e30ed9b-4d08-45af-80e4-2f919c1f2eddi︠
%html
<p>
    Aller plus loin : vous pouvez continuer les expériences sur les chemins en faisant varier les pas possibles et contraintes. Lorsque vous obtenez une suite de nombres, vous pouvez regarder sur <a href="http://oeis.org/" >http://oeis.org/</a> si elle correspond à des objets combinatoires connus. 
</p>
︡d1a5be32-41ee-408d-92a7-19e330a0e17e︡{"html":"<p>\n    Aller plus loin : vous pouvez continuer les expériences sur les chemins en faisant varier les pas possibles et contraintes. Lorsque vous obtenez une suite de nombres, vous pouvez regarder sur <a href=\"http://oeis.org/\" >http://oeis.org/</a> si elle correspond à des objets combinatoires connus. \n</p>\n"}︡
︠ec06469a-b636-4d52-8247-faf377f2abd3︠









