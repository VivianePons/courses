︠59790850-6a6c-4b2c-97f7-a4a8f2a265f3i︠
%html
<h2>
    Projet pluridisciplinaire TP3 : Les fonctions en Sage et en python
</h2>
<p>
    Dans ce TP, le but est d'approfondir l'utilisation des <strong>fonctions</strong> en python et en sage. Ce sera l'occasion de voir l'utilisation de quelques commandes spécifique à Sage qui permettent de résoudre de nombreuses équations.
</p>
︡222f8120-25b1-43b5-8e46-4e201e38b141︡︡{"done":true,"html":"<h2>\n    Projet pluridisciplinaire TP3 : Les fonctions en Sage et en python\n</h2>\n<p>\n    Dans ce TP, le but est d'approfondir l'utilisation des <strong>fonctions</strong> en python et en sage. Ce sera l'occasion de voir l'utilisation de quelques commandes spécifique à Sage qui permettent de résoudre de nombreuses équations.\n</p>"}
︠8cf8666e-7028-4ff7-b43d-73c5df656b6d︠

︡1e935fd9-8d73-4622-bfca-d760227b2cdb︡
︠c2a533de-7958-44d6-9b30-8fe8e4fe1cd3i︠
%html
<h3>
Les fonctions mathématiques Sages
</h3>
<p>
    Comme nous l'avons vu au 1er TP, Sage permet de définir simplement des fonctions mathématiques à l'aide d'expressions symboliques comme suit :
</p>
︡1e4b17a6-8fe9-4f53-ae08-a727882cb7f0︡︡{"done":true,"html":"<h3>\nLes fonctions mathématiques Sages\n</h3>\n<p>\n    Comme nous l'avons vu au 1er TP, Sage permet de définir simplement des fonctions mathématiques à l'aide d'expressions symboliques comme suit :\n</p>"}
︠6f86edaa-80cf-49a1-88d1-12e58a2d2f9b︠
f(x) = x^2
plot(f)
︡87c756a3-3d83-42bf-bc3c-4e428bf0bf62︡
︠64c94f7a-c68a-4229-92b3-b56456ffa870i︠
%html
<p>
    Ces fonctions possède un certain nombre de méthodes (comme <code>integrate</code>, <code>derivative</code>, etc...) listées en utilisant la tapant f. et tabulation
</p>
︡d43ab584-1719-4b21-b2cc-9203e03225c6︡{"html":"<p>\n    Ces fonctions possède un certain nombre de méthodes (comme <code>integrate</code>, <code>derivative</code>, etc...) listées en utilisant la tapant f. et tabulation\n</p>\n"}︡
︠0a191320-bdb4-47bc-88c8-4787378499da︠
f.integrate(x)
f.derivative(x)
︡cd639083-d16f-4ddf-a539-4d93618ca429︡
︠9561a41c-918c-40ff-bef0-6b7dc57ff182i︠
%html
<p>
    En particulier, il est possible d'obtenir le développement de Taylor à l'ordre N d'une fonction à l'aide de la commande <code>taylor</code>.
</p>
<p>
    <strong>Définissez une fonction non polynomial continue et dérivable en 0 (par exemple sin(x)). Affichez cette fonction ainsi que son développement limité à l'ordre 1,2 et 3 au voisinage de 0 (avec des couleurs différentes).</strong>
</p>
︡1a4c6f46-00f7-4e5c-92bb-2512c83bc6d6︡{"html":"<p>\n    En particulier, il est possible d'obtenir le développement de Taylor à l'ordre N d'une fonction à l'aide de la commande <code>taylor</code>.\n</p>\n<p>\n    <strong>Définissez une fonction non polynomial continue et dérivable en 0 (par exemple sin(x)). Affichez cette fonction ainsi que son développement limité à l'ordre 1,2 et 3 au voisinage de 0 (avec des couleurs différentes).</strong>\n</p>\n"}︡
︠f6be61a7-5cac-4dc9-a70a-83904c0182ac︠





︡2e5dd1f1-f8e0-469e-9eae-48b509470f69︡
︠ddb8bc3d-9937-4ba9-b3e5-3d560bbcf8d7i︠

