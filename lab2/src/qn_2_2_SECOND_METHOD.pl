child(charles, elizabeth).
child(ann, elizabeth).
child(andrew, elizabeth).
child(edward, elizabeth).

birthOrder(charles, 1).
birthOrder(ann, 2).
birthOrder(andrew, 3).
birthOrder(edward, 4).

newSuccession(X) :-
    child(X, elizabeth),
    birthOrder(X, _).
