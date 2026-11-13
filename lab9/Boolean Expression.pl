% AND truth table
and(true, true, true).
and(true, false, false).
and(false, true, false).
and(false, false, false).

% OR truth table
or(true, true, true).
or(true, false, true).
or(false, true, true).
or(false, false, false).

% Negation truth table
neg(true, false).
neg(false, true).

% Expression: (A AND B) OR (NOT A AND NOT B)
logicGate(A, B, Output) :-
    and(A, B, X),
    neg(A, NA),
    neg(B, NB),
    and(NA, NB, Y),
    or(X, Y, Output).
