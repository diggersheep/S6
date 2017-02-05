#   II - Transformations géométriques

##  1 - Dans le plan

### 1 - Définitions

__*Définitions :*__ Une transformation __linéaire__ (et respectivement __affine__) d'un point 
$P\begin{pmatrix}
	x \\
	y \\
	\end{pmatrix}$ est une application de la forme :  
 
$$F(P_{2,1}) = T_{2,2}P_{2,1}\  ( et\ respectivement\  TP + V)$$


$$\begin{pmatrix}
	x' \\
	y' \\
	\end{pmatrix} = \begin{pmatrix}
	a & b \\
	c & d \\
\end{pmatrix} \begin{pmatrix}
	a \\
	y \\
\end{pmatrix} + \begin{pmatrix}
	e \\
	f \\
\end{pmatrix}$$

<!--
TODO
faire une accolade gauche multigligne
	x' = ax + by + e
	y' = cx + dy + f
-->

__ATTENTION:__ notation anglosaxone
$$\begin{pmatrix}
	x' & y' \\
\end{pmatrix} = \begin{pmatrix}
	x & y \\
\end{pmatrix} \begin{pmatrix}
	a & b \\
	c & d \\
\end{pmatrix} + \begin{pmatrix}
	e & f \\
\end{pmatrix}$$

### 2 - Composition de tranformations linéaires

$$(F \circ F)P =  F( G (P ) )$$
Respectivement, 
$$\begin{pmatrix}
	a' & b' \\
	c' & d' \\
\end{pmatrix} \begin{pmatrix}
	a & b \\
	c & d \\
\end{pmatrix} \begin{pmatrix}
	x \\
	y \\
\end{pmatrix}$$

$$P \underset{G}{\longrightarrow} P' \underset{F}{\longrightarrow} P"$$

Ce qui renvient à faire,
$$\begin{pmatrix}
	a'a  b'c & a'b + b'd \\
	c'a  d'c & c'b + d'd \\
\end{pmatrix}$$

La multiplication matricielle __n'est pas communtative__. Mais elle est assiciative: $(F \times G) \times H = F \times ( G \times H )$


### 3 - Invariance par tranformation affine

La transformation d'une droit $D = P + \lambda \overrightarrow{V}$  
\ \ $T(D) = T(P) + \lambda T( \overrightarrow{V} )$
avec $D'_{1} \parallel D'_{2}$.  
Par cette transformation, il y a __invariance__ du *parallélisme*.

> __preuve__ :  
> $T(I)$  
> $(P_{1}) + \lambda T( \overrightarrow{V_{1}} )$  
> $(P_{2}) + \lambda T( \overrightarrow{V_{2}} )$


### 4 - Transformation en 2D

#### a - Translation

$$P' \begin{pmatrix}
	x' \\
	y' \\
\end{pmatrix} = \begin{pmatrix}
	1 & 0 \\
	0 & 1 \\
\end{pmatrix} \begin{pmatrix}
	x \\
	y \\
\end{pmatrix} + \begin{pmatrix}
	dx \\
	dy \\
\end{pmatrix}$$

<!-- TODO : Image : translation-->

#### b - rotation p/r à l'otigine

Pour rappel, $\cos = \frac{adj}{hyp}$ et $\sin = \frac{opp}{hyp}$

$x = r \cos( \phi )$  
$y = r \sin( \phi )$
  
$x = r \cos(\theta + \phi) = r \cos(\theta) \cos(\phi) - r \sin(\theta) \sin(\phi) = x \cos(\theta) - y \sin(\theta)$  
$y' = r \sin(\theta + \phi) = r \cos(\theta)\sin(\phi) + r sin(\theta)\cos(\phi) = x \sin(\theta) + y \sin( \theta )$

__exemple :__

<!-- TODO : Image : rotation 1 -->
$$R\begin{pmatrix}
	\frac{\pi}{2} \\
\end{pmatrix} = \begin{pmatrix}
	0 & -1 \\
	1 & 0 \\
\end{pmatrix}$$

<!-- TODO : Image : rotation 2 -->
$$R\begin{pmatrix}
	\frac{\pi}{4} \\
