##A voir
* diff lgage interprete et compile

##A lire
* SICP par Abdson Sussmann

#Approches Fonctionnelles de la programmation

##Introduction

* la programmation fctelle est un paradigme
* plusieurs types de programmation fonctionnelle: pur et impure
    * en prog fctelle pure, **interdiction** de faire des effets de bord
    * les assignations de valeurs donnent des constantes et non des variables
    * les lgages purs sont "impurifies" lors de la compil car necessaire d'avoir un minimum d'effet de bord
    * "quoi faire" plutot que "comment faire"
    * comme tout paragigme: affecte l'expressivite d'1 lgage, la maniere de penser ds un lgage et un paradigme est poreux

* utile pour l'evaluation
* meme chose que pour l'approche objet, commune a beaucoup de langages
* les lgages fctionnels sont nes du **Lambda calcul** (fin des annees 40')
* concept ne quasi simultanement avec la programmation sur ordi
* annees 90 (1994), nouvel interet de l'industrie pour la prog fctelle
    * courbe d'interet pour la prog fctelle en fct du tps dans l'industrie est identique pour l'interet de l'indus envers l'IA et le LISP (checker AI winter)

* lors de la conf OOPSLA (~2010) jrnee speciale pour la prog fonctionnelle
    * les membres ont commence a considerer la prog fctelle et l'implem dans d'autres lgages

* le lambda calcul est apparu recemment en C++ (avec la version 11?)
* approche top --> down

* plusieurs lgages: Lisp, Haskell (2 lgages tres diferents)

    * Haskell: lgage tres contraignant: car "force" a la prog fonctionnelle pure
        * politique d'evaluation lazy
        * bcp de syntaxe
        * assez proche du Caml

    * Lisp: lgage tres liberal, reflexif, permet l'intersession (voir prog objet)...
        --> "Lisp is a programmable language", citation de ?
        * Lisp est dit impur
        * politique d'evaluation stricte
        * peu de syntaxe
        * premier lgage fonctionnel
        * ne en 1958
        * lgage interprete pdt lgtmps
        * avait son propre hardware pour etre utilise
        * plein de memleaks au depart
        * (les fonctions sont des objets de premiere classe?)
        * MacArthy ne savait meme pas la puissance du lgage et l'adaptabilite de celui-ci
        * Common Lisp: premier lgage oriente objet stdardise
        * objectifs du Lisp: minimaliste, extensif, homoiconique (euh... what is dis?)

    * les deux permettent pour autant de faire la meme chose

* bcp de lgages de prog fctelle sont stardises par la communaute avec une implem officielle
* **Lisp n'est PAS un lgage mais une FAMILLE de lgages**
    * Js est tres proche de Lisp
    * il existe des **dialectes** du Lisp
        * tres utilise: le Scheme, tres utilise pdt lgtmps en comme premier lgage de prog en univ. Principal stdard R6RS
        * Common Lisp (1994): stdard ANSI: avantages: bcp de bibliotheques de fcts

* plusieurs elem propres a la prog fctelle
    * des expressions
    * des definitions (expressions nommees)
    * evaluations (de definitions ou d'expression)

##De l'imperatif au fonctionnel

* exemple: "la somme des carres des entiers entre 1 et N" (cf slide du LRDE)
* objectif: plus grande clarte et concision












