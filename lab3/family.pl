male(omar).
male(khalid).
male(yousef).
male(rayan).

female(lina).
female(layla).
female(dana).

parent(omar,layla).
parent(omar,khalid).
parent(omar,dana).

parent(lina,layla).
parent(lina,khalid).
parent(lina,dana).

parent(layla,yousef).
parent(layla,rayan).

father(X,Y) :- male(X), parent(X,Y).

mother(X,Y) :- female(X), parent(X,Y).

sister(X,Y) :- female(X), parent(P,X), parent(P,Y), X\=Y.

brother(X,Y) :- male(X), parent(P,X), parent(P,Y), X\=Y.