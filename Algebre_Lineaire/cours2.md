---
title: "Algebre Lineaire 2"
author: [Amsallem Florian]
date: 2017-10-13
...

# Algebre Lineaire

* Numero: 2
* Prof: Regragui Mohamed
* Date: 13 Octobre 2017

## Rappel

A est definie positive $\iff (Ax, x) > 0, \forall x \neq 0$

Rq: $A$ hermitienne $\iff$ A est Diagonalisable
$\exists U unitaire$

$U*AU=D
\iff AU=UD
\iff AU_j = \lambda_jU_j, \forall j = 1 \hdots n$

$D =
 \begin{pmatrix}
  \lambda_1 & 0  & 0 \\
   0 & \ddots  & 0 \\
   0 & 0 & \lambda_n
 \end{pmatrix}$

## Exercice 2

Soit $A \in Mu(\mathbb{C})$ definie positive $\iff$ ses valeurs propres:
$\lambda_i > 0 | \forall i = 1 \hdots n$

$A* = A (hermitienne)$

Supposons A definie positive: $(Ax, x) > 0 \forall x \neq 0$

D'apres l'ex1, $\exists U unitaire / U*AU = D, \forall i \in \mathbb{R}$

$D =
 \begin{pmatrix}
  \lambda_1 & 0  & 0 \\
   0 & \ddots  & 0 \\
   0 & 0 & \lambda_n
 \end{pmatrix}$


$(U1, \hdots, Un)$ est une base orthonormes de vecteur propres.

$(Ax, x) > 0$, En particulier $X = U_j$

$\forall x \neq 0, 0 < (AU_j, U_j) = (\lambda_j U_j, U_j) = \lambda_j (U_j, U_j)
 = \lambda_j \|U_j\|^2=\lambda_j \implies \lambda_j > 0, \forall j$

## Reciproque

Supposons $\lambda_j > 0, \forall j = 1 \hdots n$

Montrons que $(Ax, x) > 0 \forall x \neq 0$


$q(x) = (Ax, x)$ forme quadratique associee a A

$\forall x \neq 0, x = \displaystyle\sum_{i=1}^{n} \alpha_i U_i, \alpha_i \in \mathbb{C}$

$q(x) = (Ax, x) = (A\displaystyle\sum_{i=1}^{n} \alpha_i U_i,
\displaystyle\sum_{j=1}^{n} \alpha_j U_j)$

$q(x) = (\displaystyle\sum_{i=1}^{n} \alpha_i AU_i,
\displaystyle\sum_{j=1}^{n} \alpha_j U_j)$

$q(x) = (\displaystyle\sum_{i=1}^{n} \lambda_i \alpha_i U_i,
\displaystyle\sum_{j=1}^{n} \alpha_j U_j) =
\displaystyle\sum_{i,j=1}^{n} \alpha_i \lambda_i \bar{\alpha_j} (U_i, U_j)$

$q(x) = \displaystyle\sum_{i=1}^{n} \alpha_i \lambda_i \bar{\alpha_i} =
\displaystyle\sum_{i=1}^{n} \alpha_i |\alpha_i|^2 > 0$ (Car $\alpha_i > 0$  et $X \neq 0$)

Rq: Si $A \in Mn(\mathbb{R}$ **symetrique** a valeurs propres reelles).

$A > 0 \iff \lambda_i > 0, \forall i$

$\lambda_i \in Sp(A)$ Spectre de A

## Exercice 3

Soit $A \in Mn(\mathbb{C})$ une matrice normale:
$AA* = A*A$ (Elle commute avec ca matrice adjointe)

Montrer qu'il existe une matrice unitaire $U / U*AU = D$ (Avec D matrice diagonale)

D'apres le th de Schur: $\exists$ une matrice unitaire U telle que:

$U*AU = T =
  \begin{pmatrix}
   ? & \hdots  & ? \\
   0 & \ddots  & ? \\
   0 & 0 & ?
  \end{pmatrix}$

$TT* = U*A, UU* A*U = U* AA* U$

$T*.T = U*A*UU*AU = U*A*AU = U*AA*U = TT*$

Donc T est normale

$TT* = T*T \implies (TT*)_ij = (T*T)_ij \implies
\displaystyle\sum_{k=1}^{n} t_{ik} \bar{t}_{jk} =
\displaystyle\sum_{k=1}^{n} \bar{t}_{ki} t_{kj}$

Si $i = j$ alors:

$\displaystyle\sum_{k=i}^n |t_{ik}|^2 = \displaystyle\sum_{k=1}^i |t_{ki}|^2$

* $i=1$ (1^er^ ligne)

$\begin{aligned}
         &|t_{11}|^2 + |t_{12}|^2+\hdots+|t_{1n}|^2=|t_{11}|^2\\
\implies &|t_{12}|^2+ \hdots + |t_{1n}|^2=0
\end{aligned}$

* $i=2$ (2^eme^ ligne)

$\begin{aligned}
        & |t_{22}|^2 + |t_{23}|^2+\hdots+|t_{2n}|^2=|t_{12}|^2 + |t_{12}|^2\\
\implies& |t_{23}|^2+ \hdots + |t_{2n}|^2=0\\
\implies& t_{23} = t_{24} = \hdots = t_{24} = 0
\end{aligned}$

On peut continuer, on va donc faire un raisonnement par recurence.

Par recurence, supposons que pour $1 \leq l \leq i, t_{lj} = 0, \forall j \geq l + 1$

Montrons que cette propriete est vraie pour la ligne $i+1$.

si $i = j
\\\displaystyle\sum_{k=i}^n$

$t_{1i+1} = t_{1i+1} = \hdots = t_{ii+1} = 0$

Hyp de recurence $\implies |t_{i+1 i+2}|^2 + \hdots + |t_{i+n}|^2 = 0
\implies t_{i+1j}=0 \\ \forall j /geq i + 2$
$\\\\$
Donc $T=D
  \begin{pmatrix}
   ? & 0 & \hdots  & 0 \\
   0 & ? & \hdots  & 0 \\
   \vdots & \vdots & \ddots  & \vdots \\
   0 & 0 & \hdots & ?
  \end{pmatrix}$
