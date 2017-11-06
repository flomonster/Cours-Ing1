---
title: "Theorie des Langages 5"
author: [Amsallem Florian]
date: 2017-11-06
header-includes:
  - \usepackage{fourier}
...

# Theorie des Langages

* Numero: 5
* Prof: Fabrizio Jonathan
* Date: 06 Novembre 2017

## Apres les langages rationels

* Une phrase est de la forme sujet verbe
* un sujet est un pronom
* un pronom est il ou elle
* un verbe est parle ou ecoute

On peut former 4 phrases differentes.

On a deux categories de mots. Les elements **\color{red}terminaux** et **\color{blue}non terminaux**.

* Une **\color{blue}phrase** est de la forme **\color{blue}sujet** **\color{blue}verbe**
* un **\color{blue}sujet** est un **\color{blue}pronom**
* un **\color{blue}pronom** est **\color{red}il** ou **\color{red}elle**
* un **\color{blue}verbe** est **\color{red}parle** ou **\color{red}ecoute**

*"il parle"* est donc un mot de notre langage. On va redefinir le langage.

* **\color{blue}P** $\rightarrow$ **\color{blue}SV**
* **\color{blue}S** $\rightarrow$ **\color{blue}PN**
* **\color{blue}V** $\rightarrow$ "**\color{red}parle**" | "**\color{red}ecoute**"
* **\color{blue}PN** $\rightarrow$ "**\color{red}il**" | "**\color{red}elle**"

$L = (N, \Sigma, P, P, S)$

* N: elements non terminaux
* $\Sigma$: elements terminaux
* P: regle de production $(V^+ \times V^*)$
* S: un axiome $\in N$

L est une gramaire formelle.

\newpage

### Exemple

0. A $\rightarrow$ aABC
0. A $\rightarrow$ abC
0. CB $\rightarrow$ BC
0. bC $\rightarrow$ bc
0. cC $\rightarrow$ cc

L'axiome est `A`.

Ce langage defini: $a^nb^nc^n$ avec $n \in \mathbb{N}$

On a besoin d'un outil pour reconnaitre ces langages

### Reconnaissance

1. S $\rightarrow$ LIST END
1. NAME $\rightarrow$ "ceried" | "dick" | "noam"
1. LIST $\rightarrow$ NAME | NAME "," LIST
1. "," NAME END -> "and" NAME

La regle numero 4 est genante. Elle consome un element (le END).
de plus elle contient un element terminal dans sont proto mot.

On va donc poser de regles.

**MONOTONIE**:

> $\alpha \rightarrow \beta$

* $\alpha \rightarrow V^+$
* $|\alpha| \leq |\beta|$
* $\beta \rightarrow V^*$

**Context Sensitive (C.S)**

> $\alpha A \beta \rightarrow \alpha\delta\beta$

* $\alpha \rightarrow V^*$
* $A \rightarrow N$
* $\beta \rightarrow V^*$
* $\delta \rightarrow V^*$

-------

Changeons le langage pour qu'il suive ces regles.

1. S $\rightarrow$ NAME LIST
1. NAME $\rightarrow$ "ceried" | "dick" | "noam"
1. LIST $\rightarrow$ ENDNAME | NAME COMMA LIST
1. COMMA $\rightarrow$ ","
1. "and" ENDNAME -> "and" NAME

Exemple d'une gramaire qui n'est pas **contexte sensitive**.

1. S $\rightarrow$ abc
1. S $\rightarrow$ aSQ
1. bQc $\rightarrow$ bbcc
1. cQ $\rightarrow$ Qc (Ne respecte pas la regle C.S)

Il n'y a pas plus d'expressivite entre une gramaire sensitive et monotone.
Du coup on ne distinguera pas les cas.

Pour vraiment simplifier on a envi de mettre une contrainte beaucoup plus forte.

**Context free**:

> A $\rightarrow \alpha$

* A $\in N$
* $\alpha \in V^+$
