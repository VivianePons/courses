︠3d0249c5-42bb-4fe4-9e65-e8dff88aafc9i︠
%html

<h2>
    Projet pluridisciplinaire TP1 : premiers pas avec Sage
</h2>

<h3>
    Cellules interactives
</h3>
<p>
    Ceci est un TP interactif utilisant le logiciel mathématique <a href="http://www.sagemath.org/">Sage</a>. Vous êtes sur un document mixte contenant à la fois du texte et des <strong>cellules</strong> de code Sage que vous pouvez <strong>modifier</strong> et <strong>exécuter</strong>.
</p>

<strong>
<ul>
    <li>Cliquez sur la cellule ci-dessous contenant une opération puis tapez sur les touches Maj+Entrée.</li>
    <li>Modifiez l'opération et exécutez de nouveau la cellule en tapant sur Maj+Entrée</li>
    <li>Cliquez sur la ligne horizontale sous la cellule. Une nouvelle cellule apparait, écrivez et exécutez une nouvelle opération.</li>
</ul>
</strong>
︡2d6f311a-db6c-44ae-a26d-7b4687a67529︡{"html":"\n<h2>\n    Projet pluridisciplinaire TP1 : premiers pas avec Sage\n</h2>\n\n<h3>\n    Cellules interactives\n</h3>\n<p>\n    Ceci est un TP interactif utilisant le logiciel mathématique <a href=\"http://www.sagemath.org/\">Sage</a>. Vous êtes sur un document mixte contenant à la fois du texte et des <strong>cellules</strong> de code Sage que vous pouvez <strong>modifier</strong> et <strong>exécuter</strong>.\n</p>\n\n<strong>\n<ul>\n    <li>Cliquez sur la cellule ci-dessous contenant une opération puis tapez sur les touches Maj+Entrée.</li>\n    <li>Modifiez l'opération et exécutez de nouveau la cellule en tapant sur Maj+Entrée</li>\n    <li>Cliquez sur la ligne horizontale sous la cellule. Une nouvelle cellule apparait, écrivez et exécutez une nouvelle opération.</li>\n</ul>\n</strong>\n"}︡
︠4ea1ce3a-67d0-4de1-8c2e-1807d9991144︠
26 + 2*7
︡d8b62ff3-d4f3-4f03-b4f3-8ce202b3a8e2︡
︠0d93013b-f9bb-4733-83c9-21955ee736d6︠
︠9315194c-55fc-452d-aeff-ae37528b808ci︠
%html
<p>
    Les cellules exécutent du code <strong>python</strong>, langage que nous allons découvrir petit à petit lors des séances. La cellule suivante utilise la commande <strong>print</strong>.
</p>

<strong>
<ul>
    <li>Exécutez la cellule</li>
    <li>Modifiez la chaine de caractère à afficher et exécutez à nouveau</li>
</ul>
</strong>

︡1440b80a-1a41-4052-a560-b6b863b7212c︡{"html":"<p>\n    Les cellules exécutent du code <strong>python</strong>, langage que nous allons découvrir petit à petit lors des séances. La cellule suivante utilise la commande <strong>print</strong>.\n</p>\n\n<strong>\n<ul>\n    <li>Exécutez la cellule</li>\n    <li>Modifiez la chaine de caractère à afficher et exécutez à nouveau</li>\n</ul>\n</strong>\n\n"}︡
︠1cfd84d8-b7c4-407b-be7d-3b78d1ad184e︠
print "hop"
︠5b686218-599e-421f-b0b9-3e0b91706f8c︠
︠cb506b0e-5439-400d-a416-84695dc3015ei︠
%html
<h3>
    Variables python
</h3>

<p><strong>
    Executez la cellule ci-dessous et observez le résultat.
    </strong>
</p>

