---
title: "Logique 1"
author: [Auer Erwan]
date: 2017-10-11
...

# Logique

* Numero 1
* Prof: Hémon Sébastien
* Date: 11/10/2017

## Introduction
**Tarski** : *"N'est pas une phrase ce que l'on ne peut definir comme vrai ou
faux."*

**Axiomes** : Maniere d'ecrire une propriete. Elles forment le contexte.

```
+-------------------+-----------------------+
| Syntaxe (axiomes) | Semantiques (Verites) |
+-------------------+-----------------------+
```

Une phrase est compose de mots, eux-memes composes de caracteres.

## 1 Induction
**Definition par induction d'un type (T)**:

  * A : On se donne des atomes (pas des axiomes) a1, a2, ..., an, consideres
comme etant de type T
  * O : On se donne des operateurs ou constructeurs $\square 1, \square 2, ..., \square n$
d'arites respectives r1, r2, ..., rn et on considere :
    1. Chaque fois que t1, t2, ..., ti sont de types T et $\square i$ est un constructeur d arite ri
    2. On aura $\square i$ t1, ..., ti est de type T
  * C : Condition d'arrêt:

                           1. un nombre d'étapes à ne pas dépasser ou non borné
                           2. condition logique
      **Notation** : condition d'arrêt $\omega$ correspond à accepter tout nb
d'entiers fini d'étapes de constructions.

*Exemple :*

| |Etapes de constructions|
|-|-----------------------|
|A|$\Diamond$ integer     |
|O|$\nearrow$ arité 1     |
|C|$\omega$               |

Ce type integer est équivalent à celui des entiers naturels.

## 2 Logique propositionnelle
On se donne les objets suivants:

  * Lettres majuscules latines (éventuellement avec indices) dans $\Lambda$
  * Connecteurs logiques : $\land$ (et); $\lor$ (ou); $\implies$ (implication); $\iff$ (équivalent);
$\neg$ (négation), $\bot$ (bottom); $\top$ (top).

  On définit par induction le type F0 "formule propositionnelle de la logique"

  * A : tout élément de Lambda ainsi que Bottom et Top
  * O : Si $\varphi$ et $\psi$ sont de types de F0, alors:
     $\lor \varphi \psi$, $\neg \varphi$, etc... sont de types F0 (dites "en polonais")
  * C : condition d'arrêt $\omega$

## Remarque
On peut traduire l'ériture polonaise en écriture usuelle. Il faudra l'indiquer
mais l'usage de \(\) est restreint à la notation usuelle.
