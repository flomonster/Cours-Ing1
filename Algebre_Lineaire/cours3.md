---
title: "Algebre Lineaire 3"
author: [Amsallem Florian]
date: 2017-10-20
...

# Algebre Lineaire

* Numero: 3
* Prof: Regragui Mohamed
* Date: 20 Octobre 2017

## Execice 4

$\|X\|_p = \displaystyle(\sum_{i=1}^n |X_i|^p)^{\frac{1}{p}}, \forall X \in \mathbb{C}^n$

Montrer que $\lim_{X \to \infty}\|X\|_p = max |X_i|$

$\|X\|_p^p = \displaystyle\sum_{i=1}^n |X_i|^p$

Soit j $\in \{1, 2, \dots, n\} / |X_j| = max |X_i|, i \leq i \leq n$

$|X_j|^p \leq \displaystyle\sum_{i=1}^n |X_i|^p \leq n |X_j|^p\\$

*Majoration*:

$|X_j|^p \leq \displaystyle\sum_{i=1}^n |X_i|^p \leq n |X_J|^p\\$
$\implies |X_j| \leq \Big(\displaystyle\sum{i=1}^n |X_i|^p \Big)^{\frac{1}{p}}$
$\leq n^{\frac{1}{p}}|X_j| \underset{p \to +\infty}{\to} |X_J|$

D'apres le theoreme des gendarmes:

$\lim{p \to +\infty} \Big(\displaystyle\sum{i=1}^n |X_i|^p \Big)^\frac{1}{p}$
$= |X_j| = \underset{1 \leq i \leq n}{max}|X_i| \implies \lim{p \to +\infty} \|X\|_p$
$= max |X_i|$

**Notation**:

\begin{equation}
\|X\|_\infty = \underset{1 \leq i \leq n}{max|C_i|}
\end{equation}

## Normes vectorielles et matricielles

Norme vectorielle:

> Une norme vectorielle sur $\mathbb{R}^n$ ou $\mathbb{C}^n$ ont une application de
$\mathbb{R}^n$ ou $\mathbb{R}^n \to \mathbb{R}_+$  verifiant les proprietes:

1. $\|X\| \geq 0$ et si $\|X\| = 0 \iff X= \overrightarrow{O}$
1. $\forall \lambda \in \mathbb{R}$ ou $\mathbb{C}, \forall X \in \mathbb{C}^n \|\lambda X \|$
  $= \|\lambda\| \|X\|$ (demi lineaire)
1. $\forall (X, Y) \in (\mathbb{C}^n)^2, \|X+Y\| \leq \|X\| + \|Y\|$

