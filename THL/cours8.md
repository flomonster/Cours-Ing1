---
title: "Theorie des Langages 8"
author: [Fabrizio Jonathan]
date: 9 Novembre 2017
header-includes:
  - \usepackage{fourier}
...

# Parser LL(k)

[Voici la page wikipedia](https://en.wikipedia.org/wiki/LL_parser)

* Le premier **L** est pour "left to right".
* Le deuxieme est pour "leftmost derivation".
* Le **k** indique le nombre de fois que l'on va regarder en avance (le follow).

## Exemple

* Z $\rightarrow$ YZ
* Z $\rightarrow$ "d"
* Y $\rightarrow$ "c"
* Y $\rightarrow \varepsilon$
* X $\rightarrow$ Y
* X $\rightarrow$ "a"

### Ensemble NULL

L'ensemble *NULL* est l'ensembles des elements non terminaux qui peuvent donner
un mot vide.

$NULL = \{Y, X\}$

### Ensemble First

X $\rightarrow$ Y $\rightarrow$ First(X) $\supset$ First(Y)

X $\rightarrow$ "a" $\rightarrow$ First(X) $\supset \{a\}$

* $First(X)=\{a, c\}$
* $First(Y)=\{c,\}$
* $First(Z)=\{d, a, c\}$

Quand on calcul l'ensemble *First* il faut avoir un oeil sur l'ensemble *NULL*.

### Ensemble Follow

* Z $\rightarrow$ YZ
    * $\rightarrow$ Follow(X) $\supset$ First(YZ) = FIRST(Y) $\cup$ FIRST(Z)
    * $\rightarrow$ Follow(Y) $\supset$ First(Z)
* Z $\rightarrow$ "d" $\rightarrow \emptyset$
* Y $\rightarrow$ "c" $\rightarrow \emptyset$
* Y $\rightarrow \varepsilon \rightarrow \emptyset$
* X $\rightarrow$ Y $\rightarrow$ Follow(Y) $\supset$ Follow(X)
* X $\rightarrow$ "a" $\rightarrow \emptyset$

-------

Donc cela nous donne:

* Follow(X) $= \{a, c, d\}$
* Follow(Y) $= \{a, c, d\}$
* Follow(Z) $= \emptyset$

### Table du parser

1. Z $\rightarrow$ YZ
1. Z $\rightarrow$ "d"
1. Y $\rightarrow$ "c"
1. Y $\rightarrow \varepsilon$
1. X $\rightarrow$ Y
1. X $\rightarrow$ "a"

|   |  a   |  c   |  d   |
| - | ---- | ---- | ---- |
| X | 6/5  | 5/5  |  /5  |
| Y |  /4  | 3/4  |  /4  |
| Z | 1/   | 1/   | 12/  |

\newpage

## On va parse !

* E $\rightarrow$ E + T/F
* T $rightarrow$ R * F | F
* F $\rightarrow$ n

```c
void parse_E()
{
  parse_T();
  while (get_next_token() == TOK_PLUS)
  {
    eat(TOK_PLUS);
    parse_+();
  }
}
```

```c
void parse_T()
{
  parse_F();
  wihle (get_next_token() == TOK_STAR)
  {
    eat(TOK_STAR);
    parse_F();
  }
}
```

```c
void parse_F()
{
  eat_number();
}
```

\newpage

### Creer un AST pendant le parsing

```c
NODE parse_E()
{
  NODE t = parse_T();
  while (get_next_token() == TOK_PLUS)
  {
    eat(TOK_PLUS);
    NODE tp = parse_+();
    t = new_node(t, '+', tp);
  }
  return t;
}
```

```c
NODE parse_T()
{
  NODE f = parse_F();
  wihle (get_next_token() == TOK_STAR)
  {
    eat(TOK_STAR);
    NODE fp = parse_F();
    f = new_node(f, '*', fp);
  }
  return f;
}
```

```c
void parse_F()
{
  eat_number();
}
```

\newpage

# Parse LR

* Le premier **L** est pour "left to right".
* Le deuxieme est pour "rightmost derivation".

Le **LR** est plus expressif que le **LL**.

Le principe de ce parser est de **shift** (prendre des elements) et de les
stocker dans une pile. Lorsque la tete de pile reconnais un element produit par
une regle alors on reduit la pile par l'element qui produit la regle.
