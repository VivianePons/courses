︠5ea5364b-5011-4173-a388-04c75b1c4696i︠
%html
<h2>TP sur un problème de géologie.</h2>

Le but de ce TP est d'aborder un problème de "géologie". Nous allons modéliser la propagation d'un front d'onde dans le sol. La difficulté sera de tenir compte des inhomogénéités du terrain pour décrire la propagation de l'onde. Ce TP se décomposera en $2$ sous parties
<ol>
    <li> La définition du milieu, </li>
    <li> et le calculs effectifs de la propagation de l'onde.</li>
</ol>

︡6f4eb4bd-3c4a-4e01-9efd-ca732cc45d2c︡{"html":"<h2>TP sur un problème de géologie.</h2>\n\nLe but de ce TP est d'aborder un problème de \"géologie\". Nous allons modéliser la propagation d'un front d'onde dans le sol. La difficulté sera de tenir compte des inhomogénéités du terrain pour décrire la propagation de l'onde. Ce TP se décomposera en $2$ sous parties\n<ol>\n    <li> La définition du milieu, </li>\n    <li> et le calculs effectifs de la propagation de l'onde.</li>\n</ol>\n\n"}︡
︠ee6b2821-a6ce-43f9-83b1-f9addd508661i︠

%html
<h4>
    La définition du milieu
</h4>
<p>
    Le terrain que nous allons chercher à modéliser sera représentée par une fonction à $2$ coordonnées $x$ et $y$ (la profondeur), qui à chaque position associe une densité. Dans notre modèle, cette densité indiquera la vitesse $v(x,y)$ de propagation des ondes en ce point. On supposera que la vitesse varie entre 0. (aucune propagation) et 1. (vitesse maximale). Par exemple, pour un terrain parfaitement homogène, on définira une fonction comme ci-après : 
</p>
︡f3efdf9d-7a82-4623-8e40-3c9bd1eb4ade︡︡{"done":true,"html":"<h4>\n    La définition du milieu\n</h4>\n<p>\n    Le terrain que nous allons chercher à modéliser sera représentée par une fonction à $2$ coordonnées $x$ et $y$ (la profondeur), qui à chaque position associe une densité. Dans notre modèle, cette densité indiquera la vitesse $v(x,y)$ de propagation des ondes en ce point. On supposera que la vitesse varie entre 0. (aucune propagation) et 1. (vitesse maximale). Par exemple, pour un terrain parfaitement homogène, on définira une fonction comme ci-après : \n</p>"}
︠c74e526a-11c5-4ba9-9d6a-86cc75fc442bs︠
def milieu_homogene(x,y):
    #milieu parfaitement homogène
    return 1.0



︡d8c0441e-1302-4569-a517-117a4eac4c89︡︡{"done":true}
︠f74a894f-6062-4011-b0fd-e689af6a6fdbi︠
%html
<p>
    La fonction ci-dessus renvoie pour toutes positions la valeur constante $1$, donc dans tout le milieu l'onde se propage à vitesse constante. Cependant, ce modèle est assez peu réaliste car le sol est généralement structuré par couches. On parle de milieu stratifié.
</p>
<p>
    <strong>Écrire une fonction qui définit un milieu contenant $3$ couches dans lesquelles nous avons trois vitesses constantes différentes. On supposera que $y$ varie entre 0 et -1, on découpera l'espace en trois couches égales avec les vitesses :  0.35, 0.75 et 1. La vitesse varie donc uniquement selon la profondeur $y$.</strong>
</p>
    