%html
<h3>
Résolution des équations 
</h3>
<p>
    Sage permet notamment de résoudre de manière exacte de nombreuses équations. Dans l'exemple ci-après, on considère une fonction polynomial dont on cherche les racines. <strong>Executez cet exemple</strong>.
</p>
︡b43b32d7-137e-46a0-81f5-8f432f1cbea8︡{"html":"<h3>\nRésolution des équations \n</h3>\n<p>\n    Sage permet notamment de résoudre de manière exacte de nombreuses équations. Dans l'exemple ci-après, on considère une fonction polynomial dont on cherche les racines. <strong>Executez cet exemple</strong>.\n</p>\n"}︡
︠b5225fab-26f3-4272-9bfc-b43d54f90266︠

f(x) = x**4-x**2-x-1
solve(f(x)==0,x)


︡9a969569-48ee-45f6-a24b-ca5846fc23fc︡
︠69d4ebb1-69cd-47b2-8d8f-09a4c5d8a8ac︠

︡6ca3a914-dd36-4b06-b773-bed1f7e93eee︡
︠77e761a7-08a0-46d8-8523-5091854c76aai︠
%html
<p>
    La fonction <strong>solve</strong> renvoie la liste des solutions de notre équation. Il est également possible de résoudre des systèmes d'équations (même non linéaires) comme suit :
</p>
︡faec0424-c86b-484d-a4a3-3532b9a75633︡{"html":"<p>\n    La fonction <strong>solve</strong> renvoie la liste des solutions de notre équation. Il est également possible de résoudre des systèmes d'équations (même non linéaires) comme suit :\n</p>\n"}︡
︠1b463c55-3ec6-4d07-a1bf-952e4fcb454d︠

var('x1 x2 x3')
solve([x1+x2-x3 == 0, x2-x3==-3*x1**2+x3, x3==6*x2-x1],x1,x2,x3)



︡457deaba-d3b0-451c-a8bf-2a16d50f2d75︡
︠37f4c599-d423-47e1-b68b-cf3d5870dfa0i︠
%html
<p>
    <strong>Remarque :</strong> L'instruction initiale permet de définir symboliquement 'x1', 'x2' et 'x3' comme des inconnues. Elle est indispensable pour définir le système qu'on souhaite résoudre. 
</p> 
<p>
    <strong>Donner et résoudre un système permettant de trouver le (ou les) points d'intersections de 2 cercles définis par :
<ol>
    <li> un cercle de centre (0,0) et de rayon 2 </li>
    <li> un cercle de centre (0.5,0.75) et de rayon 2.</li>
</ol>
Tracez ces deux cercles. </strong>
</p>
︡93e2e146-12f7-4d4d-bd3c-f6c3a7420282︡{"html":"<p>\n    <strong>Remarque :</strong> L'instruction initiale permet de définir symboliquement 'x1', 'x2' et 'x3' comme des inconnues. Elle est indispensable pour définir le système qu'on souhaite résoudre. \n</p> \n<p>\n    <strong>Donner et résoudre un système permettant de trouver le (ou les) points d'intersections de 2 cercles définis par :\n<ol>\n    <li> un cercle de centre (0,0) et de rayon 2 </li>\n    <li> un cercle de centre (0.5,0.75) et de rayon 2.</li>\n</ol>\nTracez ces deux cercles. </strong>\n</p>\n"}︡
︠ff22456c-c473-4649-aad4-c5d40f8c4d69︠






︡8645a089-19fc-4798-871a-ebb47bac87dc︡
︠50659547-8b12-40d5-ad95-6e0afd4261e5i︠

%html
<p>
    <strong> Mêmes questions dans le cas où le 2ème cercle a pour centre (3,5) et le même rayon. Commentez la réponse donnée par Sage.</strong> 
</p>

︡cd19e91b-49cd-4150-b237-f3eb977ea307︡{"html":"<p>\n    <strong> Mêmes questions dans le cas où le 2ème cercle a pour centre (3,5) et le même rayon. Commentez la réponse donnée par Sage.</strong> \n</p>\n\n"}︡
︠9a9ca04e-1a1a-4971-9d1a-985e94cbd1bd︠





