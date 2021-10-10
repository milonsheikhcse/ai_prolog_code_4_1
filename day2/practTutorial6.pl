motherOf(joe,paul).
motherOf(joe,mary).
fatherOf(jane,paul).
fatherOf(jane,mary).

male(paul).
male(joe).
female(mary).
female(jane).


brotherOfMary(mary,X):-fatherOf(joe,X),male(paul).

