︠92cc5ab2-a152-4059-b89b-009c88a4cc1ei︠
%html
<h2>
    Projet pluridisciplinaire TP2 : python
</h2>
<p>
    Le logiciel Sage est basé sur le langage de programmation <strong>python</strong>.
    Dans ce TP, nous allons apprendre les bases de la syntaxe python et des structures de données tels qu'ils sont utilisés dans Sage.
</p>
︡44dd7c46-3b41-4886-a29c-c7ee812dcd62︡{"html":"<h2>\n    Projet pluridisciplinaire TP2 : python\n</h2>\n<p>\n    Le logiciel Sage est basé sur le langage de programmation <strong>python</strong>.\n    Dans ce TP, nous allons apprendre les bases de la syntaxe python et des structures de données tels qu'ils sont utilisés dans Sage.\n</p>\n"}︡
︠2ef5cc96-a32b-443d-85e5-1f7781a00765i︠
%html
<h3>
    Les Listes
</h3>
<p>
    Les listes sont une des structures fondamentales du python. Elles sont l'équivalent des tableaux du C++. 
</p>
︡38cefcbd-60ae-4289-aa1d-c86dd732da02︡{"html":"<h3>\n    Les Listes\n</h3>\n<p>\n    Les listes sont une des structures fondamentales du python. Elles sont l'équivalent des tableaux du C++. \n</p>\n"}︡
︠b30e2d23-3bee-4e61-b622-9c8f0be30a77i︠
%html
La cellule suivante définit et affiche une liste. Pour cela on utilise les crochets <strong>[</strong> <strong>]</strong>.
︡71c51f26-625b-491c-a45a-d6a764a5910e︡{"html":"La cellule suivante définit et affiche une liste. Pour cela on utilise les crochets <strong>[</strong> <strong>]</strong>.\n"}︡
︠c8cf8a5f-2a47-43f0-afaf-c57cc7f2c3fe︠
l = [2, 1, 3]
l
︠add5ab8d-a848-4fe7-b723-32b70264b722i︠
%html
<p>
    Le python est un langage dynamique, la <em>déclaration</em>, <em>allocation</em> et <em>initialisation</em> se font en une seule commande.
</p>
<p>
    On accède aux éléments de la liste de la même façon qu'en C++. On peut aussi les modifier.
</p>
︡573e19c4-37de-4b7a-b948-2a9dfc55d17c︡{"html":"<p>\n    Le python est un langage dynamique, la <em>déclaration</em>, <em>allocation</em> et <em>initialisation</em> se font en une seule commande.\n</p>\n<p>\n    On accède aux éléments de la liste de la même façon qu'en C++. On peut aussi les modifier.\n</p>\n"}︡
︠7d9cfe56-e918-4475-b85b-7e43717cec21︠
l[0]
︠715109b0-322b-4d60-8ae7-ede2e436a1c3︠
l[0] = 4
l
︠b6ffc59a-df63-4aa4-b117-63e6138af2fdi︠
%html
<p>
    <strong>Affichez les 2eme et 3eme élements de la liste.</strong>
</p>
︡248d193d-f44e-4c0e-bb41-0a8c3f014fce︡{"html":"<p>\n    <strong>Affichez les 2eme et 3eme élements de la liste.</strong>\n</p>\n"}︡
︠359f11fd-639e-4cba-a899-abcc10f87be3︠

︠545b6ecb-58d2-42d2-a914-a2585522a0bf︠

︠5943dac4-92ec-49bd-a83c-d032196cf306i︠
%html
Contrairement au C++, une liste peut contenir des éléments de type différents.
︡04f7948c-d12b-439e-883d-94d33392a2aa︡{"html":"Contrairement au C++, une liste peut contenir des éléments de type différents.\n"}︡
︠7cec4d19-eafb-467b-850f-62f2e947c3c9︠
liste_mixte = [5,"bla","bli",3.2]
liste_mixte
︠d7dcb8e9-be4f-4842-a853-60488c062b09i︠
%html
Pour connaître la taille d'une liste, on utilise la fonction <code>len</code>.
︡b249a4a4-6de0-4b25-bfb6-4269ff678111︡{"html":"Pour connaître la taille d'une liste, on utilise la fonction <code>len</code>.\n"}︡
︠4366a3ca-fa29-4fba-87d9-6f7f6480e8bb︠
len(l)
len(liste_mixte)
︠22d00844-ac02-4b95-9ff4-39be5295f91fi︠
%html
<p>
    Pour ajouter un élément à la fin de la liste, on utilise la méthode <code>append</code> (équivalent du <code>push_back</code> du C++)
