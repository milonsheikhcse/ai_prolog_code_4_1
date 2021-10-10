go:- write("Insert the radius of Circle :"),nl,
read(R),nl,
area(R).
area(R):-
    RR is(3.1416*R*R),write(RR).
