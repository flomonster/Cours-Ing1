# Cours-S5
Contient toutes les notes des cours du semestre 5 a EPITA

## Pandoc

Les cours sont pris en pandoc. Cela permet d'inserer du latex dans le
markdown.

### Instalation

Ubuntu:

```
apt install texlive pandoc
```

Archlinux:

```
pacman -S texlive-core pandoc
```

Conseil vous pouvez utiliser **HackMD** (voir ci-dessous) pour compiler en
ligne les cours.

### Header

```
---
title: "Nom du cours [#]"
author: [Votre nom]
date: 2017-10-20
...

# Nom du cours

* Numero: #
* Prof: Nom du prof
* Date: 20 Octobre 2017
```

### Utilisation

```
pandoc --template eisvogel --listing moncours.md -o moncours.pdf
```

## HackMD

HackMD vous permet de prendre des notes a plusieur et d'avoir un apercus en
direct !

[HackMD](https://hackmd.io/)
