---
title: "Logique formelle"
author: [Maximilien Colange]
date: 2018-02-09
...

# Lambda calculus

L'origine vient d'un questionnement sur l'origine des preuves et l'envie de
faire de la preuve automatisé.

On ne peut pas automatisé les preuves. Le theoreme d'incompletdude de Gödel.

> Des choses vrais ne pourront pas être prouver avec un système automatisé.

Apres la guerre les notion de calculabilités ont été démontré équivalente.
On parle donc d'une notion de calculabilité.

Il y a plusieur facons de voir le lambda calcul.

* Théorie mathématique
* Langage de programation
* Semantique operationelle (Approche informatique)
* Denotationnelle semantique (Approche mathématique)

Il y a des :

* Variables
* Functions (Abstraction)
* Applications

Il n'y a pas de types !

Un lambda-term:

$M ::= x | (\lambda x.M) | (MM)$

Conventions:

* On peut enlever les parentheses
* L'abstraction est associative a droite
* L'application est associative a gauche
* Plusieurs arguments (sucre synxique)

Il y a plein de notations :

* $x \rightarrow 2x + 1$
* $\lambda x . 2x + 1$

## Variables

* Variables libres : Genre de variables global qui font référence a un contexte.
* Variables lié : Une variables non libre.
* Un terme clos : Un terme sans variable libre.
* Un combinateur : Synonyme de terme clos.

```cpp
int x = 42;
[&x](){x++;}(); // x est une variable libre
[x](){x++;}(); // x n'est pas une variable libre (elle passe par copie)
```

## Transformation de lambda terme

L'idee est de considérer équivalent:

* $\lambda x.x$
* $\lambda y.y$
* $\lambda z.z$

On peut renomer les variables. Cependant attention:

* $x \lambda x.x \not\equiv y\lambda y . y$
* $\lambda  x . \lambda y . xy \not\equiv \lambda x . \lambda x . xx$

Pour éviter les problemes de renommage. On va les réecrire avec des
nom de variables différentes lorsqu'il ne s'agit pas de la meme.

## Substitution

> La substitution de $x$ par $M$ dans $N$ est noté $[M/x]N$

*Attention* c'est une notation pas une operation

Intuitivement toutes les occurrence libre de $x$ sont remplacé par $M$.

Par exemple :

$[\lambda z . zz / x] \lambda y . xy = \lambda y . ( \lambda z . zz)y$

## Beta conversion

$(\lambda x . M) N \text{    } \beta \text{    } [N/x]M$

## Beta redex

Un $\beta$-redex est un terme sous la forme: $(\lambda  x . M)N$

L'idée est de réduire petit pas par petit pas.

Example:

* $(\lambda x . x) y \rightarrow y$
* $(\lambda x . xx) y \rightarrow yy$
* $(\lambda x . xx)(\lambda x . xx) \rightarrow (\lambda x . xx)(\lambda x . xx)$

Le troisieme exemple nous montre que la beta reduction ne simplifie pas toujours.

### Omega combinators

* $\omega \equiv \lambda x. xx$
* $\Omega \equiv ww$
* $\widetilde\Omega \equiv \lambda x .x(xx)$

------------

Plus d'exemple (qui se passe mieux):

* $(\lambda x .xyx) \lambda z .z \rightarrow (\lambda z . z)y(\lambda z .z)$
* $(\lambda x . x)((\lambda y.y)x) \rightarrow (\lambda x . x)(x)$
* $(\lambda x . x)((\lambda y.y)x) \rightarrow ((\lambda x . x)x)$
* $(\lambda x . x)((\lambda y.y)x) \overset{*}{\rightarrow} x$

## Forme normal

* Identite : $\lambda x . x$ est en forme beta normal.
* II a une forme beta normal. On peut effectuer un Beta réduction.
* II est donc fortement normalizable.
* $\Omega$  est faiblement normalizable.
$\newline\Omega = (\lambda x.xx)(\lambda x.xx) \rightarrow (\lambda x.xx)(\lambda x.xx)=\Omega$
* $KI\Omega$ est faiblement normalizable. $(K = \lambda x.(\lambda y.x))$
$\newline KI\Omega \rightarrow I$

## Propriete de Church-Rosser

* Si $R$ a la propriete de Church-Rosser alors tous les programmes sont Beta
convertible.
* Si $R$ est Church-Rosser alors il a une unique forme normale.

Propriété :

> **B-Reduction est Church-Rosser**

Donc tous les termes a au moins une unique forme normale.

# Types

Le lambda calcul est un vrai langage fonctionnel. On peut donc représenté
les types classiques voici comment.

## Booleen

On aimerai un booleen qui soit une fonction qui prend deux arguments.

$MNL$

Si le booleen est vrai il renvoi le premier argument $N$ sinon $L$.

* $T := \lambda ab.a$
* $F := \lambda ab.b$

## Integer

$n := \lambda f . \lambda x . f^nx = \lambda f . \lambda x . (f...(f x)...)$

Donc:

* $0 = \lambda fx.x$
* $1 = \lambda fx.f x$
* $2 = \lambda fx.f (f x)$
* $3 = \lambda fx.f (f (f x))$

## Succ

$succ := \lambda n. \lambda f. \lambda x.f(nfx)$

## Plus

$plus := \lambda m . \lambda n . \lambda f . \lambda x . mf(nfx)$

## Pair

* $pair := \lambda x y . \lambda f . fxy$ (Constructeur)
* $first := \lambda p . pT$ (Accesseur 1^er^ element)
* $second := \lambda p . pF$ (Accesseut 2^nd^ element)

# Recursion

On utilise les combinateurs de points fixes. Il en existe plusieurs par exemple:

Curry's $Y$ Combinator:

> $Y := \lambda f . ( \lambda x . f(xx))(\lambda x . f(xx))$

Turing; s $\Theta$ Combinator:

> $\Theta := (\lambda xy . y(xxy))(\lambda xy . y(xxy))$

# Logique combinatoire

L'idée est quue l'on a plus besoin de $\lambda$.

On a besoin de:

* $I$ fonction identité
* $K$ fonction boolean (True)
* $S$ fonction distributeur

Tq:

* $I x = x$
* $K x y = x$
* $S x y z = x z (y z)$

La logique combinatoire à la même expressivité que le lambda calcul.

C'est très simple mais peut lisible du coup on a garder le lambda calcul.

# Lambda calcul typé

La notion de type sont des objets syntaxique associé a un terme.

Cela a pour but d'interdir des lambdas termes qui ne peuvent pas se normaliser
et qui ont par ailleur pas beaucoup de sens.

Exemple:

$\omega := \lambda x . xx$

On a un symbol $\rightarrow$ et un ensemble de types ($\alpha, \beta, \dots$)

$\alpha \rightarrow \beta \rightarrow \gamma = \alpha \rightarrow
(\beta \rightarrow \gamma)$

$\lambda^{\rightarrow}$ est fortement normalisable. C'est a dire que
tout lambda expression (typé) est normalisable.