</p>
︡e4589e4b-f1c7-4837-b2c6-1104163c5a69︡{"html":"<p>\n    Pour ajouter un élément à la fin de la liste, on utilise la méthode <code>append</code> (équivalent du <code>push_back</code> du C++)\n</p>\n"}︡
︠6fe5a0aa-1e79-4db3-a709-a0e913362c4a︠
l.append(5)
l
︠fcd9f228-5c0f-414a-91e7-5bd0be34d0d2i︠
%html 
<p>
    Par ailleurs, la méthode <code>pop</code> permet de supprimer le dernier élément.
</p>
︡080ab68f-8e44-49ca-ab4f-672338d40319︡{"html":"<p>\n    Par ailleurs, la méthode <code>pop</code> permet de supprimer le dernier élément.\n</p>\n"}︡
︠ca9d0f5e-7aba-4bd7-8040-6fda6761e663︠
v = l.pop()
v
l
︠bb3a112a-af4e-49f8-8146-d82dee17b965︠

︠fe92af0e-39a5-4759-bfaa-e0a14c6fd1ebi︠
%html
<p>
    <strong>Créez une liste contenant 2, 4 et 6. Puis ajoutez 8 à la fin de la liste en utilisant <code>append</code>.</strong>
</p>
︡f68a8bfc-a1db-4c0d-a3be-620bd804ba45︡{"html":"<p>\n    <strong>Créez une liste contenant 2, 4 et 6. Puis ajoutez 8 à la fin de la liste en utilisant <code>append</code>.</strong>\n</p>\n"}︡
︠a76d9444-f6a9-4e36-b02e-fb5324907110︠

︠3a780f19-0aa4-4e21-ba07-18ae8ff4599ei︠
%html
Pour parcourir les éléments d'une liste, on utilise une boucle <code>for</code> de la façon suivante :
︡4c59e0cf-a4aa-4bde-9aa0-6f4152468db6︡{"html":"Pour parcourir les éléments d'une liste, on utilise une boucle <code>for</code> de la façon suivante :\n"}︡
︠2c535364-ad18-4343-8f67-88976a32fd13︠
l = [2,2,4,3,5]
for v in l:
    print v
︠aed49c3c-4196-4d3b-a3b5-f78d530ebd69i︠
%html
<p>
    <strong>Attention !</strong> La syntaxe et la sémantique de la boucle for sont très différentes en python et en C++. En python, on parcourt directement les éléments de la liste sans passer par un indice. Pour énumérer les éléments de la liste et leurs indices, on utilise la syntaxe suivante :
</p>

︡2b750ac7-c677-4fd9-ac85-7e4fcfdcb9d9︡{"html":"<p>\n    <strong>Attention !</strong> La syntaxe et la sémantique de la boucle for sont très différentes en python et en C++. En python, on parcourt directement les éléments de la liste sans passer par un indice. Pour énumérer les éléments de la liste et leurs indices, on utilise la syntaxe suivante :\n</p>\n\n"}︡
︠1318bbe0-376e-4396-873e-9b2179b35ed5︠
l = [2,2,4,3,5]
for i,v in enumerate(l):
    print i, v
︠28369ac5-6e07-47e5-806e-b622a1396237︠
l = [2,2,4,3,5]
for i,v in enumerate(l):
    l[i] = v+1
l
︠ba7ede22-5224-4185-ad71-9b30888729fai︠
%html
<p>
    <strong>Exécutez la cellule suivante, puis écrivez une boucle for pour afficher le carré des éléments de la liste. Puis écrivez une seconde boucle qui remplace chaque élément par son carré.</strong>
