---
title: "Theorie des Langages 9"
author: [Fabrizio Jonathan]
date: 20 Novembre 2017
header-includes:
  - \usepackage{fourier}
...

# Parser LR

* S $\rightarrow$ "(" S ")"
* S $\rightarrow$ "n"

La pile du parser peut avoir plusieurs etats:

* $\varepsilon$
* 'n'
* (^^+^^'n'
* (^^+^^S
* (^^+^^S)
* S
* (^^+^^S

Il y a quatre actions:

* S $\rightarrow$ Shift (On stack)
* R $\rightarrow$ Reduce (On applique la regle)
* ACC $\rightarrow$ Accepted (Fin, la pile est vide le flux est fini)
* E $\rightarrow$ Error

# LL
## Automate a pile

Regles pointes

0. $\varepsilon \rightarrow$ S$

Ceci permet de construire l'automate a pile facilement.
