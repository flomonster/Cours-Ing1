---
title: "System 7"
author: [Auer Erwan]
date: 2018-02-15
...

# Correction Partiel System

1. Deux conditions : Quand le type d'accés effectué est mappé mais sans les bonnes
permissions et quand on accéde à une zone mémoire non mappée.

2. Etat 1: New, Etat 2: Ready, Etat 3: Running, Etat 4: Waiting, Etat 5: Dead
3. Utile pour récupérer la valeur de retour du process avec wait()
4. Le round-robin utilise un quantum de temps pour faire tourner les processus.
En cas de syscall, on fait prend le process suivant en conservant le quantum actuel.
5. Schéma => voir cours 4. On utilise les 10 premiers bits pour récupérer l'adresse
dans le page directory et les 10 suivants pour son adresse dans la page table. Enfin
les bits restants servent à l'offset dans la page finale. Pour augmenter le nombre de pages
disponibles, on peut utiliser les 2 premiers bits pour stocker le directory pointer
dans les registres PDPTE.
6. Le paging sert au mapping de fichier, au on-demand paging et au copy-on-write //FIXME
7. Première solution, le handler va prendre des pages non utilisés pour les mettre
dans le disque. Pour un mapping de fichier, celui-ci s'effectue de demande
d'accés causant un page fault, mappant ainsi le fichier
8. FIXME
9. Fork + execve + wait

# Correction Partiel ASSE

1. Un fichier objet contient du code, des données et des informations pour le
linker.
2. La relocation sert à patcher ultérieurement les adresses des fonctions
3. .type explicite le type d'un symbole, .global explicite le binding d'un
symbole, .hidden explicite la visibilité, .text indique que l'on rentre dans
la section text et .section ksyms indique que l'on rentre dans la section ksyms
.size sert à indiquer la taille du symbole
4. PLT = procedure linkage table
5. ld = linkage statique
6. ld.so charge les bibliotheques dynamiques; resoudre les symboles.
7. Le prologue et l'epilogue servent à conserver l'état de la stack lors d'un appel
de fonction.
8. 1 n'est pas valide, pour cause de taille; 2 est valide; 3 n'est pas valide, 2 déréfencements;
4 est valide; 5 est valide; 6 est valide mais segfault; 7 est fausse car 2 déréfencements
