<!--Premier cours-->

# Géométrie pour la 3D

>Se donner des outils pour résoudre des problèmes géométriques.  
> Concevoir des algorithmes __efficaces__ et __robustes__ :
>
> * Complexité
> * Précision numérique
> * Strucure et certification

#   I - Polygone et Polyèdre

##  1 - Polygone (2D)

### a - Définition

__*définition :*__

> Soient P~0~, P~1~, ..., P~n+1~, une suite de points ordonnés et cyclique (P~n~=P~0~).  
> Soient E~0~ = P~0~P~1~, ..., E~i~=P~i~P~i+1~, ..., E~n-1~=E~n-1~E~0~ et E l'ensemble ordonné des segments fermés, incluant des points d'extrémité.
> Les segments définissent un polygone *P*.
>
> Si et seulement si,
>
> * L'intersection de deux segments adjacents est un point :
$$E~i~\cap E~i-1~=P~i+1~, i=0 \to n-1$$
>
> * L'intersection de deux segments non adjacents est vide :
$$E~i~ \cap E~j~ = \varnothing, i \ne i+1$$
> *Pour la suite, un __polygone__ est un bord de la région. *  



__*Orientation :*__ On prendra le sens trigonométrique dans ce cours.

> __*Propriété :*__
>
> * __*Théorème de Jordan :*__ Une courbe fermée simple divise le plan en deux régions, ou en deux composantes, son intérieur et sont extérieur.
>
> * **Concavité:**
>
>		* __concave :__ Ange intérieur inférieur à pi rad(180 deg)
>		* __convexe :__ tout ce qui n'est pas concave

![Polygone concave](./res/concave.png)




### b - Localisation d'un point dpar rapport à un polygone

1. __Méthode des angles__

![Localisation d'un point par les anges](./res/polygone_loc_angle1.png)

* La somme des angles est égale à 360 si le point est à l'intérieur du polygone
* La somme des angles est égale à 0 si le point est à l'extérieur




2. __Méthode de l'index__

> __Théorème__ :
Soit un polygone et D une droite ne passant ni par un sommet ni par un arrête. Alors la droite D coupe P en un nombre de point pair, Q~1~, ..., Q~n-1~, tous distincts


![Localisation d'un point par index](./res/polygone_loc_index.png)

> __Définition :__
Soit $M(x,y) \in \mathbb{R}^2, \notin P$
On appelle __index__ de M par apport à P. Selon une demi-droite $\Delta$ issue de M et passant par P

> __Théorème :__ La parité de $I~p(M)$ ne dépends pas du choix de la demi-droite $\Delta$ :

> * $M$ est à l'intérieur de $P$ si $I~P~(M)[2] \equiv 1$
> * $M$ est à l'extérieur de $P$ si $I~P~(M)[2] \equiv 0$
> * __Cas d'exception :__   
>		* comptage de __1__ si le point $B$ est au __`dessus`__ de $\Delta$
>		* comptage de __0__ si le point $B$ est au __`dessous`__ de $\Delta$
>		* comptage de __0__ si le point $B$ est __`sur`__ $\Delta$

![Exception de la méthode par l'index](./res/polygone_loc_index_exceptions.png)



### c - Algorithme de localisation par test de parité

> Soit un point $M$ qui n'est pas sur le polygone $P$, $\Delta$ une demi-droite horizontale issue de M vers $P$.
>
> * __Initialisation__: $0 \rightarrow I$
> * __Pour tout,__ coté $C$ du polygone $P$
>     - __faire :__ calculer $card(C \cap \Delta)$
>     - __répéter :__ $I = I + card(C \cap \Delta)$
> * __Si__ $I$ est __*impair*__ alors $M \in P$, sinon $M \notin P$
> 
> 
> 
> 



##  2 - Polygone (3D)

__Théorème de Jordan :__  
Le complémentaire dans $\mathbb{R}^3$ d'un polyèdre à deux composantes connexes, l'une bornée (*intérieur*) et l'autre infini (*extérieur*).

__Définition :__
Un polyèdre est un ensemble de polygones P~1~, ..., P~f~ de $\mathbb{R}^3$ tel que

> __*1.*__ La condition géométrique est $int(P~i~) \cap int(P~j~), i\ne j$ (*nb:* $int(P~i~)$ est une face)

> __*2.*__ Conditions topologique :
		
> * Toute arrête de polygone P~i~ appartientà exactement deux polygones adjacents.
> * Tout sommet de tout polygone P~i~ appartient à au moins deux polygones



### a - Localisation d'un point dpar rapport à un polygone

1. Méthode des angles

> Si un point est dans le polyèdre, la somme des angles est égale à 0

2. Méthode de l'index

> *Idem* que pour les polygones *2D*



### b - Représentation du polyèdre

les polyèdres sont représentés par les faces, ces faces sont représentées par les somets et arrêtes.

> $F~1~ = (S~1~, ..., S~j~)$, ...,  $F~i~ = ...$

> $E = { E~1~(S~1~S~2~), ..., E~n~(S~n-1S~0~) }$