</p>
︡12ef64a1-c9bc-41f4-930e-4bfbcfd72a79︡{"html":"<p>\n    <strong>Exécutez la cellule suivante, puis écrivez une boucle for pour afficher le carré des éléments de la liste. Puis écrivez une seconde boucle qui remplace chaque élément par son carré.</strong>\n</p>\n"}︡
︠e821acf1-703b-4d32-81fa-3521ab35bc49︠
ma_liste = [2,3,4,5,6]
︠5320f626-a694-4cc3-b84c-b080b397da71︠

︠9b6bf7f1-f390-4e33-9b04-52ff95e6716ci︠
%html
<h3>
    Structure de boucles et de contrôle en python
</h3>
︡7f191ee9-b958-4a24-ab09-0f5b1e795714︡{"html":"<h3>\n    Structure de boucles et de contrôle en python\n</h3>\n"}︡
︠f4a97dd5-ff8e-4e48-81dd-5dd8c255d0b7i︠
%html 
<p>
    Vous avez peut-être remarquer que l'on n'utilise pas d'accolades en python. En effet, pour commencer un bloc de type <code>if</code>, <code>for</code> ou <code>while</code>, on utilise les deux points <strong>:</strong> suivi d'un <strong>changement d'indentation</strong>. C'est <strong>l'indentation</strong> qui marque la fin des blocs.
</p>

<p>
    <strong>Exécutez les exemples suivant</strong>
</p>
︡ef18a544-f55b-428e-9e9f-704da12a9116︡{"html":"<p>\n    Vous avez peut-être remarquer que l'on n'utilise pas d'accolades en python. En effet, pour commencer un bloc de type <code>if</code>, <code>for</code> ou <code>while</code>, on utilise les deux points <strong>:</strong> suivi d'un <strong>changement d'indentation</strong>. C'est <strong>l'indentation</strong> qui marque la fin des blocs.\n</p>\n\n<p>\n    <strong>Exécutez les exemples suivant</strong>\n</p>\n"}︡
︠2103f207-d7ec-4231-84d3-bcefb7b6b8f8︠
i = 2
while i<=10:
    i = i+1
    print i
︠ab9a80b7-56df-4e53-8f22-7c023672cc45︠

︠cd1bf6be-26a9-4232-a05a-24afeaed7839︠
i = 5
while i!=1:
    print i
    if i%2 == 0:
        i = i/2
    else:
        i = i*3 +1
︠161ce867-8622-4191-9691-8aab783b9bb2︠
ma_liste = [2,3,3,4,5,6,8,9]
for v in ma_liste:
    if v%2 == 1:
        print v
︠73764f53-9f19-469c-a06c-3eb21975f4b5i︠
%html
<p>
    <strong>La cellule suivante contient une erreur d'indentation. Exécutez-la pour afficher l'erreur puis corrigez et exécutez à nouveau.</strong>
</p>
︡da47ef6b-e1f8-4582-b8cf-44b8a5f56038︡{"html":"<p>\n    <strong>La cellule suivante contient une erreur d'indentation. Exécutez-la pour afficher l'erreur puis corrigez et exécutez à nouveau.</strong>\n</p>\n"}︡
︠b17683e4-455d-46c3-9f9f-25d9e47b5ad9︠
a = 2
while a<=100:
    print a
  a = 2*a
︠b95476ee-7665-4aad-99e3-b0e41bc99abb︠

︠05810c4d-37e7-497b-a17c-7823b1dd6b10i︠
%html
<p>
    <strong>Ecrire une boucle <code>for</code> qui n'affiche que les valeurs de la liste inférieures à 10.</strong>
</p>
︡92242089-05a1-4d09-903e-5e7debba9dc9︡︡{"done":true,"html":"<p>\n    <strong>Ecrire une boucle <code>for</code> qui n'affiche que les valeurs de la liste inférieures à 10.</strong>\n</p>"}
︠607bdbc6-bc5a-4b4a-976e-c2cd9c0c7d40︠
ma_liste = [4,12,13,8,6,11,9]
︠1f90267a-6329-4762-a07b-ce27edb081ba︠