*Exemple a completer.. :/*

--------------------

Norme matricielle:

> C'est une application $M_n(\mathbb{C}) \to \mathbb{R}_+$ verifiant:

1. $\|A\| \geq 0, si \|A\| = 0 \iff A = 0$ matricielle
1. $\forall \lambda \in \mathbb{C}, \forall A \in M_n(\mathbb{C}) \|\lambda A\| = \|\lambda\|\|A\|$
1. $\forall A, B \in M_n(\mathbb{C}), \|A+B\| \leq \|A\|+\|B\|$
1. $\forall A, B \in M_n(\mathbb{C}), \|A.B\| \leq \|A\|.\|B\|$

Exemples:

$\|A\|_2 = \underset{X \neq \overrightarrow{0}}{Sup}(\frac{\|AX\|_2}{\|X\|_2})\\$
$\|A\|_1 = \underset{X \neq \overrightarrow{0}}{Sup}(\frac{\|AX\|_1}{\|X\|_1})\\$
$\|A\|_\infty = \underset{X \neq \overrightarrow{0}}{Sup}(\frac{\|AX\|_\infty}{\|X\|_\infty})\\$
$\|A\| = \underset{X \neq \overrightarrow{0}}{Sup}(\frac{\|AX\|}{\|X\|})\\$

Norme sup:

> C'est le plus petit des majorants.

Rq: Si $A = I\\$
$\|I\| = \underset{X \neq \overrightarrow{0}}{Sup}(\frac{\|I_X\|}{\|X\|})$
$= \underset{X \neq \overrightarrow{0}}{Sup}(\frac{\|X\|}{\|X\|}) = 1$

On n'a pas toujours $\|I\| = 1$

Contre exemple: $\|A\|_S = (\displaystyle\sum_{i,j=1}^n |A_{ij}^2)^{\frac{1}{2}}$ Norme de Schur

$\|I\|_S = \underset{\forall n \geq 2}{\sqrt{n} \neq 1}$

---------------------------

Definition:

> Une **norme matricielle** et une **norme vectorielle** sont compatibles
  ssi $\|AX\| \leq \|A\|.\|X\|$

Exemple: Normes subordonnees $\|A\| = \underset{X \neq \overrightarrow{0}}{Sup}$
$(\frac{\|AX\|}{X})$

Proposition:

> $\forall A \in N_n(\mathbb{C})\\$
  $\|A\|_2 = \sqrt{\varphi(A^*A)}$

Rq: $A^*A$ est une matrice **hermitienne** et semi-definie positive

$(A^*A)^* = A^*(A^*)^* = A^*A$

Semi-definie positive $\iff (A^*AX, X) \geq 0 \forall X \in \mathbb{C}^n$

En effet: $(A^*AX,X) = (AX, (A^*)^*X) = (AX,AX) = \|AX\|^2 \geq 0$

$A^*A$ est demi-definie $\geq 0\\$
Ses valeurs propres sont $\geq 0$

Soient $\sigma_i^2$ les valeurs propres de $A^*A\\$
$\sigma_1^2 \geq \sigma_2^2 \geq \dots \ geq \sigma_n^2 \geq 0\\$
$A^*A$ est diagonalisable $\exists$ une base orthonormee de vecteurs propres $(V_1, \dots, V_n)$

$A^*A V_i = \sigma_i^2 V_i, \forall i = 1 \dots n$

### Demonstration de la proposition:

$\|A\|_2 = \underset{X \neq \overrightarrow{0}}{Sup}\Big(\frac{\|AX\|_2}{\|X\|_2\|}\Big)\\$
$\|AX\|_2^2 = (AX, AX) = (A^*AX, X) = \Big(A^*A\displaystyle\sum{i=1}^n (\alpha_i v_i),$
$\displaystyle\sum{j=1}^n (\alpha_j v_j)\Big)\\$
$=\Big( \displaystyle\sum_{i=1}^n (\alpha_i A^*A v_i), \sum_{j=1}^n (\alpha_j v_j)  \Big)$

$\|AX\|_2^2 = \Big( \displaystyle\sum{i=1}^n \alpha_i \sigma_i^2 v_i, \sum_{j=1}^n \alpha_j v_j \Big)$
$= \displaystyle\sum_{i=1}^n |\alpha_i|^2 \sigma_i^2 \leq \sigma_i^2 \sum_{i=1}^n |\alpha_i|^2$
$= \sigma_i^2 \|X\|_2^2$

$\forall X \neq \overrightarrow{0}. \frac{\|AX\|_2^2}{\|X\|_2^2} \leq \sigma_i^2$
$= \varphi(A^*A) \implies \frac{\|AX\|_2}{\|X\|_2} \leq \sqrt{\varphi(A^*A)},$
$\forall X \neq \overrightarrow{0}$

$\|A\|_2 \underset{X \neq \overrightarrow{0}}{Sup}\Big( \frac{\|AX\|_2}{\|X\|_2}  \Big)$

$\exists ? X_0 \in \mathbb{C}^n, \|X_0\|_2 = 1 / f(X_0) = M = \sqrt{\varphi(A^*A)}\\$
$\|AX\|_2^2 = (AX, AX) = (A^*AX, X)$

Si $X =V_1, \|Av_1\|_2^2 = (A^*Av_1, v_1) = (\sigma_i^2, v_1, v_i) =\\ \sigma_i^2 (v_1, v_i)$
$= i\sigma_i^2 = f(A^*A)=M^2$

**Conclusion**: $\|A\|_2 = \sqrt{\varphi(A^*A)}$

Rq: Si A est hermitienne: $A^*=A$

$\|A\|_2 = \sqrt{\varphi(A^2)} = \sqrt{\varphi^2(A)} = \varphi(A)$

## Exercice5 (A preparer pour le prochain cours)

Demontrer que $\|A\|_\infty = \underset{1 \leq i \leq n}{max} \displaystyle\sum_{j=1}^n |a_{ij}$
et $\|A\|_1 = \underset{1 \leq j \leq n}{max} \displaystyle\sum_{j=1}^n |a_{ij}\\\\$

$A =
  \begin{pmatrix}
   i & i + 1 & 3 \\
   -5 & 0 & 1 \\
   1 & 2 & 1
  \end{pmatrix}$
Calculer $\|A\|_\infty$ et $\|A\|_1$