︡de358f98-8355-4d17-b5f9-7eaaca61f148︡︡{"done":true,"html":"<p>\n    La fonction ci-dessus renvoie pour toutes positions la valeur constante $1$, donc dans tout le milieu l'onde se propage à vitesse constante. Cependant, ce modèle est assez peu réaliste car le sol est généralement structuré par couches. On parle de milieu stratifié.\n</p>\n<p>\n    <strong>Écrire une fonction qui définit un milieu contenant $3$ couches dans lesquelles nous avons trois vitesses constantes différentes. On supposera que $y$ varie entre 0 et -1, on découpera l'espace en trois couches égales avec les vitesses :  0.35, 0.75 et 1. La vitesse varie donc uniquement selon la profondeur $y$.</strong>\n</p>"}
︠05ff54b0-ab5c-44e7-a863-e5cd2d8e41f2︠
︡9d079e50-b1d1-4be2-9561-72e0883726a3︡
︠ad3e4256-db6f-4189-8147-2f5257e123e3i︠
%md
Il est possible d'afficher la valeur de la vitesse dans le milieu à l'aide la fonction *density_plot*. Si on exécute la fonction sur le milieu homogène on obtient un restangle uni.
︡d0d80214-6c62-4a23-8d1d-6d542e7f08e6︡︡{"done":true,"md":"Il est possible d'afficher la valeur de la vitesse dans le milieu à l'aide la fonction *density_plot*. Si on exécute la fonction sur le milieu homogène on obtient un restangle uni."}
︠d39f9fce-706d-459b-92b6-743f2b3290f4s︠
density_plot(milieu_homogene,(-5,5),(-1,0))
︡b99be969-788a-4a4d-a048-dca395479bb3︡
︠bfe2fee3-1f6e-4254-b6d6-4d3ad2c279c4i︠
%html
<p>
    <strong>Utilisez <code>density_plot</code> pour afficher la densité de votre milieu à trois couches.</strong> 
</p>

︡7267544f-9501-44b1-a516-90738893b7a5︡︡{"done":true,"html":"<p>\n    <strong>Utilisez <code>density_plot</code> pour afficher la densité de votre milieu à trois couches.</strong> \n</p>"}
︠6cf120f2-5de4-4e4b-9c07-0eafb75b3eac︠
︡78dce5fe-1552-42b1-9fb8-dbaa9dc02334︡
︠f292ee75-04d7-4441-80b6-868f687d8d8fi︠
%md
La fonction *density_plot* peut prendre un argument *cmap* qui permet de faire varier les couleurs utilisées. *cmap* peut prendre les valeurs suivantes.

︡e751f050-1b5c-4255-a063-9c06b9027c3d︡︡{"done":true,"md":"La fonction *density_plot* peut prendre un argument *cmap* qui permet de faire varier les couleurs utilisées. *cmap* peut prendre les valeurs suivantes."}
︠69c2936d-94e9-439a-818e-b8c8aae8b2c3s︠
import matplotlib.cm as cm
for k in cm.datad.keys():
    print k
︡78a98a12-c8e3-474b-a7d4-9f1143b64085︡
︠92b2a117-db33-4a4d-94c9-30781b5328f3s︠
density_plot(milieu_homogene,(-5,5),(-1,0), cmap = "Blues")
︡4c34fdbd-67bf-4ae8-ac37-46439ce8e029︡
︠4cf88ae7-82f8-4fa6-b8fe-6b63f5a5e627i︠
%md
**Testez différentes valeurs pour *cmap* pour afficher votre densité**

︡1197d6bc-a514-4f51-93fd-93a9bb5a3d1b︡︡{"done":true,"md":"**Testez différentes valeurs pour *cmap* pour afficher votre densité**"}
︠814dd81c-b100-4272-b1ce-3c3a0df0fc9a︠
︡d1f9434d-4818-44b3-8cb5-3863a071ec71︡
︠56d761c2-f49c-4e0f-b2bb-da6362282331︠

︡e1ee5df4-c87b-4725-9ec2-7cbe2f7091c1︡
︠bf874d62-c922-4248-a4ea-242579772ecai︠
%html
<p>
    Une manière de définir un obstacle est de considérer une zone dans laquelle la vitesse de l'onde est nulle. Dans ce cas, l'onde ne se propage plus et est arrêtée par l'obstacle.<br/>
    <strong>Ecrivez deux fonctions <code>obstacle_rectangle</code> et <code>obstacle_rond</code> qui prennent en argument <code>x</code> et <code>y</code> et retournent <code>True</code> si le point est à l'intérieur de l'obstacle et et <code>False</code> sinon. Les obstacles doivent être un rectangle et un rond, la taille et la position est laissée libre.</strong>