︡893fa77f-6b25-49c9-b851-4c6583bbbc7f︡
︠409dde01-d27b-42b6-86a4-c5c5ffa3120ei︠

%html
<p>
    <strong> Mêmes questions dans le cas où le 2ème cercle devient une ellipse (trouvez l'équation sur internet). Tracez les deux courbes (le cercle et l'ellipse)</strong> 
</p>
︡58ca5c3f-3349-489f-8b7d-ecf7e3c7ee68︡{"html":"<p>\n    <strong> Mêmes questions dans le cas où le 2ème cercle devient une ellipse (trouvez l'équation sur internet). Tracez les deux courbes (le cercle et l'ellipse)</strong> \n</p>\n"}︡
︠531898a0-09a9-400c-9cb0-55f26ab9bd3b︠




︡f8a05cf1-6349-4efc-9358-4d18ad5ea923︡
︠cb475179-14bf-4710-b5a4-a9240e95daaci︠
%html
<p>
    Par ailleurs, lorsque l'on cherche les solutions d'une équation de type $f(x,y)=0$, on peut utiliser <code>implicit_plot</code> et voir sa solution de façon graphique.
</p>
︡588bffc5-81e3-4039-b2d8-26fce8c9a035︡{"html":"<p>\n    Par ailleurs, lorsque l'on cherche les solutions d'une équation de type $f(x,y)=0$, on peut utiliser <code>implicit_plot</code> et voir sa solution de façon graphique.\n</p>\n"}︡
︠82a72e83-b57a-4036-867d-a842f9babfe2︠
var('y')
f(x,y) = x^2 - y^2
implicit_plot(f,(x,-2,2),(y,-2,2))
︡bfae6232-bab2-4eef-9b2d-2d30aa0871b8︡
︠a3e643a8-24a1-4897-a789-dd5609ae499ci︠
%html
<p>
    <strong>Utilisez <code>implicit_plot</code> pour afficher un cercle de rayon 1.</strong>
</p>
︡e2f3de1d-a452-458a-8f79-c7d60fe7f8a7︡{"html":"<p>\n    <strong>Utilisez <code>implicit_plot</code> pour afficher un cercle de rayon 1.</strong>\n</p>\n"}︡
︠c7520c40-759e-4d17-b82c-df179c16c77c︠

︡f4294d50-7aba-4b38-9dd5-56887234dea5︡
︠78dd0027-4942-4df6-915b-dd6f7273f29bi︠
%html
<p>
    Le logiciel sage permet également de résoudre des <strong>équations différentielles</strong>. <strong>Executez l'exemple ci-dessous</strong>.
</p>
︡8f35e2de-a093-4887-ba8b-ed53f996d3dc︡{"html":"<p>\n    Le logiciel sage permet également de résoudre des <strong>équations différentielles</strong>. <strong>Executez l'exemple ci-dessous</strong>.\n</p>\n"}︡
︠3ca06602-29a1-4583-aebe-9ad4d5f7a78c︠
var('t')
x = function('x',t)
equation_differentielle = diff(x,t) == x
sol = desolve(equation_differentielle,x,ics=[0,1])
print sol


︡b31e275a-e5b7-47ea-b8f7-170bf4ec0757︡
︠5ec54e43-6726-4f6f-8c38-f743e6446caei︠
%html
<p>
    Expliquons un peu cet exemple. Ici, on commence par déclarer une variable 't' et une fonction x dépendant de t. La fonction x(t) est ainsi définie symboliquement et on peut l'utiliser pour écrire notre équation différentielle. La fonction diff(x,t) permet de dériver x par rapport à t. Pour obtenir une dérivée d'ordre supérieur, il suffit d'écrire diff(x,t,2) pour l'ordre 2 par exemple. De plus, le terme <code>ics</code> correspond à la définition des conditions initiales (Initial ConditionS). La première valeur de la liste est la valeur initiale de $t$ et la seconde celle de $x(t)$.
</p>
<p>
    <strong>Résoudre l'équation différentielle $x^{''}(t) = 3x(t)-4$ avec comme condition initial $x(t=0)=1$ et $x'(t=0)=0$.
