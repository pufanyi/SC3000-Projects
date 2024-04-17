% Facts about the offspring of Queen Elizabeth
offspring(prince_charles, male, 1).
offspring(princess_ann, female, 2).
offspring(prince_andrew, male, 3).
offspring(prince_edward, male, 4).

% Helper rule to compare offspring for sorting
compare_offspring_new(Order, X, Y) :-
    offspring(X, GenderX, OrderX),
    offspring(Y, GenderY, OrderY),
    compare(Order, OrderX, OrderY).

% Determine the line of succession based on the new rule
new_line_of_succession(SuccessionList) :-
    findall(Name, offspring(Name, _, _), Offspring),
    predsort(compare_offspring_new, Offspring, SuccessionList).
