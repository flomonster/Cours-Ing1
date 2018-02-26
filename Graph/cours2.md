---
title: "Graph 2"
author: [Alexandre Duret-Lutz]
date: 2018-02-22
...

# Algos basiques (suite)

## Bellman-Ford

Permet de calculer un plus cours chemin avec des poids négatifs mais sans cycle de somme négatif.

C'est une approche par la programmation dynamique.

Notons $D_k[x]$ la distance de `s` (la source) à `x` qui utilise au plus `k` arrétes.

Si le graph est $G=(V,E,\omega)$:

* $V \rightarrow$ Sommets
* $E \rightarrow$Arcs 
* $\omega \rightarrow$ Poids avec:
  * $\omega(x,x)=0$
  * $\omega(x,y)=\infty$ si $(x,y) \not \in E$
  
$D_1[t] = \omega(s, t)$
$k \in [2, ?], D_k[t] = min\{D_{k-1}[x] + \omega(x,t) | x \in v\}$

```python3
def BellmanFord1(V, E, w, s):
  for x in V:
    D[1][x] = w(s, x)                                #|V|
  for k in range(2, len(V)):                     #|V|²
    for t in V:            
      D[k][t] = min(D[k-1][x] + w(x, t))             #|V|³
  return D[len(V) - 1]
```

La complexité est de $\Theta(|V|^3)$

![Déroulement de l'algo de Bellman-Ford](https://cdn.programiz.com/sites/tutorial2program/files/Bellman-Ford-Algorithm.jpg)

### Optimisation 1

Ne pas essayer de passer par un `x` qui n'a pas d'arc vers `t`.

```python3
def BellmanFord2(V, E, w, s):
  for x in V:                                        #|V|
    D[1][x] = w(s, x)                                
  for k in range(2, len(V)):                         #|V|
    D[k] = D[k - 1]                                  #|V|²
    for (x,t) in E:                                  #|V|.|E|
      D[k][t] = min(D[k][t], D[k - 1][x] + w(x, t))  #|V|.|E| 
  return D[len(V) - 1]
```

### Optimisation 2

On remplace $D_1, D_{k-1}$ et $D_k$ par $D$.

```python3
def BellmanFord3(V, E, w, s):
  for x in V:                                        
    D[x] = w(s, x)                                
  for k in range(2, len(V)):                    
    for (x,t) in E:                                
      D[t] = min(D[t], D[x] + w(x, t)) #|V|.|E|
  return D
```
**Attention**: `D[x]` utilise peut-être plus que `k` arcs à l'iteration `k`.

### Optimisation 3

Il faudrait arréter l'algo dès qu'une ittération de `k` ne change pas `D`.

Si le graph à des cycles de somme négatif `D` change toujours

### Avec les parents

```python3
def BellmacFordP(V, E, w, s):
  for k in range(2, len(v) - 1):
      for (x, t) in E:
          p = D[x] + w(x, t)
          if p < D[t]:
              D[t] = p
              father[t] = x
  return D, father
```

## Calculs de distance de `n` sources à `n` dest

On veut une matrice des distance D[s, t]
Par programmation dynamique D_1[s, t] = w(s, t)
K \appartient [2, len(v) - 1] D[k][s, t] = min(D[k - 1][s, x] * w(x, t))

### Slow Dist

```python3
def slowdist(v, e, w):
  d[1] = w                                      #|v|²
  for k in range(2, len(v)):                    #|v|
    for s in v:                                 #|v|²
      for t in v:                               #|v|³
        d[k][s, t] = min(d[k-1][s, x] + w(x,t)) #|v|⁴
  return d[len(v) - 1]
```

La complexité est de $\Theta(|V|^4)$

### On peut faire de l'exponentiation rapide

```python3
def slowdist(V, E, w):
  d[1] = w                                      #|v|²
  for k in range(2, log(len(V)):                    #|v|
    for s in V:                                 #|v|²
      for t in V:                               #|v|³
        d[k][s, t] = min(d[k-1][s, x] + d[k-1][s, x]) #|v|⁴
  return d[len(V) - 1]
```

### Floyd-Warshall

C'est un algo de prog dynamique.

On a des `D[k][s,t]` la longueur de PCC de `s` à `t` qui ne passe que par les `k` premiers sommets.

$D_0[s, t] = \omega(s, t)$
$h \in [1, |V|] D-k[s, t] = min(D_{k-1}[s,t], D_{k-1}[s,k] + D_{k-1}[k,t])$

```python3
def FloydWarshall(V, E, w):
  D = w
  for k in V:
    for s in V:
      for t in V:
        D_bis[s, t] = min (D[s,t], D[s, k] + D[k, t])
    D = D_bis
  return D
```

La complexité de cet algo est $\Theta(|V|^3)$

### Floyd-Warshall avec les chemins

```python3
def FloydWarshall(V, E, w):
  D = w
  for k in V:
    for s in V:
      for t in V:
        m = D[s, k] + D[k , t]
        if m >= D[s, t]
          D_bis[s, t] = D[s, t]
        else
          D_bis[s, t] = m
          father[s, t] = father[k, t]
    D = D_bis
  return D
```
