competitor(sumsum, appy).
developed(galacticas3, sumsum).
smartphone(galacticas3).
stole(stevey, galacticas3).
boss(stevey, appy).
unethical(Boss) :-
    boss(Boss, Company),
    stole(Boss, Tech),
    business(Rival),
    developed(Tech, Rival),
    rival(Rival, Company).
rival(X, Y) :- competitor(X, Y).
business(X) :- smartphone(Y), developed(Y, X).