︠db8b735a-cd0b-4cfa-958e-287caf56adfai︠
%md
**Ecrire une boucle qui compte le nombre de valeurs inférieures à 10.**
︡ec83cdd8-9573-4060-867e-dc6c0ceac07b︡︡{"done":true,"md":"**Ecrire une boucle qui compte le nombre de valeurs inférieures à 10.**"}
︠e4ac7674-fd41-4f24-85af-1994b09b1a55i︠

︠669faa2f-d039-4464-8fe5-e9352af70934︠

︠1ed8b2da-f8da-42cb-83a1-3c37adf46897i︠
%html
<p>
    La fonction suivante est très pratique : elle permet de créer une liste d'entiers entre deux valeurs données.
    <strong>Exécutez les exemples pour comprendre son fonctionnement</strong>
</p>
︡f4b5e0a8-b8cc-49d1-864f-eeab88aac784︡{"html":"<p>\n    La fonction suivante est très pratique : elle permet de créer une liste d'entiers entre deux valeurs données.\n    <strong>Exécutez les exemples pour comprendre son fonctionnement</strong>\n</p>\n"}︡
︠2e7f6ba1-bfb7-4d5f-ab8f-41b8f091d4f1︠
range(10)
︠13d5e413-805a-4b5c-8235-318155b473b9︠
range(1,23)
︠dff2043c-a3f6-47f6-929c-fdfa98ee8558︠
range(2,13,2)
︠d360307d-a29f-44b7-8fe2-1bdd168d2225︠
range(10,0,-1)
︠95e81ef8-0b6c-4a28-81aa-67596caaf389i︠
%md
**Utilisez `range` pour afficher les nombres pairs inférieurs à 30**
︡5fc17e65-862d-4f4a-ae9e-ae6c3706e1e5︡︡{"done":true,"md":"**Utilisez `range` pour afficher les nombres pairs inférieurs à 30**"}
︠890e7f15-9882-489f-a29a-fa8d009496d8︠

︠8a617476-bca5-4714-b282-f15c74d2b5f5i︠
%html
<p>
    On peut utiliser <code>range</code> avec une boucle <code>for</code>.
</p>
︡eff80e84-7e86-46fb-a47c-9bb9f2cbb8c5︡{"html":"<p>\n    On peut utiliser <code>range</code> avec une boucle <code>for</code>.\n</p>\n"}︡
︠23f1dc06-bd6c-4130-ac36-2a079614928a︠
for i in range(10):
    print i
︠fc8a642d-4df9-40de-af94-808074974247i︠
%html
<p>
     <strong>Utilisez une boucle <code>for</code> avec <code>range</code> pour afficher les valeurs $i^2$ pour $1\leq i \leq 10$.</strong>
</p>
︡42023bb1-9596-4d20-b430-f3fdb5b1721b︡︡{"done":true,"html":"<p>\n     <strong>Utilisez une boucle <code>for</code> avec <code>range</code> pour afficher les valeurs $i^2$ pour $1\\leq i \\leq 10$.</strong>\n</p>"}
︠a8766af6-e2f9-4207-861b-7ae4cd3c4b90︠

︠86de0799-907c-485c-8675-04a31490921f︠

︠b3ac362b-75fb-47ea-8560-adb9b5ebe519i︠
%html
<p>
    <strong>Remarque :</strong> Il est très facile de tester si un élément appartient à une liste.
    
</p>
︡6831fc16-6506-48b7-81bd-6593e9656bfe︡{"html":"<p>\n    <strong>Remarque :</strong> Il est très facile de tester si un élément appartient à une liste.\n    \n</p>\n"}︡
︠220b9b2a-ac7a-4a3c-89c2-92ec1ba3b914︠
l = [1,2,3]
3 in l
︠ecc6c380-890b-41de-b280-bd341d4ef7c5︠
if 4 in l:
    print "l contient 4"
else:
    print "l ne contient pas 4"
︠280a4aff-768d-498c-b58d-03d3c34d26f2i︠
%html
<p>
    <strong>Exercice : </strong> dans la cellule suivante, on définit 3 listes <code>l1,l2,l_resultat</code>. Ecrivez une boucle <code>for</code> pour que <code>l_resultat</code> contienne les valeurs qui sont à la fois dans <code>l1</code> et <code>l2</code>.
