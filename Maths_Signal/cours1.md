---
title: "Mathématique du signal 1"
author: [Siarry Patrick]
date: 2018-02-05
...

# Introduction

Il y a deux domaines:

* Temporel: On observe les signaux.
* Fréquentiel: On traite les signaux.

Il nous faut donc un outil pour passer de l'un à l'autre.

Les outils sont différent en fonction des signaux. (Ex: continus..)

Nous allons étudier *la transformé de Laplace*.

# Rappels

## Résolution d'une équation différentielle linéaire et à coefficients constants

Exemple:

\begin{equation}
y''(t) + [y'(t)]^2-6y(t) = 12t+20
\end{equation}

* inconnue: $y(t)$
* Equa diff du 2eme ordre

### Méthode classique (2 étapes)

#### Premiere étape

ESSM (Equation Sans Second Membre)

On cherche la solution générale de:
\begin{equation}
y''(t) + [y'(t)]^2-6y(t) = 0
\end{equation}

On cherche la solution sous la forme:

$y(t)=e^{rt}$ On cherche $r$

$y'(t) = r.e^{rt}\\ y''(t) = r^2 e^{rt}\\ (r^2+r-6)e^{rt} = 0$

$r^2 + r - 6 = 0$ équation caractéristique.

$\Delta = 1 + 24 = 25$ Donc $r_1 = \frac{-1+\sqrt{25}}{2}=2\\
r_2 = \frac{-1-\sqrt{25}}{2}=-3$

Solution générale de l'ESSM:
\begin{equation}
y(t)=A.e^{2t}+B.e^{-3t}
\end{equation}

#### Seconde étape

EASM éq avec second membre. On cherche une solution particulière.

\begin{equation}
y''(t) + u'(t) - 6y(t)=12t+20
\end{equation}

On peut trouver une solution particuliere de la meme forme que le second membre.

$y(t) = at+b$ On cherche $a$ et $b$.

$y''(t) = 0\\y'(t) = a\\ a - 6at - 6b = 12t + 20$

$\left\{\begin{aligned}
a - 6b & = 20\\
-6a & = 12 \implies a = -2
\end{aligned}\right\} \implies 6b=a -20=-22$

$b=-11/3$

* Solution générale de l'EASM =
* Solution générale de l'EASM +
* Solution particulière de l'EASM

\begin{equation}
y(t) = -2t-11/3 + A.e^{2t}+B.e^{-3t}
\end{equation}

A et B dépendent des 2 conditions initiales.

## Produit de convolution

Soit $x(t)$ et $y(t)$
\begin{equation}
x)t_ \times y(t) = \int_{-\infty}^{\infty} x(\tau).y(t-\tau).d\tau
\end{equation}

Proprétés:

* commutativité: $x(t) \times y(t)=y(t)\times x(t)$

* associativité: $x(t) \times [y(t) \times z(t)] = [x(t) \times y(t)] \times z(t)$

* distributivité / addition: $x(t) \times [y(t) + z(t)] = [x(t) \times y(t)] +[x(t) \times z(t)]$

* existe-t-il une "unité de convolution"?

$x(t) \times u(t) = x(t)$

Existe t il u(t) unité de convolution:

\begin{equation}
x(t) \times u(t) = u(t) \times x(t) = x(t), \forall x(t)
\end{equation}

Si oui c'est le PIC de DIRAC (théoréme de distribution.

## Transformation de Laplace

C'est une fonction complexe d'une variable complexe $p = \sigma + jw$

* $w$ est la pulsation
* $w=2 \pi f$ ou $f$ est la fréquence

$f(t) \implies F(p)$

\begin{equation}
F(p) \equiv \int_0^{+\infty} f(t).e^{-pt}.dt
\end{equation}

Définition

Existence ? $F(p)$ existe pour tous les signaux f(t) que l'on peut rencontrer.

On suppose généralement que f(t) est *CAUSAL*.

Propriétés:

1. Linéaire: $L[\lambda.f(t) + \mu . g(t)] = \lambda . F(p) + \mu . G(p)$

2. Retard: $G(t) = f(t - \tau)$ Il y a un retard de $\tau$

$L[f(t - \tau)] = e^{-\tau p}.F(p)$

3. Convolution: (compliqué dans l'espace temporel)

$L[x(t) * y(t)] = X(p) .  Y(p)$

Donc le produit de convolution est équivalent au produit ordinaire.

4. Dérivation / Intégration:

$L[\frac{d f(t)}{dt}] = p.F(p) - f(t=0)$

On fait souvent l'hypothése que les conditions initiales sont nulles $f(t=0)=0$

Il est donc trés facile de dériver dans l'espaec p.

  * Dérivé 3 fois $\iff p^3.F(p)$
  * Intégration dans l'espace t $\iff$ diviser par p dans l'espace p.

5. Th des valeurs INITIALE / Th de la valeur finale

Théoreme de la valeur initiale.
\begin{equation}
\lim_{t \to 0} f(t) = \lim_{p \to +\infty} [p.F(p)]
\end{equation}

Théoreme de la valeur finale.
\begin{equation}
\lim_{t \to +\infty} f(t) = \lim_{p \to 0} [p.F(p)]
\end{equation}

Tableau des transformées de laplace é;émentaires.

| t | p |
| - | - |
| S(t) | 1 |
| $u(t)$ Déclaration unitaire | $\frac{1}{p}$ |
| $t.u(t)$ rample unitaire | $\frac{1}{p^2}$ |
| $e^{-at}.u(t)$ | $\frac{1}{p+a}$ |
