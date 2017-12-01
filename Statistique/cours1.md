---
title: "Statistique 1"
author: [Regragui Mohamed]
date: 2017-12-01
...

# Espace probabilisable

Une experice est qualifiée d'aléatoire si on ne peut prévoir par avance son
résultat et si répétée dans des conditions identiques elle peut donner lieu à
des résultats $\neq$.

On représente le résulat d'une experiece par une un élément $w \in \Omega$
$\Omega$ s'appelle l'univers.

$\Omega = \{$ tous les resultats possible $\}$.

## Exemple:

On lance 2 dès. Cette experience assicie l'univers $\Omega = \{ (i, j) \} 1 \leq i \leq 6$ et $1 \leq j \leq 6$.

On peut changer l'univers, si on s'interresse à la somme des pts matqués.

$\Omega = \{ i + j \}$ avec $1 \leq i \leq 6$ et $1 \leq j \leq 6$ = $\{2, 3, \dots, 12\}$

---------

Soit $\varphi$ l'ensemble des événements.

$\forall A \in \varphi$, on note $\bar{A} = C^A_{\Omega}$ le contraire de A.

$\varphi$ est défini par 3 axiomes:

* $\forall A \in \varphi$ alors $\bar{A} \in \varphi$
* Pour tout ensemble fini ou denombrable d'éveénements $A_i \in \varphi$
$\cup A_i \in \varphi$.
* $\Omega \in \varphi$

## Rappel:

I est dénombrable ssi $\exists \\\varphi$ application bijective $\\\varphi: I \rightarrow \mathbb{N}$ ou $F \subset \mathbb{N}$

C'est une algébre de Boole ou Tribu.

Rq: $\varnothing \in \varphi$ et $\cap A_i \in \varphi$ ($\bar{\Omega} \in\varphi
\implies \varnothing \in \varphi$).

# Def:

On appelle espace probabilisable le couple $(\Omega, \varphi)$ ou:

* $\Omega$ est l'univers
* $\varphi$ Tribu

# Espace probabilisé

**AXIOME DE Kolmogorov**

Def: On appelle probabilité ou (loi de probabilité) une application:

$P: \varphi \rightarrow [0, 1]\\ A \rightarrow P(A)$

Vérifiant:

* $P(\Omega) = 1$
* $\forall$ ensemble fini ou dénombrable d'événements incompatibles: $A_1, A_2, A_i\\$
($A_i \cap A_j = \varnothing \forall i \neq j$)

$P(\cup A_i) = \sum P(A_i)$

# Propriétés élémentaires

* $P(\bar{A}) = 1 - P(A)$
* $P(\varnothing) = 0$
* Si $A \subset B \implies P(A) \leq P(B)$
* $P(A \cup B) = P(A) + P(B) - P(A \cap B)$

# Loi conditionelles

Def:

> On appelle loi de probabilité conditionelle de A sachant B. Noté:\newline
\fbox{$P(A/B) = \frac{P(A \cap B)}{P(B)}$ avec $P(B) \neq 0$}

Def: A et B sont independant ssi:

\fbox{$P(A/B) = P(A)$} $\iff$ \fbox{$P(A\cap B) = P(A).P(B)$}

# Formules de BAYES

1. \fbox{$P(B/A) = \frac{P(A/B) P(B)}{P(A)}$}

$P(A/B) = \frac{P(A \cap B)}{P(B)}$

$P(B/A) = \frac{P(B \cap A)}{P(A)} = \frac{P(A/B)P(B)}{P(A)}$

Soit ($B_i$) un systeme complet:
$\left\{
  \begin{aligned}
    B_i \cap B_j = \varnothing i \neq j (B_i) \text{partition de } \Omega \\
    P(B_i / A) = \frac{P(A/B_i)P(B_i)}{P(A)}
  \end{aligned}
\right.$
\newline\newline

2. \fbox{$P(B_i/A) = \frac{P(A/B_i)P(B_i)}{\sum P(A/B_i)P(B_i)}$}