</p>
︡ec694f07-ff24-49e1-ad1b-3c2979665349︡{"html":"<p>\n    <strong>Exercice : </strong> dans la cellule suivante, on définit 3 listes <code>l1,l2,l_resultat</code>. Ecrivez une boucle <code>for</code> pour que <code>l_resultat</code> contienne les valeurs qui sont à la fois dans <code>l1</code> et <code>l2</code>.\n</p>\n"}︡
︠4b258dd6-15e7-4270-89fa-3721d3dec6cf︠
l1 = [2,3,5,6,9,10]
l2 = [1,2,3,4,5]
l_resultat = []
︡b0950459-5aaf-4777-8c07-3af0df144cbb︡
︠4ea51e43-7b0b-41d4-8218-7506857dad0d︠

︠ec8fb255-1e91-4e75-b30b-64ef43f9645fi︠
%html
<h3>
    Autres structures
</h3>
︡dab6ddbf-7177-4749-9214-efc02f75901b︡{"html":"<h3>\n    Autres structures\n</h3>\n"}︡
︠c236c9c8-2aa8-4e3f-b5d6-cb85bdcb862fi︠
%html
<p>
    Un <strong>dictionnaire</strong> est un tableau dont les indices peuvent être eux mêmes des objets (par exemple, des chaines de caractères). Par exemple, le dictionnaie suivant associe des notes et des élèves.
</p>
︡a08660a1-7a8c-468d-94ce-e50ff9aae4d7︡{"html":"<p>\n    Un <strong>dictionnaire</strong> est un tableau dont les indices peuvent être eux mêmes des objets (par exemple, des chaines de caractères). Par exemple, le dictionnaie suivant associe des notes et des élèves.\n</p>\n"}︡
︠ff53557c-a563-4f90-b435-e34093f34f1d︠
d = dict()
d["Anna"] = 4.5
d["Boris"] = 18.
d["Lisa"] = 18.5
d["Ahmed"] = 15.
d["Lou"] = 10.
d["Martin"] =5.5
d
︠a19f925f-a317-485d-9028-af26b877a2cc︠
for nom in d.keys():
    print nom
︠8cbd113b-cbc3-4d57-878c-1cc92fbd6348︠
for nom in d.keys():
    print "L'étudiant(e) " + nom + " a obtenu " + str(d[nom])
︠9c7735d2-f0bb-468f-9321-e686bd4fbd15︠
d.values()
︠4c427638-2bce-46dc-9213-1e3d580d2072i︠
%html 
<p>
    <strong>Exercice : </strong>après avoir observer les exemples précédents. Calculez la moyenne des notes et affichez le nom de l'étudiant ayant eu la meilleure note.
</p>
︡9d297ca8-2431-4e34-ad71-69f78af1263a︡{"html":"<p>\n    <strong>Exercice : </strong>après avoir observer les exemples précédents. Calculez la moyenne des notes et affichez le nom de l'étudiant ayant eu la meilleure note.\n</p>\n"}︡
︠ef2c6422-a5d3-4b51-a47d-fef20b38ca1e︠

︠18a85b17-0c49-4eeb-9bbc-28cf623e7c61i︠
%html
<h3>
    Listes doubles
</h3>
<p>
    Tout comme en C++, il est possible de faire des listes de listes. 
</p>
︡d99543a6-afd9-49bb-a9e1-74ce955c6697︡{"html":"<h3>\n    Listes doubles\n</h3>\n<p>\n    Tout comme en C++, il est possible de faire des listes de listes. \n</p>\n"}︡
︠affa1d84-57d9-4a23-8dc0-ddf899d3c247︠
l_double = [[1,2,3],[4,5,6]]
l_double
︠d3f1304a-966a-415f-933c-99059a0ba87c︠
l_double[0][1]
︠33e289dc-29ff-4256-a6fa-95100d30c927i︠
%html 
<p>
    <strong>Affichez la valeur 4 en utilisant <code>l_double</code>.</strong>
