# Prolog_TP1

Question1 :
1.2

 
A partir de ce prédicat ci-dessus, nous retourne bien le père de Henri II, ce qui est vrai selon la dynastie de l’énoncé.
1.3. fille(X,Y):-femme(X),parent(X,Y).
La définir de prédicat fille(X,Y) vrai si X est fille de Y.

1.4. procreer(X,Y):-parent(X,Z),parent(Y,Z).
le prédicat procreer(X,Y) vrai si l’homme X et la femme Y ont procréé ensemble et cela nous permet de retourne le couple qui ont des enfants.

1.5. gdparent(X,Y):- parent(X,Z),parent(Y,Z).
La définir de prédicat gdparent(X,Y) vrai si X est un grand parent de Y.

1.6. gdpere(X,Y):-parent(X,Z),parent(Y,Z).
gdmere(X,Y):-parent(X,Z),parent(Y,Z).
La définir des prédicats gdpere(X,Y) et gdmere(X,Y).

1.7.  ancetre(X,Y):-parent(X,Y).
ancetre(X,y):-parent(Z,Y), ancetre(X,Z).
La définir de prédicat ancetre(X,Y) vrai si X est un ancêtre de Y. donc pour la descendance de Catherine de Médicis nous trouvons bien François I.

1.8. frere(X,Y):-parent(Z,X),parent(Z,Y),homme(X:Y).
soeur(X,Y):-parent(Z,X),parent(Z,Y),fille(X=Y).
La définir de prédicat frere(X,Y) vrai si X est un frère de Y (X et Y ont au moins un parent en
commun). Définir de manière similaire le prédicat soeur(X,Y) et pour le Henri II il nous retourne Madeleine et Marguerite comme sœurs. Deplus, pour le sœur de Charles IX on a Margot.
1.9. oncle(X,Y):-frere(X,Z),homme(Y,Z).
oncle(X,Y):-frere(X,Z),femme(Y,Z).


Exercice2.

2.1. doubler([],[]).
doubler([E|L],[E|[E|LD]]):-doubler(L,LD).
Ce prédicat nous permet d’avoir le double de chacun élément de la liste L et en prenant liste vide [] comme point d’arrêt.

2.2. const_liste(0,X,[]).
const_liste(N,X,[X|L]):- N>1, M is N-1, const_liste(M,X,L).

Ce prédicat nous permet de construire la liste L composée de N fois l’élément X et tenant compte qu’il doit s’arrête sur N-1 en sachant que quel que soit N est positif sinon il s’arrêtera quand il sera utilisé toute la mémoire allouée. 

2.3. developper(N,L,LD).
developper(N,[X|L],LD):- n<0, developper(N,[X|L],LD).
developper(N,[X|L],LD):- N<length(L), developper(N,[X|L],LD).
Pour le développer, ce prédicat n’est marchera pas donc je continue à chercher comment le construire à l’aide de concaténation.
