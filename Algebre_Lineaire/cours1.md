---
title: "Algebre Lineaire 1"
author: [Amsallem Florian]
date: 2017-10-06
...

# Algebre Lineaire

* Numero: 1
* Prof: Regragui Mohamed
* Date: 6 Octobre 2017

## Programme

* Algebre Lineaire
  * Reduction des matrices carrees
    * Rappels des notations
    * Trigonalisation
    * Normes matricielles
    * Diagonalisation
  * Resolution numerique des systemes lineaire (`Ax=b`)
    * Methodes directes
      * Algo de *Gauss*
      * Algo de *Cholesky*
    * Methodes iteratives (`A=M-N`, Pour des systemes tres grand)
      * Algo de Jocohi
      * Algo de Gauss Seidel
      * Algo de relaxation successive

### Application (Systemes differentiels)

$\frac{dX}{dt} = AX$

Besoin de diagonaliser A.

## Reduction des matrices carrees

### Rappels des notations

Soit $M_{m,n}(\mathbb{K})$ l'espace des matrices a `m` lignes et `n` colonnes a coefficients
dans $\mathbb{K} \equiv \mathbb{R}$ ou $\mathbb{C}$.

Si $m = n$, on note $M_n(\mathbb{K})$ l'espace des matrices carrees.

Soit $A \in M_{m,n}(\mathbb{K})$

$A = (a_{ij})$ avec $1 \leq i \leq m$ et $1 \leq j \leq n$

La **transposee** de A: $A = (a_{ji})$ (On inverse les coordonnees).

La matrice **adjointe** de A: $A^* = {}^t \! \bar{A}$

C'est la matrice **transposee** de la matrice **conjuguee** de M.
M qui est a coefficients **complexes**.

On note donc $(a^*_{ij}) = \bar{a}_{ji}$

#### Produit scalaire dans $\mathbb{R}^n$.

C'est une forme bilineaire symetrique definie positive ($(X, Y) \geq 0$).

$X = (x_1, \hdots, x_n)$, $Y = (y_1, \hdots, y_n)$, le **produit scalaire**
Formule:

$(X, Y) = \displaystyle\sum_{i=1}^n y_i \times x_i$

#### Produit scalaire dans $\mathbb{C}^n$.
$X = (x_1, \hdots, x_n)$, $Y = (y_1, \hdots, y_n)$, le **produit scalaire**

Formule: $(X, Y) = \displaystyle\sum_{i=1}^n y^*_i \times x_i$

(Rappel $y^*_i$ est l'adjoint)

C'est une forme **sesquilineaire**.

$(x, y + z) = (x, y) + (x, z)
\\(x + y, z) = (x, z) + (y, z)
\\(ax, y) = a(x, z)$

Si $a \in \mathbb{C}: (x, ay) = (au)^*.x = \displaystyle\sum_{i=1}^n a^* \times y^*_i \times x_i = \hdots$

---------------------

Formule: $(A.B)^T = B^T.A^T$
Formule: $(A.B)^* = B^*. A^*$

#### Definitions

Soit $Q \in M_n(\mathbb{R})$ **Matrice orthogonale** ssi:

$Q^T.Q = I$, I est la matrice **identite**.

* Rq: Une matrice orthogonale conserve la norme:
  Si on prend un vecteur de Q alors
  $\begin{aligned}\\
           & \|Qx\| = \|x\|\\
  \implies & \|x\| = \sqrt{(x, x)}
  \end{aligned}$

--------------------

Soit $A \in M_n(\mathbb{C})$ **hermitienne** ssi $A*=A$ dans les Reel cela signifie **symetrique**

* Exemple:
  Soit $u \in \mathbb{C}^n$ (non nul et unitaire), $unitaire \iff \|u\| = 1$
  et on pose $H = I_n - 2uu*$
  H est une matrice **hermitienne** et unitaire (matrice d'Hauseholder)

#### Theoreme (Schur)

$\forall A \in M_n(\mathbb{C}), \exists u$ unitaire tq
$\\u*Au =  T$ (matrice triangulaire superieur)

Les elements diagonaux de `T` sont les **valeurs propres** de la matrice ($\lambda_i$).
Chaque **valeur propre** a un **vecteur propre** associe.

$A.v_i = \lambda_i.v_i$

L'ensemble des valeurs propre de `A`  est le **spectre** de `A`.

* Def: le **rayon spectral** de `A` est le max de ($\lambda_i$).

------------------

Ex1:

Soit $A \in M_n(\mathbb{Q})$

Montrer que `A` est **hermitienne** $\iff$  $\exists$ `u` unitaire tq
$u*Au = D =\\
\begin{pmatrix}
  \lambda_{1} & 0 & \cdots & 0 \\
  0 & \lambda_{2} & \cdots & 0 \\
  \vdots  & \vdots  & \ddots & \vdots  \\
  0 & 0 & \cdots & \lambda_{n}
 \end{pmatrix}$

Supposons A hermitienne $A^* = A
\\A \in M_n(\mathbb{C}), \exists u \in M_n(\mathbb{C})$ (unitaire)

$u*Au = T$ (T triangulaire superieur)

$t_ii = \lambda_i$ ($lambda_i$ appartien au spectre de A)


$T^* = (u*Au)* = u*A*(u*)* = u*Au = T
T^* = T$ ($T^*$ est triangulaire inferieur)

Donc `T` est **diagonale**. Et les valeurs propres sont reel.
On peut demontrer la reciproque.
