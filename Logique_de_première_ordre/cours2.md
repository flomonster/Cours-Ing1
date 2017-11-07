---
title: "Logique 2"
author: [Auer Erwan]
date: 2017-10-18
...

# Logique

* Numero 2
* Prof: Hémon Sébastien
* Date: 18/10/2017

## 3 Critères algorithmiques de correction d'écriture dans F0 polonais
**Procèdure de vérification d'une formule de F0**

1. Entrée: mot = $\phi$ $\in$ ($\nu \cup$C)\*
2. Procédure: $\phi$ = s1, s2, ..., sn (concaténation)

  valuation $\upsilon$ des symboles:

  $\upsilon$: si $\in \nu$ -> -1
                      {$\wedge, \vee, \Rightarrow, \Leftarrow$} -> 1
                      $\neg$ -> 0
                      $\top, \bot$ -> -1

  Sommes cumulées: ($\sum\limits\_{i = 1}^$\omega$ $\upsilon$(si) = (Sk)k $\preceq$ n)
3. Conditions d'arrêts: Stop si $\exists$ k $\preceq$ n Sk = -1, renvoye k
                             si Sn est calculé

**Proposition:** $\phi \in$ F0 ssi la procédure s'arrête en remplissant
mutuellement les deux conditions en polonais

**Démonstration** (correction de l'algo):
Par induction sur la construction des formules
  * Atomes: Soit s $\in \nu \cup$ { $\top, \bot$ }, on a $\phi$ = s = s1 (n = 1)
et $\upsilon$(s) = -1. Arrêt à -1, on accepte $\phi \in$ F0.
  * Constructeurs: Supposons $\phi et \psi$ deux éléments de F0 validant le critère.
*Par hypothèse d'induction*: Pour $\phi$: s1 ... sn => $\upsilon$(s1) -> -1
                             Pour $\psi$: $\theta$1 ... $\theta$n => $\upsilon$($\theta$1) -> -1
  Considérons h = $\wedge \phi \psi$, en mettant h dans l'algo, on a
Pour h: $\wedge$ s1 ... sn $\theta$1 ... $\theta$2 => 1 1 + $\upsilon$(s1) -> 0 $\upsilon$($\theta$1) -> -1
Notons que pour $\upsilon$($\wedge$) = $\upsilon$($\vee$) d'où le raisonnement est
de même pour les autres opérateurs.

**Réciproque**: Les cas pathologiques ($\phi$ !$\in$ F0)
  * $\phi$ contient pour i $preceq$ n un symbole si $\in$ C tel que si reçoit
un argument de moins que prévu
  * $\phi$ contient un supplément de symboles malgré la cloture de chaque connecteur

Dans le 1er cas, l'algo s'arrête en n'ayant pas rencontré de -1.
Dans le 2ème cas, l'algo s'arrête sur -1, avec k < n

## Sémantique de F0
  ||$\phi$|| = sémantique de $\phi$
  On opte pour le point de vue de Tarski, par induction de la construction de F0:
  * Atomes: ||$\top$|| = vrai, ||$\bot$|| = Faux
Pour chaque $\lambda$: $\nu$ -> {vrai, faux}. On se donne ||A||$\lambda$ = $\lambda$(A)
$\lambda$ est appelée assignation des valeurs aux variables

*N.B: on définit donc des classes de vérités et non une vérité unique*
Ainsi ||$\top$||$\lambda = vrai et ||$\bot$||$\lambda = faux qqsoit $\lambda$

  * Constructeurs: $\wedge \vee$ => <=> $\neq$
    ||$\wedge \phi \psi$||$\lambda$ est vrai ssi ||$\phi$||$\lambda$ est vrai et ||$\psi$||$\lambda$ est vrai

On dit que $\phi$ et $\psi$ $\in$ F0 sont sémantiquement équivalentes si
||$\phi$||$\lambda$ = ||$\psi$||$\lambda$, on note ||$\phi$||$\lambda$ $\equiv$ ||$\psi$||$\lambda$

## Broccoli-logic
  Une broccoli-logic est toute logique dans laquelle quel que soit $\clubsuit$ 
connecteur, on a ||$\clubsuit \phi \psi$||$\lambda$ = vrai ssi ||$\phi$||$\lambda$ = vrai
broccoli ||$\psi||$\lambda = vrai

Prop: Logique F0 est une broccoli-logique.
