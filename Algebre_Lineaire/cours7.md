---
title: "Algebre Lineaire 7"
author: [Regragui Mohamed]
date: 2017-11-20
...

# Resolution numerique de systemes lineaures

On considere le systeme lineaire:

\begin{equation}
  \left\{
    \begin{aligned}
      & a_{11}x_1 + \dots + a_{1n}x_n = b_1 & \\
      & \vdots  & \iff A_x = b\\
      & a_{n1}x_1 + \dots + a_{nn}x_n = b_n &
    \end{aligned}
  \right.
\end{equation}

$A = (a_{ij})$ et $b = (b_i) = \begin{pmatrix} b_1 \\ \vdots \\ b_n\end{pmatrix}$

$X = \begin{pmatrix}x_1 \\ \vdots \\ x_n \end{pmatrix}$

* $X_{ii}$ inconnues
* $A$ est inversible

$X = A^{-1}b$ solution de (1)

## A est une matrice triangulaire superieur

$$
  \left\{
    \begin{aligned}
      & a_{11}x_1 + a_{12}x_2 + \dots + a_{1n}x_n = b_1 & \\
      & \ddots & \\
      & & a_{n-1 n-1}x_{n-1} + a_{n-1} x_n = b_{n-1}
    \end{aligned}
  \right.
$$

Algorithme de resolution:

\begin{equation}
x_n = \frac{b_n}{a_{nn}}
\left\{ \begin{aligned}
  & x_i = \frac{b_i - \displaystyle\sum^n_{j = i + 1} a_{ij} x_j}{a_{ij}} \\
  & i = n - 1, n -2, \dotsm, 1
\end{aligned}\right.
\end{equation}

\newpage
## Cas general

A est quelconque (non triangulaire).

On cherche une matrice $M$ inversible telle que $MA$ soit triangulaire superieur.

On resout donc:

$MAx = Mb$

# Methodes directes

## Algo de Gauss

La methode de Gauss transforme le systeme (1) $Ax = b$ en un systeme triangulaire
equivalent a l'aide d'un algo equivalent.

$A^{(1)} = A$, $A^{(1)} = (a_{ij}^{(1)}\\$
$b^{(1)} = (b_i^{(1)})$

Eventuellement apres permutation de lignes ou de colonnes de $A^{(1)}$.
On peut supposer que $a_{11}^{(1)} \neq 0$ (1^^er^^ pivot).

Pour $i = 2, \dots, n$ multipliant la 1^^ere^^ equation du systeme $A^{(1)}x=b^{(1)}$
par:

$g_{i1} = \frac{g_{i1}^{(1)}}{a_{11}^{(1)}}$ et retranchons l'equation obtenue
de la i^^eme^^ ligne.

$L_i \rightarrow L_i - g_{i1}L_1$, $i \geq 2$

On obtient un systeme $A^{(2)}x = b^{(2)}\\$
$A^{(2)} = (a_{ij}^{(2)}), b^{(2)} = (b_{i}^{(2)})$

$A^{(2)} =
\begin{pmatrix}
  a_{11}^{(1)} & \dots & \dots & a_{1n}^{(1)} \\
  0 & a_{22}^{(2)} & \dots & a_{2n}^{(1)} \\
  \vdots & \vdots &  & \vdots \\
  0 & a_{n2}^{(2)} & \dots & a_{nn}^{(2)}
\end{pmatrix}$


$$
\left\{ \begin{aligned}
  & a_{ij}^{(2)}  = a_{ij}^{(1)} & j = 1 \dots n \\
  & a_{i1}^{(2)}  = 0 & i = 2 \dots n \\
  & a_{ij}^{(2)}  = a_{ij}^{(1)} - g_{i1} a_{1j}^{(1)} & i = 2 \dots n \\
  & b_{1}^{(2)}  = b_{1}^{(1)} & j = 2 \dots n \\
  & b_{i}^{(2)}  = b_{i}^{(1)} - g_{i1} b_{i}^{(1)} & i = 2 \dots n \\
\end{aligned}\right.
$$

* $\tilde{A}^{(1)} = (A^{(1)} | b^{(1)})$ $b_i^{(1)} = a_{in+1}^{(1)}$
* $\tilde{A}^{(2)} = (A^{(2)} | b^{(2)})$ $b_i^{(2)} = a_{in+1}^{(2)}$

Plus generalement, la methode de Gauss consiste a construire une suite de systemes
$A^{(k)}x = b^{(k)}$

$\tilde{A}^{(k)} = (A^{(k)} | b^{(k)})$

On suppose que le k^^ieme^^ pivot $a_{kk}^{(k)} \neq 0$

$\tilde{A}^{(k)} =
\begin{pmatrix}
  a_{11}^{(1)} & a_{12}^{(1)} & \dots & \dots & \dots & a_{1n}^{(1)} & b_{1}^{(1)} \\
  0 & \ddots &  &   &   & \vdots & \vdots \\
  \vdots & \ddots & \ddots &   &   & \vdots & \vdots \\
  \vdots &   & 0 & a_{kk}^{(k)} & \dots & a_{kn}^{(k)} & b_{k}^{(k)} \\
  \vdots &   & \vdots & \vdots &   & \vdots & \vdots \\
  0 & \dots & 0 & a_{nk}^{(k)} & \dots & a_{nn}^{(k)} & b_{n}^{(k)} \\
\end{pmatrix}$

Pour $i = k + 1 \dots m$

On multiplie la k^^eme^^ ligne par $g_{ik} = a_{ik}^{(k)} / a_{kk}^{(k)}$ puis
on retranche le resultat de la i^^eme^^ ligne.

La nouvelle matrice $\tilde{A}^{(k + 1)}$ est:

$\left\{
  \begin{aligned}
    & a_{ij}^{(k + 1)} a_{ij}^{(k)} & i = 1 \dots k \\
    & a_{ij}^{(k + 1)} a_{ij}^{(k)} - g_{ik}a_{kj}^{(k)} & i = 1 \dots k /  j = k + 1 \dots m + 1
  \end{aligned}
\right.$

Les quatre coefficients sont nuls a la n^^eme^^ etape, $A^{(m)}$ est triangulaire.