</p>
︡2a5ee51f-09f1-428d-ad2d-53305240c173︡︡{"done":true,"html":"<p>\n    Une manière de définir un obstacle est de considérer une zone dans laquelle la vitesse de l'onde est nulle. Dans ce cas, l'onde ne se propage plus et est arrêtée par l'obstacle.<br/>\n    <strong>Ecrivez deux fonctions <code>obstacle_rectangle</code> et <code>obstacle_rond</code> qui prennent en argument <code>x</code> et <code>y</code> et retournent <code>True</code> si le point est à l'intérieur de l'obstacle et et <code>False</code> sinon. Les obstacles doivent être un rectangle et un rond, la taille et la position est laissée libre.</strong>\n</p>"}
︠05f22bf7-3c70-4454-abb2-413ca54956f2︠
︡4d984e3f-12c7-4016-ac00-cd3636a12fd7︡
︠d56e6087-f31b-4829-b16a-ffe4518da209︠
︡6d15cf15-9607-4113-bdf0-65d80f0a925f︡
︠1f3eba4c-31b6-42fd-a33c-3850ee8cc5d4i︠
%md
**Ecrivez quatre fonctions qui correspondent aux quatre milieux suivants :**
  * **milieu homogène avec obsctacle rectangle**
  * **milieu homogène avec obsctale rond**
  * **milieu 3 couches avec obstacle rectangle**
  * **milieu 3 couches avec obstacle rond**

**La vitesse doit être de 0 à l'intérieur de l'obstacle et suivre la règle habituelle du milieu sinon. Pensez à utiliser les fonctions écrites précédemment !!**

**Affichez chaque milieu avec <code>density_plot</code>**

︡6ea71854-ff08-419e-8e6f-c67b591b0c75︡︡{"done":true,"md":"**Ecrivez quatre fonctions qui correspondent aux quatre milieux suivants :**\n  * **milieu homogène avec obsctacle rectangle**\n  * **milieu homogène avec obsctale rond**\n  * **milieu 3 couches avec obstacle rectangle**\n  * **milieu 3 couches avec obstacle rond**\n\n**La vitesse doit être de 0 à l'intérieur de l'obstacle et suivre la règle habituelle du milieu sinon. Pensez à utiliser les fonctions écrites précédemment !!**\n\n**Affichez chaque milieu avec <code>density_plot</code>**"}
︠cca547b5-8501-42d1-ad73-3198ce51d1b5︠
︡3f65c653-a0f9-484f-9044-e0e5c669a00b︡
︠0c13242b-a6b8-463a-9da9-f732c9a8022c︠
︡c0b9d25f-da93-47f2-a1a3-7d82fa0f3a4c︡
︠c9e83e9a-25c6-45c9-beb8-4397314bae3c︠
︡3f38e7d2-b2b6-4957-8736-a28b4f2ea438︡
︠0f0d7818-0c31-4a17-b2c2-8d8ab0d0c2d2︠
︡e1e3215e-d9bd-4840-ac19-496d55a406cf︡
︠73fecc4d-f750-4b27-be5b-0040c71599d8︠
︡f992fc3d-eba3-4e72-87eb-e6b6b948a17a︡
︠8822e685-96d0-4998-aea5-7fcd662978e4︠
︡3cdafc7f-a39d-4d9c-90b8-ddb2cff72952︡
︠3b83c61b-fa5c-45a4-93db-1e96b2ca57fbi︠
%html
<h3>
    La propagation d'une ondes
