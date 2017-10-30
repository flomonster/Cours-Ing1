---
title: "Programmation Lineaire 2"
author: [Amsallem Florian]
date: 2017-10-30
...

# Programmation Lineaire

* Numero: 2
* Prof: Siarry Patrick
* Date: 30 Octobre 2017

## Exemple de l'algo du Simplexe

Soit le probleme suivant:

$x_1 + x_2 + x_3 \leq 1000\\$
$80x_1 + 95x_2 + 90x_3 \leq 90000\\$
$x_1 - x_2 - x_3 \leq 100\\$
$x_1, x_2, x_3 \geq 0$

\begin{equation}
MAX f = g = 10 x_1 + 8 x_2 + 7 x_3
\end{equation}

### 1^er^ Etape: Recherche du Sommet Initial

Il y a 2 cas:

* Le cas simple (cas standard)
* Non simple (on verra ca plus tard)

Test de decoupage (Test de l'origine)

$x_1 = x_2 = x_3 = 0 \implies$ contraintes satisfaites ?

Si **oui** cas simple. On demare l'algo a partir de l'origine.

### 2^eme^ Etape: Recherche du sommet optimal a partie du sommet origine

On introduit des **variables d'ecarts** en transformant les inegalites en egalite.

1. $x_1 + x_2 + x_3 + x_4 = 1000$ (On introduit $x_4$)
1. $80x_1 + 95x_2 + 90x_3 + x_5 = 90000\\$
1. $x_1 - x_2 - x_3 + x_6 = 100\\$

On a donc introduit $x_4, x_5, x_6$

-----------

Sommet initial $x_1 = x_2 = x_3 = 0\\$
Donc $x_4 = 1000, x_5 = 90000, x_6 = 100$

Une iteration du Simplexe $\iff$ deplacement le long d'une partie du Simplexe $\iff$
faire sortir une variable de la base et faire rentrer une variable dans la base.

Tableau initial:

| $C_i$ | i | 1 | 2 | 3 | 4 | 5 | 6 |   |
| ----- | - | - | - | - | - | - | - | - |
|   0   | 4 | 1 | 1 | 1 | 1 | 0 | 0 | 1000 |
|   0   | 5 | 80  | 95 | 90 | 0 | 1 | 0 | 90000 |
|   0   | 6 | **1** | -1 | -1 | 0 | 0 | 1 | 100 |

| $C_j$ | 10 | 8 | 7 | 0 | 0 | 0 |   |
| ----- | -- | - | - | - | - | - | - |
| $\Delta_j$ | 10 | 8 | 7 | 0 | 0 | 0 | 0 |

$z = 0$

$C_i$ est defini par:

$z = \displaystyle\sum_i c_i x_i$

Dans le demarage standard $\Delta_j = C_i$

L'algo est fini lorsque toutes les valeurs de $\Delta_j \leq 0$.

* Variable d'entree ?
Celle associee au plus grand $\Delta_j > 0$. Ici $x_1$.

* Variable de sortie ?
Celle associee au plus petit rapport $> 0$. Ici $x_6$.

Notre pivot est donc en position $(1, 6)$

\newpage

Nouvelle ligne du pivot

On divise tous les nombre par le pivot (qui vaut **1** ici).

| $C_i$ | i | 1 | 2 | 3 | 4 | 5 | 6 |   |
| ----- | - | - | - | - | - | - | - | - |
|  10   | 1 | **1** | -1 | -1 | 0 | 0 | 1 | 100 |

-------------

Nouvelle ligne de la variable $x_4$

| $C_i$ | i | 1 | 2 | 3 | 4 | 5 | 6 |   |
| ----- | - | - | - | - | - | - | - | - |
|   0   | 4 | 1 | 1 | 1 | 1 | 1 | 0 | 1000 |

On soustrait cette ligne par la ligne du pivot et on multiplie par le **terme encadre**.
Le terme encadre est positionne sur la ligne courante et la colonne du pivot.
Ici le terme encadre est $1$.

| $C_i$ | i | 1 | 2 | 3 | 4 | 5 | 6 |   |
| ----- | - | - | - | - | - | - | - | - |
|   0   | 4 | 0 | 2 | 2 | 1 | 1 | -1 | 900 |

-------------

Nouvelle ligne de la variable $x_5$

| $C_i$ | i | 1 | 2 | 3 | 4 | 5 | 6 |   |
| ----- | - | - | - | - | - | - | - | - |
|   0   | 5 | 80  | 95 | 90 | 0 | 1 | 0 | 90000 |

On soustrait cette ligne par la ligne du pivot et on multiplie par le **terme encadre**.

| $C_i$ | i | 1 | 2 | 3 | 4 | 5 | 6 |   |
| ----- | - | - | - | - | - | - | - | - |
|   0   | 5 | 0  | 175 | 170 | 0 | 1 | -80 | 8200 |

-------------

Nouvelle ligne de la variable $\Delta_j$

| | | |  |  | | | |
| ----- | -- | - | - | - | - | - | - |
| $\Delta_j$ | 10 | 8 | 7 | 0 | 0 | 0 | 0 |

On soustrait cette ligne par la ligne du pivot et on multiplie par le **terme encadre**.
Le dernier facteur est additionne.

| | | |  |  | | | |
| ----- | -- | - | - | - | - | - | - |
| $\Delta_j$ | 0 | 18 | 17 | 0 | 0 | 10 | 1000 |

-------------

Nouveau sommet: Obtenu a l'issue de la 1^er^ iteration

| $C_i$ | i | 1 | 2 | 3 | 4 | 5 | 6 |   |
| ----- | - | - | - | - | - | - | - | - |
|   0   | 4 | 0 | 2 | 2 | 1 | 0 | -1 | 900 |
|   0   | 5 | 0  | 175 | 170 | 0 | 1 | -80 | 82000 |
|   10  | 1 | 1 | -1 | -1 | 0 | 0 | 1 | 100 |

| $C_j$ | 10 | 8 | 7 | 0 | 0 | 0 |   |
| ----- | -- | - | - | - | - | - | - |
| $\Delta_j$ | 0 | 18 | 17 | 0 | 0 | -10 | 1000 |

$z = 1000$

On doit se poser 2 questions:

* Est ce qu'on a un meilleur sommer ?
  * Si non, alors on a fail...
* Est ce qu'on a le meilleur sommet ?
  * Oui si les valeurs $\Delta_j \leq 0$

Ici on a un meilleur sommet ($z=1000$), mais non avons pas le meilleur sommet
(il y a deux $\Delta_j$ positif).

-----------

\newpage

On continue. Le nouveau sommet obtenu a l'issue de la 2^eme^ iteration.
La ligne pivot est choisi par la ligne $\Delta_j$, on prend la valeur max.
Ici la variable numero 2.

| $C_i$ | i | 1 | 2 | 3 | 4 | 5 | 6 |   |
| ----- | - | - | - | - | - | - | - | - |
|   8   | 2 | 0 | 1 | 1 | 0.5 | 0 | -0.5 | 450 |
|   0   | 5 | 0  | 0 | -5 | -81.5 | 1 | 7.5 | 3250  |
|   10  | 1 | 1 | 0 | 0 | 0.5 | 0 | 0.5 | 550 |

| $C_j$ | 10 | 8 | 7 | 0 | 0 | 0 |   |
| ----- | -- | - | - | - | - | - | - |
| $\Delta_j$ | 0 | 0 | -1 | -9 | 0 | -1 | 9100 |


Ici on a fini car toutes les valeurs de $\Delta_j \leq 0$.

Les valeurs des variables sont:

* $x_1 = 550$
* $x_2 = 450$
* $x_3 = 3250$

Les variables $x_4, x_5, x_6$ sont des variables intermediaires. Elle permettent
de resoudre le probleme mais ne font pas parti du probleme.

Et $z = 9100$.

\newpage

## Demarage du Simplexe

1. Le Cas simple. Test de l'origine positif
On fait le *demarage standard* a partir de l'Origine.
1. Le Cas non standard. Test de l'origine negatif.

### Exemple de demarage

(PL):
\begin{equation}
x_1 \leq 40
\end{equation}
\begin{equation}
x_2 \leq 70
\end{equation}
\begin{equation}
x_1 + x_2 \leq 80
\end{equation}
\begin{equation}
x_1 + x_2 \geq 20
\end{equation}
\begin{equation}
x_1, x_2 \geq 0
\end{equation}
\begin{equation}
MAX z = 2x_1 + 3x_2
\end{equation}

Test de l'origine $x_1 = x_2 = 0$

Contraintes respectes ? $\rightarrow$ **NON**. Le test (5) n'est pas respecte.

On va tester de resoudre le sous probleme de PL en supprimant la contrainte genante.

(PL'):
\begin{equation}
x_1 \leq 40
\end{equation}
\begin{equation}
x_2 \leq 70
\end{equation}
\begin{equation}
x_1 + x_2 \leq 80
\end{equation}
\begin{equation}
x_1, x_2 \geq 0
\end{equation}
\begin{equation}
MAX z = 2x_1 + 3x_2
\end{equation}

On doit ensuite resoudre (PL') en utilisant le Simplexe.

Il y a deux cas:

* L'optimum du PL' respecte la contrainte genante $x_1 + x_2 \geq 20$.
* PL' ne respecte pas la contrainte genante.

Du coup la methode peut ne pas fonctionner.
Typiquement cette methode n'est tente que si le nombre de contraintes genantes
est de 1 ou 2.

Une deuxieme solution est de forcer le le demarage du Simplexe a partir de l'origine.
(qui est pourtant en dehors du domaine acceptable.

Une troisieme solution est trouver le probleme **DUAL** a partir du probleme **PRIMAL**.
Et la solution du probleme dual est aussi la solution du primal.