</p>

︡0ad17418-8547-4d1d-8d28-8d7803ba34d6︡︡{"done":true,"html":"<p>\n    <strong>Affichez la valeur 4 en utilisant <code>l_double</code>.</strong>\n</p>"}
︠10b8f1c8-d59e-43f3-b6f8-020d021886b5︠

︠8e171201-97f7-4257-8fb0-59296f46efadi︠
%html
<p>
    Voici un exemple de double boucle <code>for</code> qui affiche les valeurs de <code>l_double</code>.
</p>
︡4660f405-1764-49e5-9bf2-7996cde823c9︡{"html":"<p>\n    Voici un exemple de double boucle <code>for</code> qui affiche les valeurs de <code>l_double</code>.\n</p>\n"}︡
︠376caed0-fcc8-48b2-bf34-a531a7f3bb5e︠
for ligne in l_double:
    for v in ligne:
        print v
︠fa54a2b7-838b-43a3-b714-725e0988c0bai︠
%html
<p>
    Voici un exemple qui affiche les lignes de <code>l_double</code>
</p>
︡288c71a5-6123-4f05-9d77-036098ed7a1d︡{"html":"<p>\n    Voici un exemple qui affiche les lignes de <code>l_double</code>\n</p>\n"}︡
︠470134e1-70e7-4b90-a457-a81aef23ad10︠
for ligne in l_double:
    print ligne
︠f6fd9fd0-6898-419f-8155-1abd2e8bee0ci︠
%html
Les matrices sont une application mathématique des listes doubles. Observez les exemples suivants.
︡3a1d0996-c539-4c68-a882-7fd3546f985a︡{"html":"Les matrices sont une application mathématique des listes doubles. Observez les exemples suivants.\n"}︡
︠07cdb188-7f3e-49b6-a452-ce506966deeb︠
m1 = Matrix([[1,1,3],[4,5,5],[6,7,9]])
m1
︡b0044e77-f705-42a6-a517-7d91bc402538︡
︠49f45656-9412-4dab-b9ff-4b0612b2e0aa︠
m1.determinant()
︠f1501b0d-f032-4a37-9f13-50f8d6c3bc39︠
m1.inverse()
︠cf21635d-ba78-4456-be62-43d98900e4d7︠
m1 *m1.inverse()
︠3d07b282-1664-4105-9b04-9022469d3ed8i︠
%md
**Exercice :** Créez une matrice triangulaire inférieure ne contenant que des 1. Calculez son inverse et son déterminant.
︡8d84c073-87c6-4327-b0d4-73e1d240f8a2︡︡{"done":true,"md":"**Exercice :** Créez une matrice triangulaire inférieure ne contenant que des 1. Calculez son inverse et son déterminant."}
︠41f0b974-1974-49c1-acfb-c2bb3e65bdcf︠

︠641284dc-cf3a-4530-9f72-223b96988371︠

︠c97a2178-e9d4-4ef6-a410-39887a90a2e4i︠
%md
## Fonctions

Tout comme en C++, il est possible de définir des fonctions en python. **Exécutez l'exemple ci-dessous**
︡8e822031-e889-44ec-9a08-92ebac97668f︡︡{"done":true,"md":"## Fonctions\n\nTout comme en C++, il est possible de définir des fonctions en python. **Exécutez l'exemple ci-dessous**"}
︠139da854-7ef0-41a3-bb48-383ee0c14dc5︠
def biggest_prime(n):
    while n>=1:
        if n.is_prime():
            return n
        n = n-1
    return None
︡fe6dbd96-23f1-4475-a600-ed15915ffc12︡︡{"done":true}
︠b2f86d58-1919-4fa9-bf3e-ec1248dc016c︠
biggest_prime(100)
biggest_prime(75)
︡4834996c-7118-4436-a907-e62655620545︡
︠fd503554-88a8-4f52-9bee-71f9e4090fe9︠
︠a6a2ac62-d199-452e-b22a-49ffc2aa556ci︠
%md
 Ce premier exemple donne la syntaxte d'une fonction. Elle se définit avec le mot clé ``def`` suivi du nom de la fonction. Ensuite, on donne entre paranthèse les **noms des arguments**. Comme pour les boucles for, on doit écrire le code de la fonction en dessous et de manière indentée ! Enfin, pour retourner un résultat, il faut utiliser la commande ``return``.

