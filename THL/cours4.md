---
title: "Theorie des Langages 4"
author: [Amsallem Florian]
date: 2017-11-02
header-includes:
  - \usepackage{fourier}
...

# Theorie des Langages

* Numero: 4
* Prof: Fabrizio Jonathan
* Date: 02 Novembre 2017

## Rappelles:

Langage Rationnel $\rightarrow$ Expression rationnelle $\rightarrow$ $\varepsilon$-NFA
$\rightarrow$ NFA $\rightarrow$ DFA

En faite:

Langage Rationnel $\rightarrow$ Expression rationnelle $\rightarrow$ $\varepsilon$-NFA
$\supset$ NFA $\supset$ DFA

## Creation d'un DFA

```
(a+b)*b(a+b)
```

![NFA](http://image.ibb.co/fFZ0tG/Screenshot_from_2017_11_02_14_16_41.png)

| T | a | b |
| - | - | - |
| 0 | 0 | 01 |
| 01 | 02 | 012 |
| 02 | 0 | 01 |
| 012 | 02 | 012 |

![DFA](http://image.ibb.co/coZ5Sb/Screenshot_from_2017_11_02_14_23_52.png)

## Langages non rationnels

Voici l'exemple d'un langage non rationnel:

$a^nb^n$

Pour determiner qu'un langage n'est rationnel on peut utiliser le
lemme de pompage:

$m \in L\\$
$\exists k \in \mathbb{N}, |m| > k\\$
$m = uvw$ tq:

* $|v| \geq 1$
* $|uv| \leq k$

$\forall i \in \mathbb{N},$
$uv^iw \in L$

### Exemple

Soit $L = a^nb^n$ avec $n \in \mathbb{N}$

$m = a^nb^n$ donc $a\dots|ab|\dots b\\$
$u = a^i\\$
$v = a^{n-i}b^{n-j}\\$
$w = b^j$

Cela ne marche pas car:

$uvvw \notin L$

Le probleme est que l'on ne peut pas trouver un motif qui respecte le lemme de
pompage. Du coup L n'est pas un langage rationelle.

\danger Si un langage respecte le lemme de pompage on ne peut rien en conclure.

## Proprietes

* Soit L un langage rationnel:

> $\overline{L}$ est rationelle.

* Soit $L_1$ et $L_2$ des langages rationnels:

> $L_1 \cup L_2$ est rationelle.

* Soit $L_1$ et $L_2$ des langages rationnels:

> $L_1 \cap L_2 = \overline{\overline{L_1} \cup \overline{L_2}}$ est rationelle.

### Prefixe

Question: $Pref(L)$ est-il rationnel ?

* $Pref(\varnothing) = \varnothing$
* $Pref(\{\varepsilon\}) = \{\varepsilon\}$
* $Pref(\{a\}) = \{\varepsilon + a \}$

Hypothese: $L_1$ et $L_2$ Rationnels de plus $Pref(L_1)$ et $Pref(L_2)$ rationnels

* $Pref(L_1 \cup L_2) = Pref(L_1) \cup Pref(L_2)$ Donc rationel par hypothese.
* $Pref(L_1 . L_2)=Pref(L_1) \cup L1 . Pref(L_2)$ Rationnel

Du coup $Pref(L)$ est rationel (par recurence).

### Inclusion

L'inclusion ne preserve pas la rationalite dans un sens comme
dans l'autre.

\danger Il faut revoir les algos qui sont decrit dans le poly.
