---
title: "Algebre Lineaire 4"
author: [Amsallem Florian]
date: 2017-11-03
...

# Algebre Lineaire

* Numero: 4
* Prof: Regragui Mohamed
* Date: 03 Novembre 2017

## Exercice 5

Montrer que $\|A\|_1 = \underset{1 \leq j \leq n}{max} \displaystyle\sum_{i=1}^n |a_{ij}$

$\|A\|_\infty = \underset{1 \leq j \leq n}{max} \displaystyle\sum_{i=1}^n |a_{ij}$

$\|A\|_1 = \underset{X \neq \bar{0}}{Sup}\Big(\frac{\|A_X\|_1}{\|X\|_1}\Big)$

$\forall A \in Mn(\mathbb{C})\\$
$\|A_X\|_1 = \displaystyle\sum_{i=1}^n |(A_X)_i| = \sum_{i=1}^n | \sum_{j=1}^n a_{ij}X_j |$
$\leq \displaystyle\sum_{i=1}^n\sum_{j=1}^n |a_{ij}| |X_j|$
$\leq \displaystyle\sum_{j=1}^n\Big(|X_j| \sum_{i=1}^n |a_{ij}\Big)\\$
$\|A_X\| \leq \Big(\underset{i \leq j \leq n}{max} \sum_{a_{ij}}^n |a_ij|\Big)$
$\displaystyle\sum_{j=1}^n |K_j|$

$\|A_X\|_1 \leq \Big(\underset{1 \leq j \leq n}{max} \displaystyle\sum_{i=1}^n |a_{ij}|\Big) \|X\|_1$

Donc:

$\|A_x\|_1 \leq \underset{1 \leq j \leq n}{max} \displaystyle\sum_{i=1}^n |a_{ij} = M\\$
$\forall X \neq \bar{0}$

$f(x) = \frac{\|A_X\|_1}{\|X\|_1} \leq M$

$\exists X_0 \in \mathbb{C}^n, \|K_0\|_1 = 1 / f(M_0) = M$


Soit $k \in \{1, \dots, n\} / M = \displaystyle\sum_{i=1}^n |a_{ik}|\\$
Soit $X_0 \in \mathbb{C}^n / X_{0j} = 0 \forall j \neq j, 1$ otherwise

$f(X_0) = \|AX_0\|_1 = \displaystyle\sum_{i=1}^n | \sum_{j=1}^n a_{ij}X_{0j} |$
$= \displaystyle\sum_{i=1}^n | a_{ik} | = M$

