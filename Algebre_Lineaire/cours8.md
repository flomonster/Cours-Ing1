---
title: "Algebre Lineaire 8"
author: [Regragui Mohamed]
date: 2017-11-24
...

# Analyse matricelle de Gauss

$g_{ik} = \frac{a_{ik}^{(k)}}{a_{kk}^{(k)}}$ $\forall i = k + 1 \dots n$

Soit $G^{(k)} =
\begin{pmatrix}
  1 &\dots & 0 \\
  0 & \ddots & 0 \\
  0 & 1 & 0 \\
  0 & -g_{nk} & 1 \\
\end{pmatrix}$

$G^{(k)}.\tilde{A}^{(k)} = \tilde{A}^{(k + 1)}$


$\tilde{A}^{(n)} = G^{(n - 1)}. G^{(n - 2)}. \tilde{A}^{(n- 2)}$

[comment]: <> (Il manque quelques trucs)

## Remarque:

\begin{equation}
det A = det(L.U) \\
det A = det U = \displaystyle\pi^n_{k=1} a_{kk}^{(n)}
\end{equation}

**Gauss** est bien meilleur que la methode de **Cramer**

# Algo de CHOLESKY

Thm: Une matrice $A \in \mathcal{Mn}(\mathbb{R})$ est symetrique definie
positivement si et seulement s'il existe  une matrice L triangulaire
inferieure inversible telle que $A = L^tL$

$A$ est S.D.P

$^tA=A\\$
$(Ax, x) = ^txAx > 0$ (x est un vectuer)

$Ax = b\\$
$L^tLx=b \implies \left\{\begin{aligned}
  Ly = b \\
  ^tLx=y
\end{aligned}\right.$

## Construction de L

$L = (l{ij} = \begin{pmatrix} l_{11} & \dots & 0 \\ \vdots & \ddots & 0\\ l_{1n} & \dots & l_{nn}\end{pmatrix}$

$A=(a_{ij})\\$
$A=L^tL\\$
$a_{ij} = \displaystyle\sum_{k=1}^j l_{ik}l_{jk}$ avec $j \leq i$

$a_{11} = l^2_{11} \implies l_{11} = \sqrt{a_{11}}\\$
$a_{i1} = l_{i1}l_{11} \implies l_{i1} = \frac{a_{i1}}{l_{11}}$

Par recurrence supponsons connues les $(k - 1)$ premieres colonnes de L.

$a_{kk} \displaystyle\sum_{j=1}^k l^2_{kj}= l^2_{kk} + \sum_{j=1}^{k-1} l^2_{kj}$

\fbox{$l_{kk} = \sqrt{a_{kk} - \displaystyle\sum_{j=1}^{k-1}l^2_{kj}}$}

$a_{ik} = \displaystyle\sum_{i=1}^k l_{ij}l_{kl}\\$
$a_{ik} = l_{ik}l_{kk} + \displaystyle\sum_{j=1}^{k-1} l_{ij}l_{kj}\\$
\fbox{$l_{ik} = \frac{a_{ik} - \displaystyle\sum_{j=1}^{k-1} l_{ij}l_{kj}}{l_{kk}}$}

## Complexite

\fbox{$T_{CH} = \frac{2n^3 + 15n^2 + n}{6}$}