\end{pmatrix} = \begin{pmatrix}
	\frac{\sqrt{2}}{2} & -\frac{\sqrt{2}}{2} \\
	\frac{\sqrt{2}}{2} & \frac{\sqrt{2}}{2} \\
\end{pmatrix}$$

__*propritété de la matrice de rotation :*__ le déterminant est toujours égal à 1

<!-- TODO : Image : exemple -->
$$ad - bc = \cos^{2}(\theta) + \sin^{2}(\theta) = 1$$

__Usages:__

- application de la ou des tranformations affines aux points d'un object
- transformation d'un repère


#### c - Symétrique

<!-- TODO : Image : sym axiale -->
<!-- TODO : Image : symétrie ponctuelle -->

* __symétrie axiale à O~y~ :__

> $x' = -x$
> $y' = y$

Ce qui revient à utiliser les matrices

$$\begin{pmatrix}
	-1 & 0 \\
	0 & 1 \\
\end{pmatrix} \begin{pmatrix}
	x \\
	y \\
\end{pmatrix}$$


* __symétrie ponctuelle à O :__

De la même manière nous avons
> $x' = -x$
> $y' = -y$

équivalent à

$$\begin{pmatrix}
	-1 & 0 \\
	0 & -1 \\
\end{pmatrix} \begin{pmatrix}
	x \\
	y \\
\end{pmatrix}$$


#### d - autre transformation
<!--
$\begin{pmatrix}
	a & b \\
	0 & c \\
\end{pmatrix}$ à observer sur
-->


## 5 - Coordonnées homogène dans le plan

__*définition*__: On appelle $X, Y$ les coordonnées affines homogènes d'un point dans le repère affine $\overrightarrow{ O_{ij} }$, et $W$ la coordonnée associé à $X$ et $Y$ lors de l'ajout de l'axe $z$, tel que :

* Si $W \ne 0$ alors $x = \frac{X}{W}$, $x = \frac{X}{W}$
* si $W = 0$ alors $M( X, Y, W)$ représente le vecteurs $\begin{pmatrix}
	X \\
	Y \\
\end{pmatrix} ont une direction$

> exemple de coordonnées homogènes aux coordonnées cartésiennes (3D $\rightarrow$ 2D):  
> $\begin{pmatrix}
	X \\
	Y \\
	W \\
\end{pmatrix} = \begin{pmatrix}
	4 \\
	2 \\
	1 \\
\end{pmatrix} \longrightarrow \begin{pmatrix}
	4 \\
	2 \\
\end{pmatrix}$  
> $\begin{pmatrix}
	X \\
	Y \\
	W \\
\end{pmatrix} = \begin{pmatrix}
	8 \\
	4 \\
	2 \\
\end{pmatrix} \longrightarrow \begin{pmatrix}
	4 \\
	2 \\
\end{pmatrix}$  
> $\begin{pmatrix}
	X \\
	Y \\
	W \\
\end{pmatrix} = \begin{pmatrix}
	12 \\
	6 \\
	3 \\
\end{pmatrix} \longrightarrow \begin{pmatrix}
	4 \\
	2 \\
\end{pmatrix}$  
  

> exemple de coordonnées cartésiennes aux coordonnées homogènes (2D $\rightarrow$ 3D):  

> Point $P\begin{pmatrix}
	5/2 \\
	8/3 \\
\end{pmatrix} \longrightarrow \begin{pmatrix}
	5/2 \\
	8/3 \\
	0 \\
\end{pmatrix}$

> Vecteur $\overrightarrow{V}\begin{pmatrix}
	1/2 \\
	3/2 \\
\end{pmatrix} \longrightarrow \begin{pmatrix}
	1/2 \\
	3/2 \\
	1 \\
\end{pmatrix}$

*a parte*  
coordonées homogènes dans l'espace, idem
$$\begin{pmatrix}
	X \\
	Y \\
	Z \\
	W \\
\end{pmatrix} \  \overrightarrow{si\  W \ne 0} \ \begin{pmatrix}
	X / W \\
	Y / W \\
	Z / W \\
\end{pmatrix}$$

