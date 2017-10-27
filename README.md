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

Conseil installez le template [ICI](https://github.com/Wandmalfarbe/pandoc-latex-template)

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

## Floobits

Floobits vous permet d'editer a plusieur sur le meme document.
Vous pouvez l'utiliser avec plusieur editeur:

* [Vim](https://github.com/Floobits/floobits-vim)
* Sublime Text
* IntelliJ
* Directement sur l'editeur en ligne

[![Floobits Status](https://floobits.com/flomonster/Cours-S5.svg)](https://floobits.com/flomonster/Cours-S5/redirect)
