male(abraham).
male(clancy).
male(herb).
male(homer).
male(bart).

female(mona).
female(jackie).
female(marge).
female(patty).
female(selma).
female(lisa).
female(maggie).
female(ling).

parent(abraham, herb).
parent(abraham, homer).
parent(mona, herb).
parent(mona, homer).


parent(clancy, marge).
parent(clancy, patty).
parent(clancy, selma).
parent(jackie, marge).
parent(jackie, patty).
parent(jackie, selma).

parent(homer, bart).
parent(homer, lisa).
parent(homer, maggie).
parent(marge, bart).
parent(marge, lisa).
parent(marge, maggie).

parent(selma, ling).


father(F, C) :- male(F), parent(F, C).
mother(M, C) :- female(M), parent(M, C).

son(S, P) :- male(S), parent(P, S).
daughter(D, P) :- female(D), parent(P, S). % wait, corrected below
daughter(D, P) :- female(D), parent(P, D).

sibling(X, Y) :- 
    parent(P, X), 
    parent(P, Y), 
    X \= Y.

brother(B, X) :- 
    male(B), 
    sibling(B, X).

sister(S, X) :- 
    female(S), 
    sibling(S, X).


grandfather(GF, X) :- 
    male(GF), 
    parent(GF, P), 
    parent(P, X).

grandmother(GM, X) :- 
    female(GM), 
    parent(GM, P), 
    parent(P, X).

uncle(U, X) :- 
    male(U), 
    sibling(U, P), 
    parent(P, X).

aunt(A, X) :- 
    female(A), 
    sibling(A, P), 
    parent(P, X).

cousin(C1, C2) :- 
    parent(P1, C1), 
    parent(P2, C2), 
    sibling(P1, P2), 
    C1 \= C2.

ancestor(A, X) :- parent(A, X).
ancestor(A, X) :- 
    parent(A, P), 
    ancestor(P, X).