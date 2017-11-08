---
title: "Logique 3"
author: [Amsallem Florian]
date: 2017-11-08
header-includes:
  - \usepackage{fourier}
...

# Logique

* Numero 3
* Prof: Hémon Sébastien
* Date: 08/11/2017

## Rappel

$\varphi \equiv \Psi$ Veut dire semantiquement equivalentes.
Elles ont donc les memes tables de verites.

### Loi De Morgan

* $A \implies B \equiv \neg A \lor B$
* $\neg (A \lor B) \equiv \neg A \ land \neg B$
* $\neg (A \land B) \equiv \neg A \ lor \neg B$

### Loi de Pierce

On se donne:

* $P \implies (Q \implies P)$
* $(P \implies Q) \implies P$

| P | Q | $P \implies Q$ | $(P \implies Q) \implies P$ | $Q \implies Q$ | $P \implies (Q \implies P)$ |
|:-:|:-:|:--------------:|:---------------------------:|:--------------:|:---------------------------:|
| 0 | 0 |       1        |                0            |       1        |                1            |
| 0 | 1 |       1        |                0            |       0        |                1            |
| 1 | 0 |       0        |                1            |       1        |                1            |
| 1 | 1 |       1        |                1            |       1        |                1            |

On remarque:

1. $\implies$ n'est pas associative
1. $P \implies (Q \implies P) est une tautologie$

Cette tautologie s'appelle Loi de Pierce

#### Proprietes:

* $(A \land B) \land C \equiv A \land (B \land C)$
* $(A \lor B) \lor C \equiv A \lor (B \lor C)$

#### Proposition:

$\varphi \equiv \Psi$ si est seulement si $\varphi \iff \Psi$ tautologie.

\danger Ne se generalise pas pour toutes les logiques.

La logique d'ordre 0 est **complete** du a cette propriete de completude.

## Definition d'une relation d'ordre generale

### Relation binaire

Soit $\mathcal{R}$ une relation binaire, c'est a dire definie de sorte que pour
tout couple $(x, y)$ d'objets (d'un certain type):

$x \mathcal{R} y$ est verifie ou invalide.

Donnons les paradigmes de $\mathcal{R}$.

* Proposition par formule logique:
    * $x \mathcal{R} y$ si et seulement si $\varphi(x, y)$ est verifer avec
$\varphi$ formule logique.

Ex1: (Type Integer) $x \mathcal{R} y$ lorsque $\exists n$ integer $x = y + n\\$
Ex2: (Sur les complexes $\mathbb{C}$ $x \mathcal{R} w$ lorsque $|z| = \frac{1}{1 + w^2}$
$\land w \neq 0 \land w^2 \neq -1\\$

* Definition ensembliste
* Definition par fonction booleene:
    * $\mathcal{R}$ peut etre vue a l'aide d'une application 1_R a valeur des
${0, 1}$ a deux variables $1_R:(x, y) \rightarrow 1$ si $x \mathcal{R} y$
verifie 0 sinon
* Definition par graphe. On assimile $\mathcal{R}$ a un graphe $G$ tel que
$s_1, s_2$ forment une arrete lorsque $s_1 \mathcal{R} s_2$.

### Relation d'equivalence

Les **relations d'equivalences** sont des relations binaires particulieres.

1. Reflexivite: $\forall x:\mathcal{T} \mathcal{R} x$ (Dans le domaine $\mathcal{T}$ considere)
1. Symetrique: $\forall x:\mathcal{T} \forall y:\mathcal{T}\\$ $x \mathcal{R} y \iff$
$y \mathcal{R} x$
1. Transitivite: $\forall x: \mathcal{T} \forall y: \mathcal{T} \forall z: \mathcal{T}\\$
$(x \mathcal{R} y \land y \mathcal{R} z) \implies x \mathcal{R} z$

Ex: L'egalite est une equivalence naturelle.

Ex: Construire des congreuences. $a \equiv b [n]$ signifie $b - a$ multiple de n.
ou encore a et b ont meme reste dans la division euclidienne par n.
Ecrivons $a \equiv_n b$ dans ce cas $\equiv_n$ est une relation d'equivalence sur
$\mathbb{Z}$

## Peut on etre logique (sans raisonner comme les autres)

La logique est a la fois mathematique informatique et phylosophique.

`1 + 1 = 2` Logique ?

> Non c'est arithmetique.

Il y a donc un probleme semantique (syntaxe).

Regles deductives:

* Modus ponens $A \land (A \implies B) donc B$
* Modus tolens
* Syllogisme
* Sophisme (A pour but de convaincre les gens, peut importe si c'est vrai ou faux)

$A$ donc $A \lor B$ Ceci est une bonne deduction (on appelle ca un affaiblissement)

Dans le langage lorsqu'une personne dis $A$ puis $B$ alors on l'interprete comme
$A \land B$. C'est un sequent primitif. C'est une deduction (On reli les
formules entre elles).
