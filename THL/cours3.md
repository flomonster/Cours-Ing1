---
title: "Theorie des Langages 3"
author: [Amsallem Florian]
date: 2017-10-30
...

# Theorie des Langages

* Numero: 3
* Prof: Fabrizio Jonathan
* Date: 30 Octobre 2017

## Peut on reconnaitre $L_1^\star$

![Automate Kleene Star](https://image.ibb.co/iDAq6R/download.png)

Du coup un peu comme l'automate qui va reconnaitre $\cup$, on a besoin d'une
pile.

## Est-il problematique d'avoir plusieur entrees / sorites

Non.

## Thompson

On peut utiliser la construction de Thompson pour construire des automates
avec les differents operateurs.

## Non determinisme

Le fait que l'algo prenne des choix subjectif sur les transitions a prendre en
fait un algo non deterministe. Cela est du aux transitions $\varepsilon$.

On veut donc les rendre deterministes pour les simplifier.

## Simplification d'automate

1. Supression des transitions spontannee

Pour cela on doit calculer l'ensemble des etats que l'on peut acceder gratuitement.
Il faut aussi propager les sorties.

On calcul l'epsilon fermeture. Tous les etats accessible gratuitement depuis un etat.

\newpage

Exemple:

Regular Expression: `a*n + na*`

On va creer un automate avec l'algo de Thompson. Cela donne un $\varepsilon$**NFA**
(Non Deterministic Automaton with epsilon transition). Il est defini comme suit:

$(Q, \sum, \bigtriangleup, q_0, F)$ avec:

* Un ensemble d'etat $Q$.
* Un ensemble fini de symboles $\sum$ contenant $\varepsilon$.
* Un fonction de transition $\bigtriangleup: Q \times \sum \rightarrow P(Q)$
* Un etat de depart $q_0 \in Q$.
* Un ensemble d'etat $F$ qui sont des etats finaux.

![NFA](https://image.ibb.co/dHkDbR/Screenshot_from_2017_10_30_14_46_35.png)

On va construite un tableau avec toutes les epsilon fermeture. Il faut
les recalculer tant qu'il y a des modifications au tableau.

Une fois cela fait on supprime toutes les transition epsilon.

On peut donc definir:

Un **etat accessible**:

> S'il existe un etat qui mene a lui.

Un **etat coaccessible**:

> Un etat qui mene a une solution.

Un **etat utile**:

> Un etat accessible et coaccessible.

On peut donc supprimer les etats qui ne sont pas utiles. On appelle ca
emonder l'automate.

Une fois cela fait. L'automate est grandement simplifier mais il reste
non deterministe .

On appel cet automate **NFA**
(Non Deterministic Automaton with epsilon transition). Il est defini comme suit:

$(Q, \sum, \bigtriangleup, q_0, F)$ avec:

* Un ensemble d'etat $Q$.
* Un ensemble fini de symboles $\sum$ sans $\varepsilon$.
* Un fonction de transition $\bigtriangleup: Q \times \sum \rightarrow P(Q)$
* Un etat de depart $q_0 \in Q$.
* Un ensemble d'etat $F$ qui sont des etats finaux

![DFA](https://image.ibb.co/kQrrVm/Screenshot_from_2017_10_30_14_47_35.png)
