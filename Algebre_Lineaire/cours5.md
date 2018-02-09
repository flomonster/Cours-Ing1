---
title: "Algebre Lineaire 5"
author: [Ha Bertrand]
date: 2017-11-10
...

# Algebre Lineaire

* Numero: 5
* Prof: Regragui Mohamed
* Date: 10 Novembre 2017

## Exercice

Montrer les équivalences suivantes:
$\begin{enumerate}[label=\roman]$
  $\item \lim_{k\to\infty} A^k = 0 \Leftrightarrow$
  $\item \rho (A) < 1 \Leftrightarrow$
  $\item \exists ||A|| < 1$
$\end{enumerate}$

\romannum{1} \rightarrow \romannum{2}
\forall \lambda \in S_p (A), \exists X \ne $\vv{0}$ tel que $AX = \lambda X$
$A^2 X = A(\lambda X) \rightarrow \lambda AX \rightarrow \lambda^2 X$
$A^3 X = A(A^2 X) = A(\lambda^2 X) = \lambda^2 AX = \lambda^3 X$
De proche en proche, on a donc $A^k X = \lambda^k X
Ainsi, via \romannum{1}: $($$\lim_{k\to\infty} A^k) X = ($$\lim_{k\to\infty} \lambda^k) X = \vv{0} avec X \ne \vv{0}$
D'où $\lambda^k \xrightarrow[k \to \infty]{} 0 \rightarrow |\lambda | < 1 \rightarrow \rho (A) < 1$