︡8b9162dd-416a-4d5f-9d6b-65b8c8cf9c14︡︡{"done":true,"html":"<h3>\n    Variables python\n</h3>\n\n<p><strong>\n    Executez la cellule ci-dessous et observez le résultat.\n    </strong>\n</p>"}
︠fcdef2c3-ae51-4fbe-90ec-cc31b8437dda︠
ma_chaine = "Hop "
print ma_chaine + ma_chaine
︡f3756472-8455-45d0-906c-6dd78ddfc82c︡
︠da33c2ef-5583-43f9-9496-777a281d318ei︠
%html
<p><strong>
    Exécutez les 3 cellules suivantes puis à nouveau la deuxième cellule. Que remarquez-vous ?
    </strong>
</p>
︡3920d0a0-eaac-472f-8800-47ccd7ad27cb︡{"html":"<p><strong>\n    Exécutez les 3 cellules suivantes puis à nouveau la deuxième cellule. Que remarquez-vous ?\n    </strong>\n</p>\n"}︡
︠8ca92fc5-0667-4108-9a02-c1f4f40f2f07︠
a = "bla"
︡72ced43f-0856-489a-978a-c2e80c0b5c97︡︡{"done":true}
︠c1d73bcd-f5d1-4472-8a53-240ba9caf3f5︠
print a
︡9cc14b7f-c8fd-48a3-b555-bd9297962fc6︡
︠91ebe9c2-3c08-402e-bf29-dfa0bd9c2b5e︠
a = "blo"
︡067f9a22-9bd2-4e55-b075-6db0a5507a83︡︡{"done":true}
︠38ee13b0-eebb-4d12-9d32-8246d5d3b9c8︠
︡411a893f-557b-4316-92c8-3c21a2b2d596︡︡{"done":true}
︠08678548-4470-4b3b-85a0-e2ea9c9f33cbi︠
%html
<p>
    <strong>Remarque :</strong> contrairement au C++, on ne déclare pas <em>à priori</em> le type des variables python. Cependant, les variables sont bien typées : le typage se fait de façon <em>dynamique</em> à l'exécution du programme. Exécutez les cellules suivantes pour mettre en évidence ce phénomène.
</p>
︡a7a7e0b9-1fc2-4458-b539-d97a2de29f3f︡{"html":"<p>\n    <strong>Remarque :</strong> contrairement au C++, on ne déclare pas <em>à priori</em> le type des variables python. Cependant, les variables sont bien typées : le typage se fait de façon <em>dynamique</em> à l'exécution du programme. Exécutez les cellules suivantes pour mettre en évidence ce phénomène.\n</p>\n"}︡
︠b266c325-7cf4-4c8c-b186-121c7c40c421︠
a = "bla"
type(a)
︡09c9bd32-3cc0-4407-a502-5204df64869a︡
︠d1a78b48-7fa7-4b63-82bb-04dee002b2ae︠
a = 5
type(a)
︡2fc7c30f-8d5f-43ab-b902-2111cab7b7ab︡
︠bbb1996a-a77e-4bef-b1e5-40538de93f4e︠
a = 2.12
type(a)
︡1f158a28-3be5-4ea1-ae09-2c60e8c8e481︡
︠93f42f0d-7488-401c-b711-6a3c59efa3ffi︠
%html
<h3>
    Commençons à faire des maths...
</h3>
<p>
    Sage est un logiciel pour les mathématiques. Vous pouvez le voir comme une "grosse" calculatrice en plus avancé... On peut donc s'en servir pour faire du <strong>calcul formel</strong>, c'est-à-dire du calcul sur des objets mathématiques.
</p>

<p><strong>
    Exécutez les cellules suivantes.
    </strong>
</p>
︡2928838d-0451-436b-a9f6-53ac1a95a7e8︡{"html":"<h3>\n    Commençons à faire des maths...\n</h3>\n<p>\n    Sage est un logiciel pour les mathématiques. Vous pouvez le voir comme une \"grosse\" calculatrice en plus avancé... On peut donc s'en servir pour faire du <strong>calcul formel</strong>, c'est-à-dire du calcul sur des objets mathématiques.\n</p>\n\n<p><strong>\n    Exécutez les cellules suivantes.\n    </strong>\n</p>\n"}︡
︠6b4342ed-3c74-4786-b42b-2dbde1e4e598︠