</p>
︡d32f9ea4-9556-4de6-be1d-5a55fd4d4268︡{"html":"<p>\n    Expliquons un peu cet exemple. Ici, on commence par déclarer une variable 't' et une fonction x dépendant de t. La fonction x(t) est ainsi définie symboliquement et on peut l'utiliser pour écrire notre équation différentielle. La fonction diff(x,t) permet de dériver x par rapport à t. Pour obtenir une dérivée d'ordre supérieur, il suffit d'écrire diff(x,t,2) pour l'ordre 2 par exemple. De plus, le terme <code>ics</code> correspond à la définition des conditions initiales (Initial ConditionS). La première valeur de la liste est la valeur initiale de $t$ et la seconde celle de $x(t)$.\n</p>\n<p>\n    <strong>Résoudre l'équation différentielle $x^{''}(t) = 3x(t)-4$ avec comme condition initial $x(t=0)=1$ et $x'(t=0)=0$.\n</p>\n"}︡
︠a3531d57-5832-4426-8bf0-75e8a98a2f69︠





︡abd72796-531e-4043-9a7b-ec152cdb9bbb︡
︠03349ddf-8dfc-4246-9bec-532ebd08ef2di︠
%html
<p>
    Nous propopns dans ce petit exercice de résoudre le problème suivant : une masse est accrochée à un ressort selon le schéma suivant
</p>
<p>
    |Mur|--/\/\/\/\/\--($M$)
</p>
<p>
On note x(t) la possition de la masse à l'instant t. Le ressort a les caractéristiques suivantes : 
<ul>
    <li> il est au repos lorsque la masse est à une distance $d>0$ du bord</li>
    <li> et il possède une raideur $k>0$ </li>
</ul>
L'équation modèle vérifiée par $x(t)$, en supposant que la masse glisse parfaitement, est : $x^{''}(t) = -k(x(t)-d)$
</p>
<p>
    <strong>Résoudre cette équation et afficher la solution. À l'aide de la commande <code>animate</code>, affichez une animation simple permettant de voir la masse (dessiner par exemple par un cercle) bouger au cours du temps. Pour les paramètres, prendre $d=1$ et $k=1$.</strong>
</p>


︡1dbb09a2-2b3d-4ca7-b622-9ebb0fafeac3︡{"html":"<p>\n    Nous propopns dans ce petit exercice de résoudre le problème suivant : une masse est accrochée à un ressort selon le schéma suivant\n</p>\n<p>\n    |Mur|--/\\/\\/\\/\\/\\--($M$)\n</p>\n<p>\nOn note x(t) la possition de la masse à l'instant t. Le ressort a les caractéristiques suivantes : \n<ul>\n    <li> il est au repos lorsque la masse est à une distance $d>0$ du bord</li>\n    <li> et il possède une raideur $k>0$ </li>\n</ul>\nL'équation modèle vérifiée par $x(t)$, en supposant que la masse glisse parfaitement, est : $x^{''}(t) = -k(x(t)-d)$\n</p>\n<p>\n    <strong>Résoudre cette équation et afficher la solution. À l'aide de la commande <code>animate</code>, affichez une animation simple permettant de voir la masse (dessiner par exemple par un cercle) bouger au cours du temps. Pour les paramètres, prendre $d=1$ et $k=1$.</strong>\n</p>\n\n\n"}︡
︠5aa96b53-7165-4886-b595-95320f3ec5d4︠

︡12c9d562-932f-4332-b64d-c43f87752de3︡
︠08dc3e16-4fc8-4e66-ad83-ef6098d67b76i︠

%html
<h3>
Fonctions pythons
</h3>
<p>
    Nous venons de (re)voir les fonctions mathématiques en Sage. Dans le TP précédent, nous avons abordé les fonctions pythons. Nous allons revoir un peu ce concept pour voir les différences avec les fonctions Sage (fonctions mathématiques). Commençons par un exemple simple : <strong>Ecrivez un appel de la fonction suivante pour qu'elle retourne 13.</strong>
