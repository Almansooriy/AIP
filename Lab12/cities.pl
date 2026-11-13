
% Facts: Directed edges between cities based on the graph[cite: 88]
edge('Makkah', 'Madinah').
edge('Madinah', 'Makkah').
edge('Makkah', 'Riyadh').
edge('Madinah', 'Taif').
edge('Madinah', 'Tabuk').
edge('Tabuk', 'Taif').
edge('Taif', 'Dammam').
edge('Riyadh', 'Dammam').
edge('Dammam', 'Riyadh').
edge('Dammam', 'Qatif').
edge('Qatif', 'Madinah').

% Rules: Travel predicate with visited list accumulator to prevent infinite loops[cite: 72, 87]
travel(Start, Finish, Path) :-
    path(Start, Finish, [Start], P),
    reverse(P, Path).

path(X, X, P, P).
path(From, To, Visited, Path) :-
    edge(From, Z),
    \+ member(Z, Visited),
    path(Z, To, [Z | Visited], Path).