︠30615d8d-7a73-4f26-be7f-ee1254659fe8︠
f(x) = x^2 
print f

︡e2158c98-564a-43eb-918b-9f5df8829d11︡
︠22799283-8c11-4fc8-93db-b2ada714684c︠
type(f)
︡f24c3480-2248-48eb-a264-75485207dd64︡
︠98fc49a3-1ac9-429d-8235-0a63e5fe0bb6i︠
%html
<p>
    L'objet <code>f</code> est une expression mathématique. Ce n'est pas une procédure de calcul mais bien <strong>un ensemble d'informations représentant un objet mathématique</strong>. En particulier, on peut effectuer diverses sortes d'opérations.
</p>
<p ><strong>
    Exécutez les cellules suivantes.
    </strong>
</p>
︡c0e7160a-47a5-4985-a74c-44fc1255b0f8︡{"html":"<p>\n    L'objet <code>f</code> est une expression mathématique. Ce n'est pas une procédure de calcul mais bien <strong>un ensemble d'informations représentant un objet mathématique</strong>. En particulier, on peut effectuer diverses sortes d'opérations.\n</p>\n<p ><strong>\n    Exécutez les cellules suivantes.\n    </strong>\n</p>\n"}︡
︠77294e03-70fe-4a75-b38e-e8d39e87505a︠
f.derivative(x)
︡5cfb593e-592a-41a3-8048-56f64e59cd7c︡
︠3e756431-5d98-4268-808a-5cac58bc4b45︠
f.integral(x)
︡accb23a4-e2d6-47cf-8957-761399498129︡
︠363afcc5-47fc-4c87-823c-488a6613cc7e︠
f(2)
︡e95960bd-b7b0-43c1-9412-97cdfbacc616︡
︠3c8c6130-7c6b-4397-84ce-1cc292e87015︠
f(2*x)
︡607e33e2-65eb-4911-9234-d8186ad21702︡
︠91d16e8e-901c-45ee-9d9c-b50cd1e50ad8︠

︠5745a8e8-c5a5-41cd-8f26-177a8e4093cf︠
2*f
︡f551dd6d-f351-44bd-bb41-cc0bca2668f1︡
︠f8787ee8-725e-4e8e-98bc-c3d768233f4b︠
plot(f)
︡6cf5f27d-d664-4b11-bb84-dbd1d2cd3590︡
︠14a53933-9141-434c-962e-05f7c67b98b0︠
plot(f, (x,-4,4))
︡891b2aeb-ebb9-40b6-9934-c1effdb2b71d︡
︠f0373fed-95d8-4c3c-b023-a1e11e97a9cfi︠
%html
<p>
    <strong>Remarque :</strong> dans ce programme, <code>f</code> est un <em>objet</em>, dans Sage la plupart des données sont représentées sont formes d'objets. Les fonctions <code>derivative</code> et <code>integral</code> sont appelées des <em>méthodes</em> de l'objet <code>f</code>. Pour connaître toutes les méthodes de l'objet <code>f</code>, tapez <code>f.</code> puis tabulation dans une cellule.    
</p>

