%fait

homme("francoisI").
homme("henri_ii").
homme("francois_ii").
homme("charles_ix").
homme("henri_iii").


homme("emmanuel_philiber").
homme("emmanuel_charles").
homme("victor_amedee").

femme("catherine_de_medicis").
femme("elisabeth").
femme("madeleine").
femme("margot").
femme("marguerite").

parent("francoisI","henri_ii").

parent("henri_ii","margot").
parent("catherine_de_medicis","margot").

parent("henri_ii","henri_iii").
parent("catherine_de_medicis","henri_iii").

parent("henri_ii","charles_ix").
parent("catherine_de_medicis","charles_ix").

parent("charles_ix","elisabeth").

parent("henri_ii","francois_ii").
parent("catherine_de_medicis","francois_ii").

parent("francoisI","madeleine").

parent("francoisI","marguerite").

parent("marguerite","emmanuel_charles").
parent("emmanuel_philiber","emmanuel_charles").

parent("emmanuel_charles","victor_amedee").

%1.1

pere(X,Y):-parent(X,Y),homme(X).
pere(X,Y):-parent(X,Y),femme(X).

%Q1.2

%1.3
fille(X,Y):-femme(X),parent(X,Y).

%1.4
procreer(X,Y):-parent(X,Z),parent(Y,Z).
%1.5

gdparent(X,Y):- parent(X,Z),parent(Y,Z).

%1.6
gdpere(X,Y):-parent(X,Z),parent(Y,Z).
gdmere(X,Y):-parent(X,Z),parent(Y,Z).

%1.7
ancetre(X,Y):-parent(X,Y).
ancetre(X,y):-parent(Z,Y), ancetre(X,Z).

%1.8

frere(X,Y):-parent(Z,X),parent(Z,Y),homme(X=Y).
soeur(X,Y):-parent(Z,X),parent(Z,Y),fille(X=Y).
%1.9
oncle(X,Y):-frere(X,Z),homme(Y,Z).
oncle(X,Y):-frere(X,Z),femme(Y,Z).

%Exercice 2
%2.1
doubler([],[]).
%doubler([E|[]],[E|[E|[]]]).
doubler([E|L],[E|[E|LD]]):-doubler(L,LD).

%2.2
const_liste(0,X,[]).
const_liste(N,X,[X|L]):- N>1, M is N-1, const_liste(M,X,L).

%2.3

developper(N,L,LD).
developper(N,[X|L],LD):- n<0, developper(N,[X|L],LD).
developper(N,[X|L],LD):- N<length(L), developper(N,[X|L],LD).






%Exercice 3
%3.1

traduit(L,M).
traduit([X|L],M):-