</p>
︡472f8ab1-0023-4d11-9508-f5b06855c302︡{"html":"<h3>\nFonctions pythons\n</h3>\n<p>\n    Nous venons de (re)voir les fonctions mathématiques en Sage. Dans le TP précédent, nous avons abordé les fonctions pythons. Nous allons revoir un peu ce concept pour voir les différences avec les fonctions Sage (fonctions mathématiques). Commençons par un exemple simple : <strong>Ecrivez un appel de la fonction suivante pour qu'elle retourne 13.</strong>\n</p>\n"}︡
︠c80afcd1-4a9c-42d4-9e95-1d65abe41d80︠
def ma_fonction(x,y):
    resultat = x+y
    return resultat

print ma_fonction(3,1)



︡a6bcf125-7e1b-4b1a-aede-f9cfee4f2902︡
︠3baf0d16-4776-4600-ac24-6a67f7ee1e7ai︠

%html
<p>
    <strong>Définissez une fonction prenant en argument 2 nombres, et qui retourne 
<ul>
    <li> la somme des 2 si le premier nombre est pair</li>
    <li> la différence des 2 si le premier nombre est impair</li>
</ul>
</strong>
    <strong>Indication : </strong> On pourra utiliser le symbole % pour connaître la parité d'un nombre 
</p>
︡d5baea9c-ff59-4ff0-bf0f-46a92bab42c6︡{"html":"<p>\n    <strong>Définissez une fonction prenant en argument 2 nombres, et qui retourne \n<ul>\n    <li> la somme des 2 si le premier nombre est pair</li>\n    <li> la différence des 2 si le premier nombre est impair</li>\n</ul>\n</strong>\n    <strong>Indication : </strong> On pourra utiliser le symbole % pour connaître la parité d'un nombre \n</p>\n"}︡
︠806ff977-fec1-448e-bc47-d464b8282598︠




︡69a96bb9-9e5b-46db-99b2-1574ccb216b6︡
︠8c044014-2c83-4603-9aeb-29c9c5e326cbi︠
%html
<p>Les fonctions définies comme dans l'exemple précédent sont fondamentalement différentes des fonctions mathématiques que nous avons vues précédemment. Pour vous en convaincre <strong>executez le code suivant</strong> : </p>
︡82760cb6-3e71-48cb-a793-72183bae5bdb︡{"html":"<p>Les fonctions définies comme dans l'exemple précédent sont fondamentalement différentes des fonctions mathématiques que nous avons vues précédemment. Pour vous en convaincre <strong>executez le code suivant</strong> : </p>\n"}︡
︠7547d3a3-a8f1-4df4-8e59-67179090a01c︠

f(x) = x**2
type(f)
type(ma_fonction)



︡2dbe06a8-691f-4df1-a306-160e22171583︡
︠9359ecfc-82c3-4859-bc02-78222d4c9fefi︠

%html
<p>
    L'une des conséquences importante de cette différence est que les fonctions python ne possèdent pas les mêmes méthodes que les expressions symboliques définissant les fonctions Sage. Par conséquent, on ne peut pas utiliser des instructions du type <code>integrate</code> ou <code>diff</code> sur les fonctions python.
</p>

︡8746e009-ac63-43c2-acec-4b2cd81c3e55︡{"html":"<p>\n    L'une des conséquences importante de cette différence est que les fonctions python ne possèdent pas les mêmes méthodes que les expressions symboliques définissant les fonctions Sage. Par conséquent, on ne peut pas utiliser des instructions du type <code>integrate</code> ou <code>diff</code> sur les fonctions python.\n</p>\n\n"}︡
︠2fbd1721-c802-4917-90f0-8a4db97a21f0i︠
︡5092b2e5-cb00-4fbd-ba23-2d0117052032︡
︠3e786db4-d31b-467c-8797-a65b663e1d97︠
︡1657ecfa-9a29-4554-a92e-d2c1fc8e5514︡
︠d06f447d-2000-4546-b402-d1f5001b253ai︠
%html
<p>
    <strong>Écrire une fonction python qui prend en argument une fonction mathématique $f$ et un entier $N$, et qui renvoie le 'plot' du développement de taylor à l'ordre $N$ de $f$. On définira $f$ comme une fonction mathématique. Tester votre code en affichant sur un même graphique $f$ son développement de Taylor.</strong>