Donc $\underset{X \neq \bar{0}}{Sup} ( \frac{\|A_X\|_1}{\|X\|_1} = M$
$\displaystyle\sum_{i=1}^n |a_{ik}| = \underset{j}{max} \sum_{i=1}^n |a_{ij}|$

### Exemple

$A =
  \begin{pmatrix}
   -3 & i & -5 \\
   1 & 0 & 3 \\
   1 & 1 & -i
  \end{pmatrix} \in M_3(\mathbb{C})$

$\|A\|_1 = \underset{1 \leq j \leq n}{max} \displaystyle\sum_{i=1}^n |a_{ij}|$

* $j=1$ (1^^er^^ colonne): $|-3| + |1| + |1| = 5$
* $j=2$ (2^^eme^^ colonne): $|i| + |0| + |1| = 2$
* $j=3$ (3^^eme^^ colonne): $|-5| + |3| + |-i| = 9$

Donc $\|A\|_1 = 9 (k = 3)$

#### 2^^eme^^ partie

$\|A\|_\infty = \underset{X \neq \bar{0}}{Sup}\Big(\frac{\|AX\|_\infty}{\|X\|_\infty}\Big)$

$\|AX\|_\infty = \underset{ 1 \leq j \leq n}{max} | (A_X)_i| = \underset{1 \leq i \leq n}{max}$
$| \displaystyle\sum_{j=1}^n a_{ij}X_j| \leq \underset{1 \leq i \leq j}{max}$
$\Big(\displaystyle\sum_{j=1}^n |a_{ij}| |X_j|\Big)$
$\leq \|X\|_\infty \underset{i}{max}\displaystyle\sum_{j=1}^n |a_{ij}|$

Soit $l \in \{1, \dots, n\} / M = \displaystyle\sum_{j=1}^n |a_{lj}|$

$\|A_X\|_\infty = \underset{1 \leq i \leq n}{max} | \displaystyle\sum_{j=1}^n a_{ij}X_j|$

$\exists X_0 \in \mathbb{C}^n, \|X_0\|_\infty = 1 / f(X_0) = \|AX_0\|_\infty = M$

$X_{0j} = 1 si a_{ij} = 0, \frac{\|a_{lj}\|}{\|X\|} si a_{ij} \neq 0$

$\forall i \neq l\\$
$|\displaystyle\sum_{j=1}^n a_{ij}X_{0j}| \leq \sum_{j=1}^n|a_{ij}||X_{0j}| \leq 1$
$\leq \underset{i}{max} \displaystyle\sum_{j=1}^n |a_{ij}| = M$

$|\displaystyle\sum_{j=1}^n a_{lj}X_{0j}| = \sum_{j=1}^n \frac{|a_{lj}|^2}{|a_{lj}|}$
$= \displaystyle\sum_{j=1}^n |a_{lj}| = M$

$\|AX_0\|_\infty = M\\$
$\|A\|_\infty = M = \underset{i}{max} \displaystyle\sum_{j=1}^n |a_{ij}|$

#### Exemple (avec la matrice precedente)

* $i = 1$ (1^^er^^ ligne) $|-3| + |i| + |-5| = 9$
* $i = 2$ (2^^eme^^ ligne) $|1| + |0| + |3| = 4$
* $i = 3$ (3^^eme^^ ligne) $|1| + |1| + |-i| = 3$

Donc $\|A\|_\infty = 9$ et $l=1$

\newpage

## Exerice 6

Soit $A \in Mn(\mathbb{C}) verifiant \|A\| < 1$
$\Big(\|A\| = \underset{X \neq 0}{Sup}\frac{\|A_X\|}{\|X\|}\Big)$

1. Montrer que $\varrho(A) < 1$
1. Mpntrer que $I + A$ est inversible
1. Montrer que $\|(I+A)^{-1}\| \leq \frac{1}{1 - \|A\|}$

Rappel:

> $\varrho(A) = max(\lambda), \lambda \in Sp(A)$ (Rayon spectral de A)

-----------

### Petit 1

$\forall \lambda \in Sp(A)$: Spectre de A $\exists X \neq \bar{0} / AX = \lambda X$

$\|AX\| = \|\lambda X\| = |\lambda| \|X\|\\$
$\|AX\| \leq \|A\|\|X\|$

$\implies |\lambda| \|X\| \leq \|A\|\|X\|\\$
$|\lambda| \leq \|A\| \forall \lambda \in Sp(A)\\$
$\implies \varrho(A) = \underset{\lambda \in Sp(A)}{max} |\lambda| \leq \|A\| < 1$
$\implies \varrho(A) < 1$

### Petit 2

On va faire un raisonnement par l'absurde.

Supposons que $I + A$ est non inversible.

Rappel: (B non inversible)

* $det(B) = 0$
* $I_B(\lambda) = det(B - \lambda I)$
* $I_B(0) = det(B) = 0$

$I+A$ non inversible $\iff det(I+A) = 0 \iff 0 \in Sp(I+A)$

$0 \in Sp(I+A): \exists X \neq \bar{0} / (I+A)X = \bar{0} (\lambda = 0)$
$\implies AX = -X \implies -1 \in Sp(A)$

Or $\varrho(A) = max |\lambda| < 1$ Ce qui est absurde.

Donc $I+A$ est inversible.

### Petit 3

$(I+A)^{-1} = (I+A)^{-1}\frac{(I+A-A)}{I}\\$
$(I+A)^{-1} = I - (I+A)^{-1}A\\$
$\|(I+A)^{-1}\| \leq \|I\| + \|(I+A)^{-1}A\|\\$
$\|(I+A)^{-1}\| \leq 1 + \|(I+A)^{-1}\| \|A\|\\$
$\|(I+A)^{-1}\|(1 - \|A\|) \leq 1\\$
$\implies \|(I+A)^{-1}\| \leq \frac{1}{1 - \|A\|}$

Rq:

> On a toujorus $\varrho(A) \leq \|A\|$, $\forall \|A\| = \underset{X \neq \bar{0}}{Sup}$
$\Big(\frac{\|AX\|}{\|X\|}\Big)$
