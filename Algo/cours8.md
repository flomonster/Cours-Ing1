---
title: "Algo 8"
author: [Amsallem Florian]
date: 2017-11-02
...

# Algo

* Numero: 8
* Prof: Alexandre Duret-Lutz
* Date: 02 Novembre 2017

## Regardons du code.. (sale...)

En c il a deux valeurs pour lequel:

```C
x = -x
```

`0` et `MIN_INT`

Voila des fonctions moches:

```C
unsigned int_width(int i)
{
  unsigned n = 0;
  for (; i / 10 != 0; i /= 10, ++n)
    continue;

  return i < 0 ? n + 2 : n + 1;
}
```

```C
unsigned int_width(int i)
{
  return i == 0 ? 1 : i < 0 ? log10(-(long)i) + 2 : log10((long)i) + 1;
}
```

```C
unsigned int_width(int i)
{
  return i ? log10(abs(i == 1 << 31 ? i - 1 : i)) + 1 + (i < 0) : 1;
}
```

```C
unsigned int_width(int i)
{
  char str[12];
  return sprintf(str, "%d", i);
}
```

`gcc` fait de la magie !

Question existentielle:

> Dans 50 ans on compilera encore ?