</p>
︡da3e3ac4-8314-44d5-a0c0-e92ed7b89729︡︡{"done":true,"html":"<p>\n    <strong>Écrire une fonction python qui prend en argument une fonction mathématique $f$ et un entier $N$, et qui renvoie le 'plot' du développement de taylor à l'ordre $N$ de $f$. On définira $f$ comme une fonction mathématique. Tester votre code en affichant sur un même graphique $f$ son développement de Taylor.</strong>\n</p>"}
︠7bada373-6aed-49ae-a27b-5cd0c9a16c8d︠

︡1faf0b9e-b3f8-467c-b02c-013dce3f8e88︡
︠37ec17cb-8ebc-4569-80f2-b04107f1d7e4︠
%html
<p>
    On considère une suite d'instructions données par une liste du type ['h','b','g','d'] indiquant une succesion de déplacement 'haut', 'bas', 'gauche' et 'droite'. Une boule placée en $(0,0)$ se déplace selon cette suite d'instructions. On suppose qu'à chaque déplacement, elle bouge d'une distance $1$.<br>
    <strong>Écrire une fonction prenant en paramètre une liste d'instructions et renvoyant la liste de 'plot' présentant les déplacements de la boule. Créer une animation de cette boule à l'aide de la commande <code>animate</code>.</strong>
</p>

︡229a00f2-d496-4b44-8e22-dfb5203b69e1︡{"html":"<p>\n    On considère une suite d'instructions données par une liste du type ['h','b','g','d'] indiquant une succesion de déplacement 'haut', 'bas', 'gauche' et 'droite'. Une boule placée en $(0,0)$ se déplace selon cette suite d'instructions. On suppose qu'à chaque déplacement, elle bouge d'une distance $1$.<br>\n    <strong>Écrire une fonction prenant en paramètre une liste d'instructions et renvoyant la liste de 'plot' présentant les déplacements de la boule. Créer une animation de cette boule à l'aide de la commande <code>animate</code>.</strong>\n</p>\n\n"}︡
︠4d64c14a-1db5-40dc-a2c7-47a0b41d0d8f︠







︡c763b073-6501-483d-921f-5de26610a10c︡
︠4f92e2ac-4551-4baf-873a-836595c4a45ai︠
%html
<h3>
    Simulation d'un système de $2$ masses oscillantes.
</h3>

︡2b3016a2-9501-4ef8-acae-6b2d362a1fbd︡{"html":"<h3>\n    Simulation d'un système de $2$ masses oscillantes.\n</h3>\n\n"}︡
︠c25da1c5-7168-44f0-9f7f-9ed4a0e64ec9i︠
%html
<p>
Revenons à notre système Masse - Ressort et essayons d'aller plus loin. On se propose maintenant d'étudier le cas de 2 masses liées entres elles par deux ressorts comme représentée ci-dessous :
</p>
<p>
     |Mur|--/\/\/\/\/\--(M_1)--/\/\/\/\/\--(M_2)
</p>
<p>
    On note cette fois $x_1(t)$ et $x_2(t)$ les positions des masses $M_1$ et $M_2$. Les deux ressorts ont les caractéristiques suivantes :
<ul>
    <li> le premier ressort à une raideur $k_1$ et est au repos lorsque sa longueur est égale à $d_1$,</li>
    <li> le second ressort à une raideur $k_2$ et est au repos lorsque sa longueur est égale à $d_2$.</li>
</ul>
Les équations vérifiées par $x_1$ et $x_2$ sont alors :
$$\begin{cases} x^{''}_1(t) = -k_1 (x_1-d_1)+ k_2 (x_2 - x_1 -d_2)\\[8pt] x^{''}_2(t) = -k_2 (x_2 - x_1 -d_2) \end{cases}$$
</p>

<p>
    Pour résoudre ce système d'équations, nous allons procéder en plusieurs étapes :
<ol>
    <li> Nous allons le réécrire sous la forme d'un système différentiel d'ordre $1$ en introduisant deux variables $v_1 = x_1'$ et $v_2 = x_2'$</li>
    <li> Ensuite, on va définir une fonction F(X), où $X = [ x_1,x_2,v_1,v_2]$ tel que $ X'(t) = F(X(t))$. Cette fonction F renvoie un vecteur de $4$ éléments.</li>