︡0c3f1306-9439-4f01-9725-89c0e533d48f︡{"html":"<p>\n    <strong>Remarque :</strong> dans ce programme, <code>f</code> est un <em>objet</em>, dans Sage la plupart des données sont représentées sont formes d'objets. Les fonctions <code>derivative</code> et <code>integral</code> sont appelées des <em>méthodes</em> de l'objet <code>f</code>. Pour connaître toutes les méthodes de l'objet <code>f</code>, tapez <code>f.</code> puis tabulation dans une cellule.    \n</p>\n\n"}︡
︠2898be17-aff0-49e6-80b2-20e842861630︠
f.
︠83935add-250d-4700-b4f6-8248ad34b0fdi︠
%html
<p>
    Pour obtenir de l'aide et des exemple sur l'utilisation d'une méthode tapez : <code>f.methode?</code> ou bien <code>help(f.methode)</code>. <strong>Lisez la documentation de la méthode limite et calculez la limite de la fonction $1/x$ en 0.</strong>
</p>

︡0a278872-513d-40df-a608-b285ab8ba0f0︡{"html":"<p>\n    Pour obtenir de l'aide et des exemple sur l'utilisation d'une méthode tapez : <code>f.methode?</code> ou bien <code>help(f.methode)</code>. <strong>Lisez la documentation de la méthode limite et calculez la limite de la fonction $1/x$ en 0.</strong>\n</p>\n\n"}︡
︠5622737e-b6e8-4777-96d9-f785dd04f7da︠
f.limit?
︠c80d26fd-c7f6-4add-bc9e-a926c3ead787︠
help(f.limit)
︠ccb3282f-f0bd-4cef-bb07-9e536f54a6f2i︠
%html
<p>
    <strong>Remarque :</strong> dans l'exemple précédent, $x$ est aussi un objet Sage, c'est une <em>variable symbolique</em> au sens mathématique du terme. Ce n'est PAS la même chose qu'une variable python comme tout à l'heure pour <code>a</code> ! 
</p>
︡c8d1cf9a-d826-475e-8b59-936cb4f1dc8d︡{"html":"<p>\n    <strong>Remarque :</strong> dans l'exemple précédent, $x$ est aussi un objet Sage, c'est une <em>variable symbolique</em> au sens mathématique du terme. Ce n'est PAS la même chose qu'une variable python comme tout à l'heure pour <code>a</code> ! \n</p>\n"}︡
︠885a7136-3693-48ba-aa40-3b779c69840bi︠
%html
Sage est utilisé à la fois dans le monde de l'enseignement et de la recherche pour effectuer des calculs mathématiques avancés. Vous trouverez dans le livre en ligne <a href="http://sagebook.gforge.inria.fr/">Calcul mathématiques avec Sage</a> de nombreux exemples qui pourront vous aider ce semestre.
︡c3773d65-9b6f-4710-ab98-c3ced25e385a︡{"html":"Sage est utilisé à la fois dans le monde de l'enseignement et de la recherche pour effectuer des calculs mathématiques avancés. Vous trouverez dans le livre en ligne <a href=\"http://sagebook.gforge.inria.fr/\">Calcul mathématiques avec Sage</a> de nombreux exemples qui pourront vous aider ce semestre.\n"}︡
︠e910faeb-e30a-4148-850b-708b5c6dc775i︠
%md
**Définissez une fonction `g(x)` et calculez sa dérivée et son intégrale. Affichezla fonction à l'aide de *plot*.**
︡4beb2a63-5096-45bc-abca-ce696e81ac46︡︡{"done":true,"md":"**Définissez une fonction `g(x)` et calculez sa dérivée et son intégrale. Affichezla fonction à l'aide de *plot*.**"}
︠b6c3a096-11fa-4353-ab6c-6a5d31b5ac72i︠
%html
<p><strong>
    Définissez une fonction <code>g</code> contenant un polynôme en $x$, dessinez votre fonction avec <code>plot</code>. Calculez sa dérivée, et son intégrale et dessinez-les avec <code>plot</code>.</strong>
</p>
︡af5398c7-15ca-4faa-8863-4f9bedcb917f︡{"html":"<p><strong>\n    Définissez une fonction <code>g</code> contenant un polynôme en $x$, dessinez votre fonction avec <code>plot</code>. Calculez sa dérivée, et son intégrale et dessinez-les avec <code>plot</code>.</strong>\n</p>\n"}︡
︠2900d31e-7329-4696-b259-a2ed30fea6e9︠

