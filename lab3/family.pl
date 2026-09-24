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

father(x,y) :- male(x), parent(x,y).

mother(x,y) :- female(x), parent(x,y).

sister(x,y) :- female(x), parent(p,x), parent(p,y), x\=y.

brother(x,y) :- male(x), parent(p,x), parent(p,y), x\=y.