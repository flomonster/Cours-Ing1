---
title: "Programmation Lineaire 4"
author: [Siarry Patrick]
date: 2017-11-13
header-includes:
  - \usepackage{fourier}
...

# Rappels

* Cas standard $\rightarrow$ Demarrage a partir de l'Origine
* Cas non standard $\rightarrow$ 4 techniques de demarrage:
    1. Tentative de laisser de cote provisoirement les contraintes genantes
    2. Demarage a partir d'un sommet realisable et de base
    3. Methode des variables artificielles
    4. Methode du DUAL

# Methode du DUAL

Probleme lineaire ayant $n$ variables $x_i$ et $m$ contraintes. $\iff$
Probleme lineaire ayant $m$ variables $y_i$ et $n$ contraintes.

Il y a une inversion du nombre de contraintes et de variables. Il faut savoir
que ces problemes sont equivalent. Si on en resoud un alors on resoud l'autre.

Le probleme d'origine est dit **PRIMAL** le probleme de substitution est dit
**DUAL**.

## Exemple

* $3x_1 \leq 16$
* $x_1 + x_2 \leq 27$
* $2x_2 \leq 10$
* $x_1, x_2 \geq 0$

$MAX: z = 36 x_1 + 24x_2$

Test de l'Origine ?: $x_1 = x_2 = 0 \implies$ demarrage standard.

On creer les variables artificielles.

* $3x_1 + x_{\bar{1}} = 16$
* $x_1 + x_2 + x_{\bar{2}} = 27$
* $2x_2 + x_{\bar{3}} = 10$

$\rightarrow$ Demarage standard: $x_1 = x_2 = 0$

$\rightarrow$ Base initiale: 3 variables d'ecart

| $C_i$ | i | 1 | 2 | $\bar1$ | $\bar2$ | $\bar3$ | |
| ----- | - | - | - | - | - | - | - | - |
|   0   | $\bar1$  | \textcircled{3} | 0 | 1 | 0 | 0 | 16 |
|   0   | $\bar2$  | \fbox{1} | 1 | 0 | 1 | 0 | 27 |
|   0   | $\bar3$  | 0 | 2 | 0 | 0 | 1 | 10 |

| $C_j$      | 36 | 24 | 0 | 0 | 0 |   |
| ---------- | -- | -- | - | - | - | - |
| $\Delta_j$ | 36 | 24 | 0 | 0 | 0 | 0 |

Nouvelle iteration

| $C_i$ | i | 1 | 2 | $\bar1$ | $\bar2$ | $\bar3$ | |
| ----- | - | - | - | - | - | - | - | - |
|   36  | 1        | 1 | 0 | $\frac{1}{3}$ | 0 | 0 | $\frac{16}{3}$ |
|   0   | $\bar2$  | 0 | 1 | $-\frac{1}{3}$ | 1 | 0 | $\frac{65}{3}$ |
|   0   | $\bar3$  | 0 | 2 | 0 | 0 | 1 | 10 |

| $C_j$      | 36 | 24 | 0  | 0 | 0 |   |
| ---------- | -- | -- | -- | - | - | - |
| $\Delta_j$ | 0  | 24 | -12 | 0 | 0 | 192 |

* On a vien progresser ($z$ est plus grand).
* On a pas fini car une valeur de $\Delta_j$ n'est pas nul ou negative.

On refet une iteration...

| $C_i$ | i | 1 | 2 | $\bar1$ | $\bar2$ | $\bar3$ | |
| ----- | - | - | - | - | - | - | - | - |
|   36  | 1        | 1 | 0 | $\frac{1}{3}$  | 0 | 0 | $\frac{16}{3}$ |
|   0   | $\bar2$  | 0 | 0 | $-\frac{1}{3}$ | 1 | $-\frac{1}{2}$ | $\frac{50}{3}$ |
|   24  | 3        | 0 | 1 | 0              | 0 | $\frac{1}{2}$  | 5 |

| $C_j$      | 36 | 24 | 0   | 0 | 0   |   |
| ---------- | -- | -- | --- | - | --- | - |
| $\Delta_j$ | 0  |  0 | -12 | 0 | -12 | 312 |

* On a progresser.
* On est a l'optimum.

## Utilisation du DUAL

Regles de passage au DUAL:

* Primal:
    * 2 variable $x_1$ et $x_2$
    * 3 contraintes
* Dual:
    * 3 variables $y_1$, $y_2$, $y_3$
    * 2 contraintes

Regles:

1. Mettre le Primal sous la forme standrad de passage au Dual.

Toutes inegalites $\leq$ fonction objectif MAX.

2. Les coefficiants des contraintes du Dual se lisent sur les colonnes du Primal.

    * $3y-1 + y_2 + 0y_3 \geq 36$
    * $0y_1 + y_2 + 2 y_3 \geq 24$

3. Les contraintes du Dual sont $\geq$
4. Les seconds membres des contraintes du Dual sont les coefficients de la
fonction objectif z du primal.
5. Les coefficients de la fonction objectif w du Dual sont les seconds membres
des contraintes du Primal.

\begin{equation}
w = 16y_1 + 27 y_2 + 10 y_3
\end{equation}

6. La fonction objectif du Dual est a MINIMISER.

On a resolu dans le dernier exemple le Primal on a donc resolu le Dual.
On peut obtenir le tableau optimal du Dual directement a partir du tableau
optimal du Primal.

### Tableau optimal du DUAL

* $3y_1 + y_2 - y_{\bar1} = 36$
* $y_2 + 2y_3 - y_{\bar2} = 24$

$MAX: w' = -w = -16y_1 - 27y_2 - 10y_3

\danger L'algo du simplexe ne sait faire que des maximisation.

On a donc modifier la fonction $w$ par $w'$.


Quand on est a l'optimum du PRIMAL, on est aussi a l'optimum du DUAL, et on
a les relations suivantes:

* $x_i^* = - \Delta y_{\bar{i}}^*$
* $x_{\bar{i}}^* = - \Delta y_i^*$
* $\Delta x_i^* = - y_{\bar{i}}^*$
* $\Delta x_{\bar{i}}^* = - y_i^*$

Donc:

* $x_1^* = \frac{16}{3} \implies \Delta y_{\bar{1}}^* = -\frac{16}{3}$
* $x_{\bar{2}}^* = \frac{50}{3} \implies \Delta y_2^* = -\frac{50}{3}$
* $x_2^*=5 \implies \Delta y_{\bar{2}} = -5$
* $x_{\bar{3}}^* = 0 \implies \Delta y^*_3 = 0$
* $x_{\bar{1}}^* = 0 \implies \Delta y^*_1 = 0$

--------


| $C_i$ | i | 1 | 2 | 3 | $\bar1$ | $\bar2$ | |
| ----- | - | - | - | - | - | - | - | - |
|  -16  | 1 | 1 | 0 | 0 | 0 | 0 | 12 |
|  -10  | 3 | 0 | 0 | 1 | 0 | 0 | 12 |

| $C_j$      | -16 | -27 | -10 | 0 | 0   |   |
| ---------- | --- | --- | --- | - | --- | - |
| $\Delta_j$ | 0   |  $-\frac{50}{3}$ | 0 | $-\frac{16}{3}$ | -5  | 312 |
