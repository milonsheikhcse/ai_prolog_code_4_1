go:- write("Insert base of Triangle :"),nl,
read(A),nl,
write("insert height of Trinagle: "),nl,
read(H),
area(A,H).
area(A,H):-
    R is(0.5*A*H),write(R).
