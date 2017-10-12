# Theorie des Langages

Numero: 2
Prof: Fabrizio Jonathan
Date: 12 Octobre 2017

Symboles Utiles: Σ ε ∪ ∩ ∅

## Compilateur

Il y a plusieurs etapes:

* Decoupage en entites lexical
  * Il va detecter les identificateurs (les varibles).
* Analyse sementique
  * Verification des types

## Langages Rationnel


L'ensemble des langages rationnels est defini par:

`∀ a ∈ Σ {a} *`

## Expression Rationnel

Exemple un nombre binaire:
({-}∪{+}∪{ε}).({0}∪{1}).({0}∪{1})^*^

Qui peut aussi s'ecrire:
({-}∪{+}∪{ε}).({0}∪{1})^+^

## Simplifions les operateurs sur les langages

```
{ε}    -> ε
{a}    -> a
 .     ->
Σ* \ L -> ^L
```

PS: Le prof aime bien les legos mais n'a pas d'actions chez legoland.

## Automates

Cet automates reconnait les langages suivant cet expression:
```
(a+b)*bab
```
![Automate exemple](http://pauillac.inria.fr/~maranget/X/421/poly/poly114.png)

Pour un **langage algebrique deterministe** il va falloir utiliser un
**automate a pile**.