</ol>
<strong>Définir une fonction python F qui prend en paramètre une liste de quatre variables $X = [x_1, x_2, v_1, v_2]$ et qui retourne $X'(t) = [x_1',x_2',v_1',v_2']$ selon les relations de l'équation différentielle. </strong>
</p>
︡72bf629d-4bd0-4be9-9f29-a9bb89d1b1e4︡{"html":"<p>\nRevenons à notre système Masse - Ressort et essayons d'aller plus loin. On se propose maintenant d'étudier le cas de 2 masses liées entres elles par deux ressorts comme représentée ci-dessous :\n</p>\n<p>\n     |Mur|--/\\/\\/\\/\\/\\--(M_1)--/\\/\\/\\/\\/\\--(M_2)\n</p>\n<p>\n    On note cette fois $x_1(t)$ et $x_2(t)$ les positions des masses $M_1$ et $M_2$. Les deux ressorts ont les caractéristiques suivantes :\n<ul>\n    <li> le premier ressort à une raideur $k_1$ et est au repos lorsque sa longueur est égale à $d_1$,</li>\n    <li> le second ressort à une raideur $k_2$ et est au repos lorsque sa longueur est égale à $d_2$.</li>\n</ul>\nLes équations vérifiées par $x_1$ et $x_2$ sont alors :\n$$\\begin{cases} x^{''}_1(t) = -k_1 (x_1-d_1)+ k_2 (x_2 - x_1 -d_2)\\\\[8pt] x^{''}_2(t) = -k_2 (x_2 - x_1 -d_2) \\end{cases}$$\n</p>\n\n<p>\n    Pour résoudre ce système d'équations, nous allons procéder en plusieurs étapes :\n<ol>\n    <li> Nous allons le réécrire sous la forme d'un système différentiel d'ordre $1$ en introduisant deux variables $v_1 = x_1'$ et $v_2 = x_2'$</li>\n    <li> Ensuite, on va définir une fonction F(X), où $X = [ x_1,x_2,v_1,v_2]$ tel que $ X'(t) = F(X(t))$. Cette fonction F renvoie un vecteur de $4$ éléments.</li>\n</ol>\n<strong>Définir une fonction python F qui prend en paramètre une liste de quatre variables $X = [x_1, x_2, v_1, v_2]$ et qui retourne $X'(t) = [x_1',x_2',v_1',v_2']$ selon les relations de l'équation différentielle. </strong>\n</p>\n"}︡
︠190b422b-000b-41c0-8729-b899fb2fdc33︠

k1=1; k2=1; d1 =1; d2 = 1;
︡48de39dd-e02e-4f68-9943-86a276df4783︡
︠6f74537b-dff2-4286-baf7-70764ecf06e9︠




︡2867af7e-0d2c-4cfb-a453-e5d30baabe44︡
︠f06dde4e-ea81-45e6-b730-f1ed6655e639i︠
%html
<p>
    Dans le modèle à une seule masse, nous avions effectué une <em>résolution exacte</em> de l'équation différentielle. C'est-à-dire que nous avions obtenu une formule pour $x(t)$. Pour ce nouveau modèle, nous allons faire une <em>résolution numérique</em> : nous allons calucler des valeurs de $x_1(t)$ et $x_2(t)$ à différents temps $t$ mais nous n'aurons pas de formule.
</p>

