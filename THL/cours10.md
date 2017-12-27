---
title: "Theorie des Langages 10"
author: [Auer Erwan]
date: 7 Decembre 2017
header-includes:
  - \usepackage{fourier}
...

# Exercices

## Exercice 1

G1: S -> aT(droite terminal) | x$\newline$
    T -> S(gauche terminal)b

G2: S -> aSb | x

G3: S -> aT | x$\newline$
    T -> bS

L(G1) $\in$ Rat : Non

L(G2) $\in$ Rat : Non

L(G3) $\in$ Rat : Oui

Si lineaire droite $\Rightarrow$ Rat$\newline$
            gauche $\Rightarrow$ Rat

L(G2) = {$a^nxb^n | n \in N$} = L(G1)$\newline$
L(G3) = ($(ab)^kx$ car S -> aT -> abS ->..

## Exercice 2

Grammaire:
1) S -> E$\newline$
2) E -> aE$\newline$
3) E -> a

1)) S -> .E$\newline$
    E -> .aE$\newline$
    E -> .a

2)) E -> a.E$\newline$
    E -> a.$\newline$
    E -> .aE$\newline$
    E -> .a

3)) S -> e.\$

4)) E -> aE.

5)) S -> E$.

Generalized LR(GLR) -> (Bison) exp time$\newline$
K-LA x |$\sum$|^k donc |$\sum$| $\simeq$ $\infty$$\newline$
LR(0) = Simple LR $\subseteq$ LALR(I) $\subseteq$ LR(I)$\newline$
Simple LR -> Follow (a) = {$a_1$\$} + Follow (E) = {$}
