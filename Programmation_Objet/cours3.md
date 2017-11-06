---
title: "Approches Objet de la Programmation 3"
author: [Amsallem Florian]
date: 2017-11-06
...

# Approches Objet de la Programmation

* Numero: 3
* Prof: Didier Verna
* Date: 06 Novembre 2017

## Terminologie: Oriente Objet

Historiquement cela vient d'*Alan Kay* qui travaillait chez Xerox.
Il travaillait sur les ambrillons des Interfaces Graphiques et sur
l'oriente objet.

Programmation multi agent:

> Process immuable qu'on lance et avec lequel on peut interagir avec des
messages, pipes...

L'idee d'oriente objet d'Alan Kay etait a l'origine proche de la programmation
multi agent.

"Message-Oriented Programming" ete un meilleur terme a utiliser.

## Les objets du monde reel

Un objet a deux proprietes:

* Un etat (statique).
* Un comportement (dynamique).
* Des relations avec les autres objets de meme familles ou differentes.

La POO nous aide a exprimer ce type de relations.

**Smalltalk** (1971, publique 1980) est le premier objet dit oriente-objet.
Il a ete dev par *Alan Kay* et *Dan Ingalls*. Tout fonctionne par envoi de
message. Il a ete creer dans le contexte du *DynaBook* (livre dynamique).

**Simula** (1962, les concepts objets ont ete dev en 1967). L'objectif
etait de faire de la simulation d'evenements discrets. On retrouve la notion
de classe, de polymorphisme...

\newpage

## Paysage Oriente-Objet actuel

* Aucune reelle definition.
    * Nombreux langages, visions differentes
    * Ensemble flou de concepts, ni exclusif, ni exhaustif
* Effort de standardisation
    * OMG (Object Management Group) association a but non lucratif.
    * UML (Unified Modelling Language) langage standardise de l'OMG.
(Composants logiciels, interactions, deroulement sequentiel, deploiement
materiel etc..)

\newpage

# Chapitre structurel

* Notion de classe
* Notion d'Objet
* Portee de l'information
* Accessibilite de l'Information

## Notion de classe

But initial: Representer une famille d'objet similaires dotes de certaines
proprietes communes.

```CPP
class Human
{
  std::string name_;
  gender gender_;
  unsigned birth_year_;
}
```

```Java
class Human
{
  String name;
  Gender gender;
  int birthYear;
}
```

### Partie dynamique

```CPP
class Human
{
  std::string name_;
  gender gender_;
  unsigned birth_year_;
  unsigned age (); // On prefere mettre uniquement le prototype.
  void hello ();
}
```

```Java
class Human
{
  String name;
  Gender gender;
  int birthYear;
  int age () { ... }
  void hello () { ... }
}
```

Une classe est statique c'est immuable et connu a la compilation. (Uniquement
dans l'approche classique de la POO).

L'introspection est la possibilite de s'etudier soit meme. (Ex: Java)
L'introcession est la possibilite de s'etudier et se modifier soit meme.
