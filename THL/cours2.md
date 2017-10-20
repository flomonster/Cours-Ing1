---
title: "Theorie des Langages 2"
author: [Amsallem Florian]
date: 2017-10-12
...

# Theorie des Langages

* Numero: 2
* Prof: Fabrizio Jonathan
* Date: 12 Octobre 2017

## Compilateur

Il y a plusieurs etapes:

* Decoupage en entites lexical
  * Il va detecter les identificateurs (les varibles).
* Analyse sementique
  * Verification des types

## Langages Rationnel


L'ensemble des langages rationnels est defini par:

\begin{equation}
\forall a \in \sum \{a\} *
\end{equation}

## Expression Rationnel

Exemple un nombre binaire:
({-}$\cup${+}$\cup${$\varepsilon$}).({0}$\cup${1}).({0}$\cup${1})^*^

Qui peut aussi s'ecrire:
({-}$\cup${+}$\cup${$\varepsilon$}).({0}$\cup${1})^+^

## Simplifions les operateurs sur les langages

$\{\varepsilon\} \to \varepsilon\\
\{a\} \to a \\
. \to \\
\sum^* \backslash L \to \bar{L}$

PS: Le prof aime bien les legos mais n'a pas d'actions chez legoland.

\newpage

## Automates

Cet automates reconnait les langages suivant cet expression:
```
(a+b)*bab
```

![Automate exemple](http://pauillac.inria.fr/~maranget/X/421/poly/poly114.png)

Pour un **langage algebrique deterministe** il va falloir utiliser un
**automate a pile**.
