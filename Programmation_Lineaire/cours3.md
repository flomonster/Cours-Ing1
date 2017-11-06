---
title: "Programmation Lineaire 3"
author: [Amsallem Florian]
date: 2017-11-06
...

# Programmation Lineaire

* Numero: 3
* Prof: Siarry Patrick
* Date: 06 Novembre 2017

## Trois autres techniques de demarage

### Numero 2

A partir d'un sommet quelcouque (realisable et de base).
On est amener a s'en server dans 2 cas:

1. Lorsque l'on ne peut pas demarer a partir de l'origine.
1. Le demarage a partir de l'origine possible mais on connait un meilleur sommet
par exemple donner par un expert. (Cela va reduire le nombre d'iteration).

#### Exemple

* $3x_1 + x_2 \leq 8$
* $x_1 + 2x_2 \leq 6$
* $3x_1 + 2x_2 \leq 9$
* $x_1, x_2 \geq 0$ (Toujours en PL).

$MAX z=x_1 + x_2$

Test de l'origine $\rightarrow x_1 = x_2 = 0$

Ici on pourrait faire le demarage standard. Mais on va commencer par un sommet
meilleur que l'origine.

* Origine: $x_1 = x_2 = 0 \rightarrow z = 0$
* Proposition: $x_1 = \frac{7}{3}, x_2 = 1$

Pour se servir du sommet propose, cette solution doit verifier **2 conditions**.

1. **ADMISSIBILItE** $\rightarrow$ Toutes les variables (de decision et d'ecart)
associe au sommet soient $\geq 0$
  * $3x_1 + x_2 + x_3 = 8$
    * $x_3 = 0 \rightarrow$ OK
  * $x_1 + 2x_2 + x_4 = 6$
    * $x_4 = \frac{5}{3} \rightarrow$ OK
  * $3x_1 + 2x_2 + x_5 = 9$
    * $x_5 = 0 \rightarrow$ OK

La solution proposee par le demarage est **admissible**.

21. **DE BASE** $\rightarrow (b_1)$ nombre de variables $> 0$ dois etre au moins
egal au nombre de contraintes
  * Ici $x_1, x_2, x_4 > 0$ Il y a trois variable et trois contraintes.

22. Une base est constitue de *n* variable seulement. (Avec n nombre de contraintes).

$B =
  \begin{pmatrix}
   3x_1 & x_2 & 0x_4 \\
   x_1 & 2x_2 & x_4 \\
   3x_1 & 2x_2 & 0x_4
  \end{pmatrix} =
  \begin{pmatrix}
   3 & 1 & 0 \\
   1 & 2 & 1 \\
   3 & 2 & 0
  \end{pmatrix}$

B est une base ssi $det(B) \neq 0$.

$det(B) = 0.(?) - 1.\begin{pmatrix} 3 & 1\\ 3 & 2\end{pmatrix} + 0.(?) = -3 \neq 0$

Donc B est une base. Et on peut se servir du sommet propose.

\begin{equation}
Ix_B + B^{-1}Nx_N = B^{-1}b
\end{equation}

* $x_b =$ vecteur de base $= \begin{pmatrix} x_1\\ x_2\\ x_4\end{pmatrix}\\$
* $x_N =$ vecteur des variables hors base.$\\$
* $B = \begin{pmatrix} 3 & 1 & 0\\ 1 & 2 & 1\\ 3 & 2& 0\end{pmatrix}\\\\$
* $N = \begin{pmatrix} 1 & 0\\ 0 & 0\\ 0 & 1\end{pmatrix} = \begin{pmatrix} x_3\\x_5\end{pmatrix}\\$

-------

* $B^{-1} = \frac{cof(B)^E}{det(B)}\\\\$
* $B^{-1} = \begin{pmatrix} \frac{2}{3} & 0 & -\frac{1}{3} \\
-1 & 0 & 1\\ \frac{4}{3} & 1 & -\frac{5}{3}\end{pmatrix}\\$
* $det(B) = -3\\$

--------

* $B^{-1}N = \begin{pmatrix} \frac{2}{3} & -\frac{1}{3}\\ -1 & 1
\\ \frac{4}{3} & -\frac{5}{3} \end{pmatrix}\\\\$
* $B^{-1}b = \begin{pmatrix}\frac{7}{3}\\ 1\\ \frac{5}{3}\end{pmatrix}$

$\begin{pmatrix} 1&0&0\\0&1&0\\0&0&1\end{pmatrix}\begin{pmatrix}x_1\\x_2\\x_3\end{pmatrix}$
$+\begin{pmatrix}\frac{2}{3} & -\frac{1}{3}\\ -1 & 1\\ \frac{4}{3} & -\frac{5}{3}\end{pmatrix}$
$\begin{pmatrix}1&0\\0&0\\0&1\end{pmatrix}x_N = \begin{pmatrix}\frac{7}{3}\\ 1\\ \frac{5}{3}\end{pmatrix}$


### Tableau initial

$\Delta_j = c_j - \displaystyle\sum_i c_i x_{ij}$

| $C_i$ | i | 1 | 2 | 3 | 4 | 5 |   |
| ----- | - | - | - | - | - | - | - |
|   1   | 1 | 1 | 0 | $\frac{2}{3}$ | 0 | $-\frac{1}{3}$ | $\frac{7}{3}$ |
|   1   | 2 | 0 | 1 | -1 | 0 | $\frac{1}{5}$ | 1 |
|   0   | 4 | 0 | 0 | $\frac{4}{3}$ | 1 | $-\frac{5}{3}$ | $\frac{5}{3}$ |

| $C_j$ | 1 | 1 | 0 | 0 | 0 |   |
| ----- | -- | - | - | - | - | - | - |
| $\Delta_j$ | 0 | 0 | $\frac{1}{3}$ | 0 | $-\frac{2}{3}$ | $\frac{10}{3}$ |

-------

* Est ce qu'on a l'optimum ?
* Si non:
  * Variable d'entree ?
  * Variable de suite ?
  * Pivot ?
  * Nouveau tableau

Ici nous n'avons pas atteint l'optimum il faut donc faire une iteration.

| $C_i$ | i | 1 | 2 | 3 | 4 | 5 |   |
| ----- | - | - | - | - | - | - | - |
|   1   | 1 | 1 | 0 | 0 | $-\frac{1}{2}$ | $\frac{1}{2}$ | $\frac{5}{6}$ |
|   1   | 2 | 0 | 1 | 0 | $\frac{3}{4}$ | $-\frac{1}{4}$ | $\frac{9}{4}$ |
|   0   | 3 | 0 | 0 | 1 | $\frac{3}{4}$ | $-\frac{5}{4}$ | $\frac{5}{4}$ |

| $C_j$ | 1 | 1 | 0 | 0 | 0 |   |
| ----- | -- | - | - | - | - | - | - |
| $\Delta_j$ | 0 | 0 | 0 | $-\frac{1}{4}$ | $-\frac{1}{4}$ | $\frac{15}{4}$ |

Progression:

> On a progresser car `z` est passe de $\frac{10}{3}$ a $\frac{15}{4}$

Verification:

> $x_1 + x_2 = \frac{3}{2} + \frac{9}{4} = \frac{15}{4} = z$ Donc c'est coherant.

Optimum atteint:

> Oui car $\Delta_j \leq 0$

### 3^^eme^^ technique de demarrage

Methode des **variables artificielles** (methode du grand M).
Lorsque l'origine n'est pas rrealisable.

#### Exemple

$MAX z = x_1 + 2x_2$

* $x_1 \leq 1$
* $x_1 + x_2 \geq 6$
* $-x_1 + x_2 = 3$
* $x_1, x_2 \geq 0$

Test de l'origine n'est pas bon.

On peu forcer le demarage a partir de l'Origine, et on prevalorise la fonction objectif,
pour forcer l'algo de retourner dans le domaine realisable.

On introduit une variable artificielle pour que les contrainte non respectee par l'origine
$\rightarrow x_{\bar{\bar{2}}}$ et $x_{\bar{\bar{3}}}$

Par ailleur une variable d'ecart pour chaque contrainte d'egalite $\rightarrow$
2 variables d'ecart $x_1$ et $x_2$

$x_1 + x_{\bar{1}} = 1\\$
$x_1 + x_2 - x_{\bar{2}} + x_{\bar{\bar{2}}} = 6\\$
$-x_1 + x_2 + x_{\bar{3}} = 3$

Donc:

* $x_{\bar{1}} = 1$
* $x_{\bar{\bar{2}}} = 6$
* $x_{\bar{\bar{\bar{3}}}} = 3$

On va penaliser les variables artificielles:

$z = x_1 + 2x_2 - Mx_{\bar{\bar{2}}} - Mx_{\bar{\bar{\bar{3}}}}$

M: Nombre positif et grand.

L'algo va donc s'efforcer d'annuler les variables artificielles.

Tableau initial:

| $C_i$ | i | 1 | 2 | $\bar1$ | $\bar2$ | $\bar{\bar2}$ | $\bar{\bar{\bar3}}$ |  |
| ----- | - | - | - | - | - | - | - | - |
|   0   | $\bar1$              | 1 | 0 | 1 | 0 | 0 | 0 | 1 |
|   -M  | $\bar{\bar2}$        | 1 | 1 | 0 | -1 | 1 | 0 | 6 |
|   -M  | $\bar{\bar{\bar3}}$  | -1 | 1 | 0 | 0 | 0 | 1 | 3 |

| $C_j$ | 1 | 2 | 0 | 0 | -M | -M  |
| ----- | -- | - | - | - | - | - | - | - |
| $\Delta_j$ | 1 | 2 + 2M | 0 | -M | 0 | 0 | -9M |

Il faut iterer le simmplexe:

| $C_i$ | i | 1 | 2 | $\bar1$ | $\bar2$ | $\bar{\bar2}$ | $\bar{\bar{\bar3}}$ |  |
| ----- | - | - | - | - | - | - | - | - |
|   0   | $\bar1$       | 1 | 0 | 1 | 0 | 0 | 0 | 1 |
|   -M  | $\bar{\bar2}$ | 2 | 0 | 0 | -1 | 1 | -1 | 3 |
|   2   | 2             | -1 | 1 | 0 | 0 | 0 | 1 | 3 |

| $C_j$ | 1 | 2 | 0 | 0 | -M | -M  |
| ----- | -- | - | - | - | - | - | - | - |
| $\Delta_j$ | 2M+3 | 0 | 0 | -M | 0 | -2M-2 | -3M + 6 |

Il encore iterer.

| $C_i$ | i | 1 | 2 | $\bar1$ | $\bar2$ | $\bar{\bar2}$ | $\bar{\bar{\bar3}}$ |  |
| ----- | - | - | - | - | - | - | - | - |
|   1   | 1             | 1 | 0 | 1 | 0 | 0 | 0 | 1 |
|   -M  | $\bar{\bar2}$ | 0 | 0 | -2 | -1 | 1 | -1 | 1 |
|   2   | 2             |  0 | 1 | 1 | 0 | 0 | 1 | 4 |

| $C_j$ | 1 | 2 | 0 | 0 | -M | -M  |
| ----- | -- | - | - | - | - | - | - | - |
| $\Delta_j$ | 0 | 0 | -2M-3 | -M | 0 | -2M-2 | 9 - M |

Nous avons fini car $\Delta_j \leq 0$

$z = x_1 + 2x_2 - Mx_{\bar{\bar2}} - Mx_{\bar{\bar{\bar3}}}$

Optimum attent mais 1 valeur artificielle est restee dans la base:

$x_{\bar{\bar2}} = 1 \implies$ Probleme insoluble.

L'algo ne s'en rend pas compte au depart mais on le voit au final.
