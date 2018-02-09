---
title: "Théorie des Graphes 1"
author: [Auer Erwan]
date: 08 Février 2018
...

# Introduction

1735 $\rightarrow$ Euler avec les ponts de Köniberg.

Graphe de V sommets et E arrêtes = {couples de sommets}

```
  A
 / \
B---C
```

V = {a, b, c}
E = {(a,b), (b,c), (c,a)}

# Les chemins eulériens

Un chemin eulérien est un chemin qui passe par tous les sommets, et une seule
fois par toutes les arrêtes.

## Condition nécessaire d'existence d'un chemin eulérien:

S'il existe un chemin eulerien (v1,v2)(v2,v3)..., alors tous les sommets intermédiaires
doivent être de degré pair car quand on y rentre, on en ressort. Seuls les sommets
de départ et d'arrivée peuvent être de degré impair. (Dans le cas d'un cycle
eulérien, tous les degrés doivent être pairs)

Donc les 7 ponts de Köniberg n'ont pas de chemins eulériens.

**Théorème**: Un graphe posséde un cycle eulérien ssi les degrés de tous sont paires
sont paires et tous les sommets de degrés $\geq$ 2 sont dans la même composante
connexe. (Il existe un chemin entre toutes paires de sommet de la composante)

## Preuves

Condition nécessaire évidente

Condition suffisante: Algo pour construire le cycle eulérien

1. Choisir un sommet de la composante connexe
2. Construire un chemin en supprimant les arrêtes au fur et à mesure jusqu'à
ce qu'on soit bloqué sur le point de départ (autrement on peut toujours avancer
car les degrès sont paires)
3. Comme le graphe est connexe, il existe une arrête qui est incidente à un sommet
du cycle. Chercher un nouveau cycle à partir de ce sommet puis combiner les cycles.
4. Répeter 3 jusqu'à ce qu'il n'y ait plus d'arrêtes

## Propriété

Dans un graphe, le nombre de sommets impairs est pair.

**Preuve:** Si V est l'un des sommets et E l'ensemble des arrêtes

$\sum$(v$\in$V)(deg V) = 2 * |E| (pair)

# Différents noms

1847 Gustave Kirchhoff

[//]: <>(Une cannette à celui qui rempli cette partie là avec le cours du prof)

1860 Arthur Cayley

Dénombrer tous les isomères des alcanes

Si on note n le nbr de C et x le nombre de H, un alcane est un arbre avec n+x
sommets et n + x - 1 arrêtes

Proposition: un arbre avec |V| sommets posséde |V| - 1 arrêtes.

$\sum$(v$\in$V)(deg V) = 2 * |E|

## La formule de Cayley

Le nombre d'arrêtes avec n sommets numérotés de 1 à n est $n^{n-2}$

**Preuve moderne:** On établit une bijection entre {les fonctions de [|1, n|] vers
[|1, n|]} (1 )et {l'ensemble des arbres numérotés de 1 à n équipés de 2 marqueurs
*début* et _fin_} (2)

Algo pour aller de 1 vers 2:

1. Interpréter (x, f(x)) avec un arc
2. Casser chaque cycle après la plus petite valeur et convertir les cycles dans
l'ordre des plus petites valeur.
3. Marquer le début du 1er cycle et la fin du dernier
4. Remplacer les arcs par des arrêtes

**Théorème:** Le nombre d'arbres couvrants d'un graphe G est équal à la valeur
absolue de n'importe quel cofacteur de la matrice laplacienne de G.

La matrice laplacienne est la matrice des degrés moins la matrice d'adjacence.

```
2--3
| /|
|/ |
1--4

D = |3 0 0 0|
    |0 2 0 0|
    |0 0 3 0|
    |0 0 0 2|

A = |0 1 1 1|
    |1 0 1 0|
    |1 1 0 1|
    |1 0 1 0|

D - A = | 3 -1 -1 -1| = | 2 -1  0| = 12 - 2 - 2 = 8
        |-1  2 -1  0|   |-1  3 -1|
        |-1 -1  3 -1|   | 0 -1  2|
        |-1  0 -1  2|
```

# Epilogue

Next time on Théorème des Graphes:

Le problème du facteur chinois. Un facteur veut optimiser son trajet pour passer
par le moins de rue possible, tout en passant par toutes les arrêtes.