<p>
    Pour cela, on utilise la fonction <code>desolve_system_rk4</code> qui prend en paramètre un système d'équation différentielle de type :
    $$\begin{cases} a^{'}_1(t) = \dots
    \\[8pt] a^{'}_2(t) = \dots 
    \\[8pt] a^{'}_3(t) = \dots
    \\[8pt] \dots\end{cases}$$
     (Dans notre cas, le système porte sur quatre équations sur $x_1,x_2,v_1,v_2$)
</p>

<p>
    La fonction <code>desolve_system_rk4</code> prend en premier paramètre une liste contenant la <stron>partie droite</stron> du sytème d'équation et en second paramètre la liste des variables $[a_1,a_2,a_3, \dots]$. Il faudra aussi lui spécifier <code>ivar</code> la variable de dérivation ainsi que les conditions initiales $ics = (0,1,3,0,0)$ (la première valeur est la condition initiale en $t$).
</p>

<p>
    <strong>Avec la commande <code>desolve_system_rk4</code>, résoudre l'équation différentielle $X^{'}(t) = F(X)$ en prenant comme condition initiale $\left(t, x_1(0),x_2(0),v_1(0),v_2(0)\right)=(0,1,3,0,0)$.</strong>
    
</p>

︡c0843c1a-042c-4716-b5b3-655063a498ce︡{"html":"<p>\n    Dans le modèle à une seule masse, nous avions effectué une <em>résolution exacte</em> de l'équation différentielle. C'est-à-dire que nous avions obtenu une formule pour $x(t)$. Pour ce nouveau modèle, nous allons faire une <em>résolution numérique</em> : nous allons calucler des valeurs de $x_1(t)$ et $x_2(t)$ à différents temps $t$ mais nous n'aurons pas de formule.\n</p>\n\n<p>\n    Pour cela, on utilise la fonction <code>desolve_system_rk4</code> qui prend en paramètre un système d'équation différentielle de type :\n    $$\\begin{cases} a^{'}_1(t) = \\dots\n    \\\\[8pt] a^{'}_2(t) = \\dots \n    \\\\[8pt] a^{'}_3(t) = \\dots\n    \\\\[8pt] \\dots\\end{cases}$$\n     (Dans notre cas, le système porte sur quatre équations sur $x_1,x_2,v_1,v_2$)\n</p>\n\n<p>\n    La fonction <code>desolve_system_rk4</code> prend en premier paramètre une liste contenant la <stron>partie droite</stron> du sytème d'équation et en second paramètre la liste des variables $[a_1,a_2,a_3, \\dots]$. Il faudra aussi lui spécifier <code>ivar</code> la variable de dérivation ainsi que les conditions initiales $ics = (0,1,3,0,0)$ (la première valeur est la condition initiale en $t$).\n</p>\n\n<p>\n    <strong>Avec la commande <code>desolve_system_rk4</code>, résoudre l'équation différentielle $X^{'}(t) = F(X)$ en prenant comme condition initiale $\\left(t, x_1(0),x_2(0),v_1(0),v_2(0)\\right)=(0,1,3,0,0)$.</strong>\n    \n</p>\n\n"}︡
︠eeb9d112-ce4b-4439-afd2-2b6a082a608e︠

︡4ec6d949-4d60-42f9-90fb-d66c6fa56278︡
︠489cf2a0-8dc4-4d49-96f7-e2efb2ca9f12︠

︡1b95af37-55a9-42f4-9443-891af049d42f︡
︠c43cdc5b-fabd-4697-ab41-0330c967830bi︠
%html
<p>
    La fonction <code>desolve_system_rk4</code> renvoie la solution de notre équation calculée numériquement en une série de temps $t=[t_0,t_1,\cdots,t_n]$. On obtient ainsi une liste dont chaque élément est un tableau composé de $[t_i, x_1(t_i), x_2(t_i), v_1(t_i),v_2(t_i)]$. 
</p>
<p>    
    <strong>Affichez les solutions $x_1(t)$ et $x_2(t)$ obtenues (utilisez pour cela la commande <code>line2d</code> avec comme argument la liste des points $[t_i,x_1(t_i)]$). Comme précemment, créez une animation pour montrer le mouvement des deux masses au cours du temps.</strong>
</p>
︡54bab7e8-5cc2-4584-b169-340b211b959b︡{"html":"<p>\n    La fonction <code>desolve_system_rk4</code> renvoie la solution de notre équation calculée numériquement en une série de temps $t=[t_0,t_1,\\cdots,t_n]$. On obtient ainsi une liste dont chaque élément est un tableau composé de $[t_i, x_1(t_i), x_2(t_i), v_1(t_i),v_2(t_i)]$. \n</p>\n<p>    \n    <strong>Affichez les solutions $x_1(t)$ et $x_2(t)$ obtenues (utilisez pour cela la commande <code>line2d</code> avec comme argument la liste des points $[t_i,x_1(t_i)]$). Comme précemment, créez une animation pour montrer le mouvement des deux masses au cours du temps.</strong>\n</p>\n"}︡
︠4df82f5a-3919-40ac-8d8f-5ba9954769a5︠