</h3>
<p>Nous allons maintenant modéliser la propagation d'une onde dans nos différents domaines. Pour simplifier, on supposera que la position du front d'onde est décrite par : $$(x(t),y(t)) = r(t) (cos(\theta),sin(\theta))$$ où l'angle $\theta$ ne dépend pas de $t$ et $r(t)$ est une distance postivie $r(t)>0$. Comme les ondes se propagent dans le sol, donc vers le bas, on supposera $\theta \in [\pi, 2\pi]$ (ainsi, la coordonnée $y$ est toujours négative).
</p>
<p>
Dans une direction $\theta \in [\pi,2\pi]$ fixée, on suppose que la vitesse $v$ vérifie $$r'(t) = v\left(r(t)cos(\theta), r(t)sin(\theta) \right).$$</p>
</p>
<p>
    <strong>Ecrire une fonction <code>vitesse</code> qui prend en paramètre un angle theta, un <em>milieu</em> (sous la forme de fonction python) et un rayon <code>r</code> et qui retourne la vitesse au point donné.</strong>
</p>


︡e83d796d-8ca5-45af-bb4a-f8f763d8e95d︡︡{"done":true,"html":"<h3>\n    La propagation d'une ondes\n</h3>\n<p>Nous allons maintenant modéliser la propagation d'une onde dans nos différents domaines. Pour simplifier, on supposera que la position du front d'onde est décrite par : $$(x(t),y(t)) = r(t) (cos(\\theta),sin(\\theta))$$ où l'angle $\\theta$ ne dépend pas de $t$ et $r(t)$ est une distance postivie $r(t)>0$. Comme les ondes se propagent dans le sol, donc vers le bas, on supposera $\\theta \\in [\\pi, 2\\pi]$ (ainsi, la coordonnée $y$ est toujours négative).\n</p>\n<p>\nDans une direction $\\theta \\in [\\pi,2\\pi]$ fixée, on suppose que la vitesse $v$ vérifie $$r'(t) = v\\left(r(t)cos(\\theta), r(t)sin(\\theta) \\right).$$</p>\n</p>\n<p>\n    <strong>Ecrire une fonction <code>vitesse</code> qui prend en paramètre un angle theta, un <em>milieu</em> (sous la forme de fonction python) et un rayon <code>r</code> et qui retourne la vitesse au point donné.</strong>\n</p>"}
︠8e2099ee-df3f-4b53-92da-72a0b9b3fabd︠
︡1accf78a-9aca-4fae-b672-533c52325bb6︡
︠0d6b484d-c744-4b1f-831c-c60cf3cf2b37︠
︡c63307b5-f65f-49cd-a586-e59a1966d82c︡
︠053a5ed4-6c3c-41ef-a966-096e4b30d1a2i︠
%html
<p>
    Soit $f(r)$ la vitesse au rayon $r$ pour un angle et un milieu donné. L'équation différentielle $r'(t) = f(r)$ ne peut pas être résolue exactement, car la fonction $f$ est a priori quelconque. Nous allons donc utiliser une méthode numérique de résolution. L'idée est d'utiliser l'algorithme suivant :
    $$\dfrac{r(t_{n+1}) - r(t_{n})}{\delta_t} = f(r(t_n))$$
 où $t_n = n \delta_t$, et $\delta_t>0$ est un paramètre petit. L'idée de la méthode est de remplacer la dérivée $r'(t)$ par un taux d'accroissement. Remarquer que quand $\delta_t \rightarrow 0$, ce taux d'accroissement tend vers la dérivée $r'(t_n)$. Dans l'expression ci-dessus, on peut isoler $r(t_{n+1})$ comme suit :
    $$r(t_{n+1}) = \delta_t f(r(t_n)) + r(t_{n}).$$
Étant donnée $r(t_0=0)=0$, on peut calculer la suite des $r(t_{n})$ avec l'expression ci-dessus jusque $t_N = T$, où $T$ est un paramètre choisi.    
</p>
<p>
    <strong>À l'aide de la méthode décrite (méthode d'Euler explicite), écrire une fonction prenant en paramètre le milieu, l'angle theta, le temps $T$ et le pas $\delta_t$ et qui retourne la liste des valeurs $r(t_n)$ jusqu'à $t = T$.</strong> (Pour le stests, on choisira $T=1$ et $\delta_t = 0.1$.)
</p>