**Attention !** Une fonction python est un ensemble de ligne de code à exécuter, ce n'est pas la même chose que les fonctions mathématiques que nous avons vues dans le TP1.

Par ailleurs, vous remarquerez que, contrairement au C++, on ne spécifie pas le type des variables. Le python est un langage dynamique et toute la sémantique est donc testée au niveau de l'exécution. **Exécutez la cellule suivante et observez l'erreur de type.**
︡1be0a5bd-e41e-4a35-960b-c85a4a9bc560︡︡{"done":true,"md":" Ce premier exemple donne la syntaxte d'une fonction. Elle se définit avec le mot clé ``def`` suivi du nom de la fonction. Ensuite, on donne entre paranthèse les **noms des arguments**. Comme pour les boucles for, on doit écrire le code de la fonction en dessous et de manière indentée ! Enfin, pour retourner un résultat, il faut utiliser la commande ``return``.\n\n**Attention !** Une fonction python est un ensemble de ligne de code à exécuter, ce n'est pas la même chose que les fonctions mathématiques que nous avons vues dans le TP1.\n\nPar ailleurs, vous remarquerez que, contrairement au C++, on ne spécifie pas le type des variables. Le python est un langage dynamique et toute la sémantique est donc testée au niveau de l'exécution. **Exécutez la cellule suivante et observez l'erreur de type.**"}
︠fe1c284e-a144-4ae1-ae92-fa3b2c4b2ef2︠
biggest_prime("test")
︡c9875e96-314d-446e-a7ec-12226ae63fdb︡
︠68730a9b-9cf3-406d-a445-34410169bd1ai︠
%md
**Observez la fonction suivante et son exemple d'utilisation. Exécutez quelques exemples supplémentaires.**
︡8e073bfb-8825-490a-a0a8-d44971eb40e2︡︡{"done":true,"md":"**Observez la fonction suivante et son exemple d'utilisation. Exécutez quelques exemples supplémentaires.**"}
︠8b445161-3f40-4d6b-a36e-27904917b25c︠
def tangente_plot(f,a,xmin,xmax):
    t = f.derivative(x)(a)*(x-a)+f(a)
    return plot(f,(x,xmin,xmax), color="blue") + plot(t,(x,xmin,xmax),color="red")
︡1b836011-9471-4ed6-9367-1892f743b620︡︡{"done":true}
︠d439ac65-02e0-43f2-a347-07c04a8cd081︠
f(x) = sin(x)*x +1
tangente_plot(f,2,-4,4)
︡36a471bb-eb77-4db5-8277-0ff2e1e76245︡
︠a0a79f71-adbd-4b4a-827f-c6455e35a2d4i︠
%md
**Exercice : ** Ecrire une fonction qui prend en paramètre un nombre $n$ et retourne le plot d'un polygône régulier à $n$ cô
︠15748aef-3f3e-45fa-9762-c3e21e589703i︠
%md
**Exercice : ** écrire une fonction qui prend en paramètre un nombre `n` et retroune le plot d'un polygône régulier à `n` côtés.
︡d671f9d3-d73a-45a9-beee-c6c1420afdc0︡︡{"done":true,"md":"**Exercice : ** écrire une fonction qui prend en paramètre un nombre `n` et retroune le plot d'un polygône régulier à `n` côtés."}
︠e28632e2-8fe4-4e58-9038-ae99b0bfd8f4︠

︠a2340a7a-e2df-47e4-912c-cd305a9c1268︠