︠9c3a602c-ad95-445a-8762-2ad55c0deff8︠

︠ab195844-56e4-4950-88e4-a6a1f16e51f7︠

︠9cea108e-728e-4622-b97e-03db8951bd9bi︠
%html
Il est possible d'afficher plusieurs fonctions en même temps. Regardez l'exemple suivant.
︡1a75049c-41cc-4dc0-964a-7cb3c46613f9︡{"html":"Il est possible d'afficher plusieurs fonctions en même temps. Regardez l'exemple suivant.\n"}︡
︠5200225c-7dc1-41ff-b99f-050e05a7f58a︠
plot(f) + plot(f.derivative(), color ="red")
︠d9ca51ab-fd27-4e50-a6cc-abf071c55d20i︠
%html
<p ><strong>
    Affichez ensemble votre fonction <code>g</code>, son intégrale et sa dérivée en utilisant des couleurs différentes.
</strong></p>
︡c30b482c-bad8-4f83-9fac-ca25126f3303︡{"html":"<p ><strong>\n    Affichez ensemble votre fonction <code>g</code>, son intégrale et sa dérivée en utilisant des couleurs différentes.\n</strong></p>\n"}︡
︠9ddb2727-0913-404e-822a-cce7b70d83ed︠

︠c5ebb888-4834-4f89-8f66-022566b1377ci︠
%html
<p><strong>
    La cellule suivante définit une fonction <code>h</code>, calculez la tangente de <code>h</code> en 0 et affichez ensemble la fonction et sa tangente.</strong>
</p>

︡e00e6608-b74b-449f-9234-b4cf57051777︡{"html":"<p><strong>\n    La cellule suivante définit une fonction <code>h</code>, calculez la tangente de <code>h</code> en 0 et affichez ensemble la fonction et sa tangente.</strong>\n</p>\n\n"}︡
︠d57dbc6e-4dc6-4ab9-bd9e-83ff9c5d35c2︠
h(x) = sin(x)*(x+1) + 2
plot(h,(x,-4,4))
︠cbdbeba8-ac03-49b7-b6ad-19db35ca2052︠

︠a95d8f5b-31af-42f5-9462-8eb46e5d50cf︠

︠a727ce4b-3cd2-4c09-9263-7b7ababf4f72i︠
%html
<h3>
    Encore plus de plot !
</h3>
<p>
    En plus des fonctions, il est possible d'afficher de nombreuses formes géométriques.
</p>
<p><strong>
    Exécutez les cellules suivantes en observant attentivement la syntaxe des fonctions.</strong>
</p>
︡396f3bc2-45f9-4a2b-94b9-bbcd6f19f443︡{"html":"<h3>\n    Encore plus de plot !\n</h3>\n<p>\n    En plus des fonctions, il est possible d'afficher de nombreuses formes géométriques.\n</p>\n<p><strong>\n    Exécutez les cellules suivantes en observant attentivement la syntaxe des fonctions.</strong>\n</p>\n"}︡
︠23779f70-9d35-4a09-bf18-4fbbf3cf8b70︠
point2d((3,4))
︠8f15bbad-e1e5-4410-875e-4b9a25f961b4︠
circle((0,0),1)
︠8fa4e3c2-482d-40e6-a8ea-39b874aca723︠
line2d([(0,0),(1,1),(2,0)])
︠a912484f-5737-4fca-8c04-94c4e2ae0f4e︠
polygon2d([(0,0),(1,0),(1,1),(0,1)])
︠fe4b96b7-6de3-4d87-b99d-313eb27290d0i︠
polygon2d([(0,0),(0,1),(1,1),(1,0)])

