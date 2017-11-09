---
title: "Theorie des Langages 6"
author: [Fabrizio Jonathan]
date: 9 Novembre 2017
header-includes:
  - \usepackage{fourier}
  - \usepackage{tikz}
...

# Exemple d'un langage Context Free

* S $\rightarrow$ 'c' | 'd' | 'n' | **\color{red}LIST**
* LIST $\rightarrow$ 'c' **\color{red}LISTTAIL** | 'd' **\color{red}LISTTAIL** | 'n' **\color{red}LISTTAIL**
* LISTTAIL $\rightarrow$ ',' **\color{red}LIST** | 'and' 'n' | 'and' 'c' | 'and' 'd'

Il y a chaque fois un seul element non terminaux dans la partie droite.
On remarque donc qu'il sagit d'un langage regulier.

\begin{center}
\begin{tikzpicture}[scale=0.2]
\tikzstyle{every node}+=[inner sep=0pt]
\draw [black] (19.7,-21.2) circle (3);
\draw (19.7,-21.2) node {$S$};
\draw [black] (59.5,-21.2) circle (3);
\draw [black] (59.5,-21.2) circle (2.4);
\draw [black] (30.9,-33.7) circle (3);
\draw (30.9,-33.7) node {$LIST$};
\draw [black] (45.1,-33.7) circle (3);
\draw (45.1,-33.7) node {$LT$};
\draw [black] (59.5,-33.7) circle (3);
\draw [black] (28.269,-32.263) arc (-122.73969:-153.53963:20.961);
\fill [black] (28.27,-32.26) -- (27.87,-31.41) -- (27.33,-32.25);
\draw (23.46,-30.08) node [left] {$\epsilon$};
\draw [black] (22.7,-21.2) -- (56.5,-21.2);
\fill [black] (56.5,-21.2) -- (55.7,-20.7) -- (55.7,-21.7);
\draw (39.6,-20.7) node [above] {$c,\mbox{ }d,\mbox{ }n$};
\draw [black] (33.9,-33.7) -- (42.1,-33.7);
\fill [black] (42.1,-33.7) -- (41.3,-33.2) -- (41.3,-34.2);
\draw (38,-34.2) node [below] {$c,\mbox{ }d,\mbox{ }n$};
\draw [black] (48.1,-33.7) -- (56.5,-33.7);
\fill [black] (56.5,-33.7) -- (55.7,-33.2) -- (55.7,-34.2);
\draw (52.3,-34.2) node [below] {$and$};
\draw [black] (59.5,-30.7) -- (59.5,-24.2);
\fill [black] (59.5,-24.2) -- (59,-25) -- (60,-25);
\draw (60,-27.45) node [right] {$c,\mbox{ }d,\mbox{ }n$};
\end{tikzpicture}
\end{center}

\newpage

# Hierarchie de chomsky

![Hierarchie de chomsky](https://ds055uzetaobb.cloudfront.net/image_optimizer/337e7772f1a344af1f00825ba6378aaedbb4d836.png)

* Type 0: $\rightarrow$ [Machine de Turing](https://fr.wikipedia.org/wiki/Machine_de_Turing)
* Type 1:
    * Monotonie
    * Contexte Sensitive $a^nb^nc^n$ $\rightarrow$ Automate borne lineaire
* Type 2:
    * Context Free $a^nb^n$ $\rightarrow$ Automate a pile
* Type 3:
    * Grammaire reguliere (langage rationnel) $a^*b^*$ $\rightarrow$ Automate
* Type 4:
    * Contexte Fini

* P: Temps polynomial sur une machine de turing deterministe.
* NP: Templs polynomial sur une machine de turing non deterministe.

## Compilateur

Analyse lexical (Type 3) $\rightarrow$ Analyse syntaxique (Type 2) $\rightarrow$
Analyse Semantique (Type 1)

--------

Simplification:

* $A \rightarrow \varepsilon$ On ajoute epsilon au context Free (Ca ne change
pas son expressivite).

## Grammaire ambigue

1. S $\rightarrow$ S '+' S
1. S $\rightarrow$ 'n'

On peut faire deux arbres de derivation different.

Dans ce cas on dit que la grammaire est ambigue. On veut donc modifier
la grammaire pour regler ce probleme.

1. S $\rightarrow$ S + S~n~ | S~n~
1. S~n~ $\rightarrow$ n

Ici il n'y a plus d'ambiguite.
