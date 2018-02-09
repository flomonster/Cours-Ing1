---
title: "Algo 1"
author: [Amsallem Florian]
date: 2017-10-12
...

# Algo

* Numero: 1
* Prof: Alexandre Duret-Lutz
* Date: 12 Octobre 2017

Symboles Utiles: $ Σ $ ε ∪ ∩ ∅ Ω ⌊ ⌋ ⌈ ⌉

## Intro

Pour trouver les anciens partiels etc...

[Site du cours](https://www.lrde.epita.fr/~adl/ens/algo/)

Il y a un QCM au prochain cours.
Il y aura des td. Il faut connaitre son groupe pour pouvoir lire chronos...

Un algo est une suite d'instruction pour resoudre un probleme.

P1: chercher un mot dans un dictionnaire de `n` mots.
* Recherche dichotomique
* Recherche sequentielle
* ...

P2: troucer le min dans un tableau de `n` valeurs.
* Parcours de `g` a `d` en retenant le min
* Sort puis faire une dichotomie
* ...

De maniere general, on a un probleme et des algos.
On aimerait pouvoir comparer les algos.
* On peut faire des benchmark.
  * On a des infos que sur les donnees testees.
* On peut chercher leur complexites.
  * La complexite en temps
  * La complexite en espace
  * Elles sont en fonction de la taille du probleme.

Dans ce cours on va s'interesse a la complexite des algos.

## Outils necessaire

* Probleme de denombrement (factoriel, puissance, somme...)
* Series, suite, sommes d'entiers
* Recurrence
* Coup de fonction
* 10^x^ = y <=> log~10~(y) = x

Tips: pour estimer un log~10~, c'est le nombre de chiffres avant la `,` moins `1`.
Ex: log~10~(36)= `1,ab`

```C
for (int i = 5; i < 15; ++i)
{
  puts("kiwi");
  for (int j = 10; j < 20; ++j)
    puts("pomme");
  for (int j = 1; j < i; ++j)
    puts("banane");
  for (int j = 10; j < i; i++)
    puts("orange");
}
```

Combien de fois a ete afficher chaque fruits ?
* Kiwi: 10
* Pomme: 100
* Banane: $ Σ~4~^13^ = (4 + 13) * 5 = 85 $
* Orange: 10

Si on change `15` par `n` avec `n` > 5:
* Kiwi: $ Σ~i=5~^n-1^1 = `n`-5 $
* Pomme: $ Σ~i=5~^`n`-1^Σ~j=10~^19^1 = Σ~i=5~^`n`-1^1 = (`n`-5) * 10 $
* Banane: $ Σ~i=5~^`n`-1^Σ~j=1~^i-1^1 = ((`n` + 2) * (n - 5)) / 2 $
* Orange: $ Σ~i=5~^`n`-1^Σ~j=10~^`n`-1^1 $
