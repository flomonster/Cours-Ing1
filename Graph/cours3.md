---
title: "Graph 3"
author: [Alexandre Duret-Lutz]
date: 2018-03-08
...

# Couplage (matching)

## Présentation de problèmes

### Probleme 1 : Affectation de taches

![Matching problem](https://upload.wikimedia.org/wikipedia/commons/3/3f/Probl%C3%A8me_d%27affectation.png)


### Probleme 2 : Armée multinationale


* Soldats parlent au moins 1 langue.
* Il faut 2 soldats qui parlent la même langue pour conduire un tank.
* Maximiser le nombre de tanks

### Probleme 3 : Greffes d'organes

| | | |
|-|-|-|
| Receveur | A | D |  
| Donneur | B | C | 

On a les compatibilités suivantes:

* $D \rightarrow$ A
* $B \rightarrow$ C

## Definitions

> Dans un graphe $G= (V ,E)$, un couplage $M \subset E$ est un ensemble d'arrêtes tel que M ne contient pas 2 arrêtes voisines.

> M est **maximal** s'il existe pas de couplage M  qui contient (seulement M) 

> M est **maximum** s'il n'existe pas de couplage M' tel que $|M'| > |M|$

> **Maximum** -> **Maximal**

> Un couplage est **parfait** si les extrémitées des arrètes de M couvrent l'ensemble du graphe V. Ce qui implique $|M| = \frac{|v|}{2}$. Pas de couplage parfait si $|M|$ est impair;

----

* Voici des couplages **maximum** :

![Exemple couplage maximum](https://upload.wikimedia.org/wikipedia/commons/thumb/9/98/Maximum-matching-labels.svg/300px-Maximum-matching-labels.svg.png)

* Voici des couplages **maximal** :

![Exemple couplage maximal](https://upload.wikimedia.org/wikipedia/commons/thumb/e/e1/Maximal-matching.svg/300px-Maximal-matching.svg.png)

Pour un couplage M, $|M| \leq \lfloor\frac{lvl}{2}\rfloor$

## Constructions

### Comment construire un couplage maximal ?

* Selection une arrète dans le graphe, la sauvegarder, puis supprimer toutes les autres arrètes partant des sommet de la première.
* Répéter la première action tant que des arrètes existent. 

### Comment construire un couplage maximum ?

* Trouver un chemin améliorant $P$
* calculer $M' \leftarrow M \bigoplus P$ (arrêtes de M ou P mais pas dans les 2)
* On obtient $|M'| = |M| + 1$
* Répétez jusqu'à l'absence de chemin améliorant.


### Définition 

> Un chemin améliorant est un chemin reliant 2 chemin libres en alternant arrêtes de $E\ M$ et arrêtes de $M$.

### Théorème

Soit $G = (V, E)$ et $M$ un couplage alors il existe un chemin améliorant **ssi** $M$ n'est pas maximum.

$(\implies)$  soit $P$ un chemin améliorant alors $M' = M \bigoplus P$ possède une arrête de plus que $M \rightarrow M$ pas maximum.

$(\Longleftarrow)$ on suppose $M$ non maximum soit $M'$ un couplage maximum $(|M'| > |M|)$.

Considérons le graphe $G' = (V, M \bigoplus M')$ :

1. $G'$ possède plus d'arrêtes de $M'$ que de $M$.
1. Chaque sommet de $G'$ touche au plus une arrête de $M$
1. Chaque sommet de $G'$ touche au plus une arrête de $M'$
1. Dans les composants $G'$ qui ne sont pas des sommets isolés il existe nécessairement (à cause de `1`) un composant avec plus dárrête de $M'$. Ce composant est un chemin améliorant.
     
### Contruire un couplage maximum 

```python
M = set()
while chemin in P:                     O(|V|/2)
   M = s.symmetric_difference(t)
return M
```
Complexité global: $\mathcal{O}(|V|*|E|)$


### Algo d'Edmonds

Il permet de trouver un chemin améliorant.

```
Entrées : G = (V, E) -> graph / M -> couplage
Sortie : P dans E chemin améliorant, Null si pas de chemin
Retirer les étiquettes [R, C, P] de tous les sommets
Marquer toutes les arrêtes comme non visitées
Répéter au choix:
(A) Trouver un sommet libre v dans V, lui donner l'étiquette [v, B, v]
(B) Trouver une arrête non-visité (v, w) dans E telle que v est étiquetté par [r, B, p]
     * marquer (v,w) comme visité
     * si w est non étiquetté et libre alors : // On a un chemin améliorant
       p <- chemin de r a w
       break
     * si w est non étiqueté et il existe x tq (w, x) dans M
       étiqueter w par [r, J, v]
       etiqueter x par [r, B, w]
     * si w a pour étiquette [s, B, q] avec s <> r
       P <- chemin de r a v + (v, w) + le chemin de w a s
       break
     * si w a pour étiquette [s, B, q] avec s = r
       // On a détecter un cycle de taille impaire
       on remplace tous les sommets de ce cycle par un nouveau sommet
       on étiquette x par [r, B, p] avec p' le parent de la racine du cycle
       on empile x et le cycle associé sur une pile
     * si w a pour étiquette [s, J, q] ne rien faire

Si ni (A) ni (B) n'est possible 
  return NULL
En sortie de boucle par break
  P est un chemin qui peut contenir des bourgeons, depiler les bourgeons en 
  ajoutant les chemin de taille paire approprié dans le chemin améliorant.
  return P
```