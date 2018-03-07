---
title: "System 7"
author: [Amsallem Florian]
date: 2018-03-07
...

# Comment marche un FileSystem

On peut y acceder par block grace à :

* **lba** (block address).
* Une taille de block (512B, 4KB, 2KB)
* Une queue pour stocker les operations a faire

Quelles sont les operations que l'on peut executer :

* Read
* Write
* Flush (Toutes les operations dans la queue doit être done)

## Disques

Différents types (protocoles) de disque :

* **SCSI**
  * Il y a un vrai protocole avec commandes. Ca sert aussi pour les imprimantes
  scanners...
* **Sata**
  * Mieux que IDE, utilise un **bus en série**. Il utilise SCSI et reste limité par
  ca. Il a une seule queue de taille 32. L'unicité de la queue est chiant pour
  le multi processing.
* **IDE (ATA)**
  * Historiquement utilisé, il n'y a pas de queue, utilise un **bus parallele**.
  (C'est tres lent). Comme SCSI c'est cool, IDE peut lire des commandes SCSI.
* **NVME**
  * Protocole moderne (2010), plus de probleme de seek. 64000 queue avec un
  bus en série. Tous les vendeurs de disques, OS... se sont mis d'accord pour
  avoir un seul driver. L'envoi des requetes est efficasse (une seule memio).

Les différents medium de stockage :

* HD (Rotation)
* Flash (SSD)

Sur **NVME** on peut déffinir des **namespaces**. Un namespace est un set de
partitions.

### Différence entre bus parallele et série

![Bus série / parallele](http://prof.bpesquet.fr/images/content/bus_serie_parallele.png)

## Un fichier

Un fichier a :

* Un nom
* Un format
* Un type
  * Dossier
  * Socket
  * Name Pipe
  * Symbolic link
  * Char device
  * Block device
* Attributs:
  * date
  * owner
  * ACLs
  * archive (NTFS only)
  * hidden (NTFS only)

### Type de fichier

Sur MS-DOS seul les fichiers `com`, `exe` et `bat` peuvent etre executé.

Sur Mac OS un fichier garde l'information du logiciel qui a creer le fichier.

### Operations sur les fichiers

* open(2)/creat(useless now)
* read(2)/write(2)
* lseek(2) (operaiton sur un fd et pas sur le fichier)
* fstat(2)
* other
  * append modes
  * truncate
  * ...

### Virtual File System

Le but est de creer une abstraction pour nos différents disques. (C'est notre
tree sur linux par exemple)

On peut utiliser un arbre unique avec un dossier racine.

Windows utilise une lettre pour préciser le disque.

`mount` est un syscall qui permet de mapper un filesystem a un autre endroit.

NFS:

> Network File System

## Differents niveau d'organisation

* Table de partition
  * Mbr: master boot record
  * Gpt: GUID partition table
* Partition
* Volumes
  * Découpage logique (Lvm sur linux)
* Filesystems
  * ext2/3/4, FAT, ntfs, ffs, ufs...

**FAT**: File Allocation Table, c'est une liste chainé des blocks.

### MBR

**Master Boot Record**, c'est le premier block du disque il contient la table
de partition et le code pour charger l'OS et un magic number.

On a utiliser ca pendant 20 ans..

![MBR Schema](http://www.data-recovery-app.com/images/tu/tu007/MBR.png)

C'est nul car:

* Il y a que 4 partition
* Le CHS n'a aucun sens aujourd'hui.
* Les sizes sont trop petites.

### GUID

**GUID** : Identifiant de tres grande taille

 **GPT** est une partie de **UEFI**.

On veut un nouveau format qui permet de régler ces problemes...

* Il y a deux tables de partitions pour faire de la redondance.
* Les partition sont de table variable

![GUID partition table scheme](https://upload.wikimedia.org/wikipedia/commons/thumb/0/07/GUID_Partition_Table_Scheme.svg/1200px-GUID_Partition_Table_Scheme.svg.png)
