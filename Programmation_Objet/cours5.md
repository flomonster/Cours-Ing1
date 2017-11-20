---
title: "Approches Objet de la Programmation 5"
author: [Didier Verna]
date: 2017-11-20
...

# Attributs de classe

Ce sont des variables propre a la classe et non a l'objet.

L'acces ne necessite pas l'existence d'une instance.

On appelle ca `static` en c++ et java.

```c++
class Human
{
  static unsigned population_;
}
```

# Niveau de protection

* Private: Accessible uniquement depuis la classe
* Public: Accessible depuis n'importe ou.

Lorsqu'un attribut est private on peut utiliser un **getter**/**setter** pour
modifier celui depuis l'exterieur de la classe tout en controlant la
modification.

```java
public class Human
{
  public String name ()
  {
    return name;
  }

  public void rename (String _name)
  {
    name = _name;
  }

  private String name;
  private final Gender gender;
  private final int birthYear;
}
```

# Amitie

* Principe d'exeception au regime de privatisation.
* Acces privilegie depuis le'xterieur autorise au cas par cas.
* Le concept d'amitie est variable selon les langages. (Il n'existe pas en java)

**D'un point de vue genie logiciel c'est pas terrible.**

```c++
class Human
{
  friend void birth_control (const Human& human);
}

void birth_control (const Human& human)
{
  std::cout << "The NSA knows about " << human.name_ << "...";
}

birth_control(h1);
```
