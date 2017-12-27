---
title: "Logique 4"
author: [Auer Erwan]
date: 2017-11-15
header-includes:
  - \usepackage{fourier}
...

# Logique

* Numero 4
* Prof: Hémon Sébastien
* Date: 15/11/2017

# Relations d'equivalence

*Def*: Soit E un ensemble et R relation d'equivalence sur E pour Z = {e $\in$ E | ekx}.
On nomme $\bar{a}$ classe d'équivalence de x selon k.

*Notation*: $k_{\mathbb{Z}}$ avec k $\in$ $\mathbb{Z}$ désigne les k multiples dans $\mathbb{Z}$

*Remarque*: si xky, alors $\bar{x}$=$\bar{\bar{y}}$

*Definition*: L'ensemble des classes d'équivalences de E selon R est appelé quotient de E par k, noté E/k.

*Propriété*: la relation $\equiv_{F0}$ est une relation d'équivalence. Toute équalité
x = y est une relation de congruence et n'est donc pas forcément vrai. Elle est liée au langage.

*Théorème*: On peut assimiler par correspondance bijective une relation k d'équivalence
sur E à une partition de E.

*Définition*:(partition) Soit $\Omega$ un univers. On appelle partition de cet univers
une famille d'ensemble / événements (Ai), i $\in$ I vérifiant:
$\cup$Ai = $\Omega$; $\forall$ i $\notequal$ j, Ai $\cap$ Aj = $\varnothing$; I = ensemble ordonné

Considérons (Ai) comme partition de E, on définit sur E la relation R par xRy $\Leftrightarrow$

## Reflexivité

Soit x $\in$ E, on a $\cup$Ai = E donc x $\in$ E $\Leftrightarrow$ x $\in$ $\cup$Ai $\Leftrightarrow$ $\exists$ i $\in$ I
x $\in$ Ai d'où xRx $\Leftrightarrow$ $\exists$ I $\in$ I x $\in$ Ai $\land$ x $\in$ Ai $\equiv$ $\exists$ i $\in$ I x $\in Ai

Symmetrie dans F0, A $\equiv$ A or A $\land$ B $\equiv$ B $\land$ A, on pose A = x $\in$ Ai et B = y $\in$ Ai
