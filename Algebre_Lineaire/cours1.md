# Algebre Lineaire

Numero: 1
Prof: Regragui Mohamed
Date: 6 Octobre 2017

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

```
dX/dt = AX
```

Besoin de diagonaliser A.

## Reduction des matrices carrees

### Rappels des notations

Soit `Mm,n(K)` l'espace des matrices a `m` lignes et `n` colonnes a coefficients
dans `K` (`K` est Reel ou Complexe).

Si `m = n`, on note `Mn(K)` l'espace des matrices carrees.

Soit `A` @ `Mm,n(K)`
`A = (aij)` avec `1 <= i <= m` et `1 <= j <= n`

La **transposee** de `A`: `A = (aji)` (On inverse les coordonnees).

La matrice **adjointe** de `A`: `A*= A` (conjugue) (Uniquement lorsque l'on est
dans les complexes. On note `(a*ij) = aji (conjugue)`

#### Produit scalaire dans `R^n`.

C'est une forme bilineaire symetrique definie positive (`(x, x) >= 0`)
`X = (x1, ..., xn)`, `Y = (y1, ..., yn)`, le **produit scalaire**
Formule: ```(X, Y) = Somme(i: 1 a n, yi * xi)```

#### Produit scalaire dans `C^n`.
`X = (x1, ..., xn)`, `Y = (y1, ..., yn)`, le **produit scalaire**
Formule: ```(X, Y) = Somme(i: 1 a n, y*i * xi)``` (Rappel `y*i` est le conjugue)

C'est une forme **sesquilineaire**.
```
(x, y + z) = (x, y) + (x, z)
(x + y, y) = (x, z) + (y, z)
(ax, y) = a(x, z)
Si a @ C: (x, ay) = (au)*.x = Somme(i 1 a n: a*.y*i.xi) = ...
```

---------------------

Formule: ```Transpose(AB) = Transpose(B).Transpose(A)```
Formule: ```(AB)* = B*.A*```

#### Definitions

Soit `Q @ Mn(R)` **Matrice orthogonale** ssi:
```Transpose(Q).Q = Identite```
* Rq: Une matrice orthogonale conserve la norme:
  Si on prend un vecteur de `Q` alors `||Qx|| = ||x||`
  `||x|| = sqrt((x, x))`

Soit `A @ Mn(C)` **hermitienne** ssi `A*=A` dans les Reel cela signifie **symetrique**
* Exemple:
  Soit `u @ C^n (non nul et unitaire)`, `unitaire <=> ||u|| = 1`
  et on pose `H = In - 2uu*`
  H est une matrice **hermitienne** et unitaire (matrice d'Hauseholder)

#### Theoreme (Schur)
```
Pour tout A @ Mn(C), Il existe u unitaire tq
u*Au =  T (matrice triangulaire superieur)
```
Les elements diagonaux de `T` sont les **valeurs propres** de la matrice (`lambda_i`).
Chaque **valeur propre** a un **vecteur propre** associe.
```A.v_i = lambda_i.v_i)**

L'ensemble des valeurs propre de `A`  est le **spectre** de `A`.

* Def: le **rayon spectral** de `A` est le max de (`lambda_i`).

------------------

Ex1:

Soit `A @ Mn(Q)`

Montrer que `A` est **hermitienne** <=>  Il existe `u` unitaire tq
| u*Au = D |
| ----- |
| l1 | 0 | ... | 0 |
| 0 | l2 | ... | 0 |
| 0 | 0 | ... | ln |

Supposons A hermitienne A* = A
A @ Mn(C) => Il existe `u @ Mn(C)` (unitaire)
`u*Au = T` (T triangulaire superieur)
`t_ii = lambda_i` (`lambda_i` appartien au spectre de `A`)

```
T* = (u*Au)* = u*A*(u*)*
             = u*Au = T
T* = T (T* est triangulaire inferieur)
```

Donc `T` est **diagonale**. Et les valeurs propres sont reel.
On peut demontrer la reciproque.
