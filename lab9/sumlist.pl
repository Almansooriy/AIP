% Base case: the sum of an empty list is 0
sumlist([], 0).

% Recursive case: sum of a list with Head and Tail
sumlist([H|T], Sum) :-
    sumlist(T, RestSum),
    Sum is H + RestSum.