︡2f1013d9-741a-4acc-9511-7f0c8de27eee︡︡{"done":true,"html":"<p>\n    Soit $f(r)$ la vitesse au rayon $r$ pour un angle et un milieu donné. L'équation différentielle $r'(t) = f(r)$ ne peut pas être résolue exactement, car la fonction $f$ est a priori quelconque. Nous allons donc utiliser une méthode numérique de résolution. L'idée est d'utiliser l'algorithme suivant :\n    $$\\dfrac{r(t_{n+1}) - r(t_{n})}{\\delta_t} = f(r(t_n))$$\n où $t_n = n \\delta_t$, et $\\delta_t>0$ est un paramètre petit. L'idée de la méthode est de remplacer la dérivée $r'(t)$ par un taux d'accroissement. Remarquer que quand $\\delta_t \\rightarrow 0$, ce taux d'accroissement tend vers la dérivée $r'(t_n)$. Dans l'expression ci-dessus, on peut isoler $r(t_{n+1})$ comme suit :\n    $$r(t_{n+1}) = \\delta_t f(r(t_n)) + r(t_{n}).$$\nÉtant donnée $r(t_0=0)=0$, on peut calculer la suite des $r(t_{n})$ avec l'expression ci-dessus jusque $t_N = T$, où $T$ est un paramètre choisi.    \n</p>\n<p>\n    <strong>À l'aide de la méthode décrite (méthode d'Euler explicite), écrire une fonction prenant en paramètre le milieu, l'angle theta, le temps $T$ et le pas $\\delta_t$ et qui retourne la liste des valeurs $r(t_n)$ jusqu'à $t = T$.</strong> (Pour le stests, on choisira $T=1$ et $\\delta_t = 0.1$.)\n</p>"}
︠33178eb2-bb74-48e9-bbb4-5ea630fd9351︠
︡352a9ad9-655e-43ae-b457-c741d7943c89︡
︠c0a027a1-d6b9-4c4f-a8da-ac6c8b0fa279︠
︡1031c091-291a-4180-a61b-e2d333b505c1︡
︠04fe6720-9b17-457c-b173-003640e75426i︠
%html
<p>
    On considère un émetteur placé sur le sol en coordonnée $(0,0)$. Il émet une onde qui va se propager dans toutes les directions $\theta \in [\pi,2\pi]$. Avec ce que nous avons développé jusqu'ici, le but est de représenter l'onde se propageant dans un milieu choisi.
</p>
<p>
    <strong> Écrire une fonction qui prend en argument un <em>milieu</em> et un temps $T$ de simulation, et qui renvoie une animation du front d'onde se propageant dans le milieu considéré (tester avec les différents milieux définis).</strong>
</p>
<p>
    <strong>Indication :</strong> Pour calculer la solution dans 'toutes' les directions $\theta$, considérer simplement $50$ valeurs de $\theta$ reparties équitablement dans l'intervalle $[\pi,2\pi]$.
</p>
︡8413be29-618d-4e7e-ae5e-ca237fa71643︡{"html":"<p>\n    On considère un émetteur placé sur le sol en coordonnée $(0,0)$. Il émet une onde qui va se propager dans toutes les directions $\\theta \\in [\\pi,2\\pi]$. Avec ce que nous avons développé jusqu'ici, le but est de représenter l'onde se propageant dans un milieu choisi.\n</p>\n<p>\n    <strong> Écrire une fonction qui prend en argument un <em>milieu</em> et un temps $T$ de simulation, et qui renvoie une animation du front d'onde se propageant dans le milieu considéré (tester avec les différents milieux définis).</strong>\n</p>\n<p>\n    <strong>Indication :</strong> Pour calculer la solution dans 'toutes' les directions $\\theta$, considérer simplement $50$ valeurs de $\\theta$ reparties équitablement dans l'intervalle $[\\pi,2\\pi]$.\n</p>\n"}︡
︠b6130b08-1b5d-43d7-99bf-5a83612ad245︠
︠544ccc2d-10c6-41c0-8d3f-b2bedb7e24c8︠
︠53170748-686c-40e3-a179-73051262c9d4︠
︠40867a13-1fab-4cc4-a235-c58d4a7c1dd2︠