︠916f1c98-0225-413e-9e4b-a4f7eba9ad88i︠
%html
Dans le premier exemple, les coordonnées du point sont données par l'objet <code>(3,4)</code>, c'est ce qu'on appelle un <emph>tuple</emph>. Pour dessiner une ligne ou un polygone, on utilise une <strong>liste de points</strong> avec la syntaxe <code>[p1,p2,...]</code>. Nous verrons plus en détail ces structures dans la suite du cours.

<p><strong>
    Affichez un carré dont les coordonnées sont <code>(-1,-1),(1,-1),(1,1),(-1,1)</code></strong>
</p>
︡1e6b9c9b-2a8d-4df4-b3a3-a00ba43f8641︡{"html":"Dans le premier exemple, les coordonnées du point sont données par l'objet <code>(3,4)</code>, c'est ce qu'on appelle un <emph>tuple</emph>. Pour dessiner une ligne ou un polygone, on utilise une <strong>liste de points</strong> avec la syntaxe <code>[p1,p2,...]</code>. Nous verrons plus en détail ces structures dans la suite du cours.\n\n<p><strong>\n    Affichez un carré dont les coordonnées sont <code>(-1,-1),(1,-1),(1,1),(-1,1)</code></strong>\n</p>\n"}︡
︠ad9820ec-9ff0-477e-8dbd-6e87247d0d38︠
︠d7d89edb-d3b7-4b32-a8ab-9217eb4735d9︠
︠d8ef17a5-e478-4b3a-9441-e9605a4362c8i︠
%html
<p>
    Dans la cellule suivante, on définit 3 points.
</p>
<strong><ul>
    <li>Dessinez le triangle formé de ces trois points</li>
    <li>Changez la valeur des points et dessinez à nouveau le triangle</li>
    </ul></strong>

︡06b8fbb0-03fe-49a9-b22c-024f96a4e467︡{"html":"<p>\n    Dans la cellule suivante, on définit 3 points.\n</p>\n<strong><ul>\n    <li>Dessinez le triangle formé de ces trois points</li>\n    <li>Changez la valeur des points et dessinez à nouveau le triangle</li>\n    </ul></strong>\n\n"}︡
︠cf7d41fe-8209-41b5-93ec-c83f27864fe7︠
p1 = (-1,1)
p2 = (0,-1)
p3 = (1,0)

︡7ef7976e-370e-4242-8837-f4afbbc66708︡
︠8bf9fab3-89c1-48f6-9400-6efeb13376ce︠

︠676ba4b1-9719-4446-9bd3-0e94f3a60a85i︠
%html
<p><strong>
    Calculez les coordonées d'un hexagone régulier et tracez-le. Vous pouvez utiliser les fonctions <code>cos</code> et <code>sin</code> ainsi que la constante <code>pi</code>.
</strong></p>
︡ad58c476-aec7-4a0d-a459-7d73799178ce︡{"html":"<p><strong>\n    Calculez les coordonées d'un hexagone régulier et tracez-le. Vous pouvez utiliser les fonctions <code>cos</code> et <code>sin</code> ainsi que la constante <code>pi</code>.\n</strong></p>\n"}︡
︠1787fb5d-d882-4b34-9c9e-72edcfa82134︠

︠629316a7-617e-492e-87fb-880151ce9754︠

︠4a5b7600-c8b2-4193-89d5-fbb8d6b900d0i︠
%html
<p><strong>
    Tracez sur la même image un cercle rouge entourant l'hexagone.
    </strong>
</p>
︡02d87554-5a88-43e3-be9a-a1871f7f855b︡{"html":"<p><strong>\n    Tracez sur la même image un cercle rouge entourant l'hexagone.\n    </strong>\n</p>\n"}︡
︠9682cfcc-5bd2-45df-af35-c1d8276c6fc2︠

︠4a0fca63-5448-4143-8390-237fc9bbe720︠

︠8e778e7f-278c-46cb-ac0d-5e2dd111e314︠

︠eb6965ae-778e-49ba-a174-6f1e174223b7︠









