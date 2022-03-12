solution(P) :-
path(0, 0, [state(0, 0)], P).
path(2, 0, [state(2, 0)|_], []).
path(0, 2, C, ['Pour 2 gallons from 3-Gallon jug to 4-gallon.'|R] ) :-
not(member(state(2, 0), C)),
path(2, 0, [state(2, 0)|C], R).
path(X, Y, C, ['Fill the 4-Gallon Jug.'|R]) :-
X < 4,
not(member(state(4, Y), C)),
path(4, Y, [state(4, Y)|C], R).
path(X, Y, C, ['Fill the 3-Gallon Jug.'|R]) :-
Y < 3,
not(member(state(X, 3), C)),
path(X, 3, [state(X, 3)|C], R).
path(X, Y, C, ['Empty the 4-Gallon jug on ground.'|R]) :-
X > 0,
not(member(state(0, Y), C)),
path(0, Y, [state(0, Y)|C], R).
path(X, Y, C, ['Empty the 3-Gallon jug on ground.'|R]) :-
Y > 0,
not(member(state(X, 0), C)),
path(X, 0, [state(X, 0)|C], R).
path(X, Y, C, ['Pour water from 3-Gallon jug to 4-gallon until it is full.'|R]) :-
X + Y >= 4,
X < 4,
Y > 0,
NEW_Y is Y - (4 - X),
not(member(state(4, NEW_Y), C)),
path(4, NEW_Y, [state(4, NEW_Y)|C], R).
path(X, Y, C, ['Pour water from 4-Gallon jug to 3-gallon until it is full.'|R]) :-
X + Y >=3,
X > 0,
Y < 3,
NEW_X is X - (3 - Y),
not(member(state(NEW_X, 3), C)),
path(NEW_X, 3, [state(NEW_X, 3)|C], R).
path(X, Y, C, ['Pour all the water from 3-Gallon jug to 4-gallon.'|R]) :-
X + Y =< 4,
Y > 0,
NEW_X is X + Y,
not(member(state(NEW_X, 0), C)),
path(NEW_X, 0, [state(NEW_X, 0)|C], R).
path(X, Y, C, ['Pour all the water from 4-Gallon jug to 3-gallon.'|R]) :-
X + Y =< 3,
X > 0,
NEW_Y is X + Y,
not(member(state(0, NEW_Y), C)),
path(0, NEW_Y, [state(0, NEW_Y)|C], R).