︠44b3fea1-5f06-4cd4-8186-bd9ef2a08a5ei︠
︠7635a13c-cb89-4a23-a517-840e71879483i︠
%md
## Compréhension de listes
La syntaxe du python offre beaucoup de souplesse pour la création de listes. **Exécutez les exemples suivants**.
︡74966652-5239-4f7e-8cc0-98d75129b633︡︡{"done":true,"md":"## Compréhension de listes\nLa syntaxe du python offre beaucoup de souplesse pour la création de listes. **Exécutez les exemples suivants**."}
︠5c3ca167-9217-46be-8257-674619e28944︠
l1 = [i*2 for i in range(5)]
l1
︡6437db04-10d8-4d2c-b60c-d7fbd37be450︡
︠93b94135-e6a2-42f2-8178-c03dfe5df9e1︠
︠945d290b-b336-45a1-8eee-5d988ead222d︠
l2 = [i/2 for i in l1]
l2
︡884d3d15-ebca-4294-a5c1-20a052994adf︡
︠cca28d8d-dcc9-4cbc-90ec-b3094fc4d397i︠
%md 
De la même façon, on peut rajouter des conditions. 
︡8ae32759-cfd2-47d5-a689-8d254dc0a4e4︡︡{"done":true,"md":"De la même façon, on peut rajouter des conditions."}
︠48b6a9f3-70bb-40b2-aec8-5085336b5c77︠
l1 = [2,2,15,3,5,1,10,12,4]
l1
︡cc15ccd8-810b-4f8a-8efd-7c85f6713049︡︡{"stdout":"[2, 2, 15, 3, 5, 1, 10, 12, 4]\n","done":false}︡{"done":true}
︠6ea34cf4-8c60-46e7-8575-7d85e6a8d29c︠
l2 = [i for i in l1 if i<10]
l2
︡bf365a80-f50a-43d4-937a-be412218488b︡︡{"stdout":"[2, 2, 3, 5, 1, 4]\n","done":false}︡{"done":true}
︠1b51ff89-5c5d-4916-aaf9-60792063637fi︠
%md
**Utilisez une syntaxe similaire pour créer la liste des entiers impaires inférieurs à 20. De même pour les nombres premiers inférieurs à 100.** (Remarque, il existe une fonction `isprime`)
︡3e216dfa-9a75-4959-a9c5-027c6cfd5089︡︡{"done":true,"md":"**Utilisez une syntaxe similaire pour créer la liste des entiers impaires inférieurs à 20. De même pour les nombres premiers inférieurs à 100.** (Remarque, il existe une fonction `isprime`)"}
︠d1a31e97-ccf3-4cb7-aa68-02391ed832ba︠

︠9ecdc6f6-cd85-499e-b55c-60d7587884b2i︠
%md
## Animations

Sage permet la création **d'animations** à partir d'une liste de plots. L'utilisation de la compréhension de liste python rend son utilisation d'autant plus simple. **Exécutez l'exemple suivant.**
︡808fb9af-c5bd-43f8-8695-9b3deb24cfb4︡︡{"done":true,"md":"## Animations\n\nSage permet la création **d'animations** à partir d'une liste de plots. L'utilisation de la compréhension de liste python rend son utilisation d'autant plus simple. **Exécutez l'exemple suivant.**"}
︠26a7d8c0-d787-464c-a6d0-df9ac1c9e639︠
mes_plots = [circle((0,0),1,color="red") + point2d((cos(t*2*pi/25),sin(t*2*pi/25))) for t in xrange(26)]
animate(mes_plots)
︡c5c0a5b3-aba6-4b64-9b7b-371f06dbe2dc︡
︠b79e37d1-a84f-4be2-ba24-53db25fd9bac︠
︠e6cd70e3-31ca-4bf2-aa65-06b7a5329e37i︠
%md
**Exercice ** Créer une animation représentant des polygônes réguliers à l'intérieur d'un cercle dont le diamètre varie entre 3 et 10.
︡48f26d4b-da7e-4255-9621-424e28843952︡︡{"done":true,"md":"**Exercice ** Créer une animation représentant des polygônes réguliers à l'intérieur d'un cercle dont le diamètre varie entre 3 et 10."}
︠14a9a3b9-3ae7-4888-9cbf-7859182b871e︠

︠3f39fc66-5a8b-4997-9c37-ccbc7314d48d︠
︠3b883fda-87f8-4121-a561-b89c5a85775f︠

︠13441722-5b69-4f20-9ba6-870934dc7123︠









