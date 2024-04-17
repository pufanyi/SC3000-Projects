child(charles, elizabeth).
child(ann, elizabeth).
child(andrew, elizabeth).
child(edward, elizabeth).

male(charles).
male(andrew).
male(edward).
female(ann).

birthOrder(charles, 1).
birthOrder(ann, 2).
birthOrder(andrew, 3).
birthOrder(edward, 4).

oldSuccession(X) :-
    male(X),
    child(X, elizabeth),
    birthOrder(X, _).
oldSuccession(X) :-
    female(X),
    child(X, elizabeth),
    birthOrder(X, _).
