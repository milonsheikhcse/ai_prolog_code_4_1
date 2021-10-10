parent(pam, bob).
parent(tom, bob).
parent(tom, liz).
parent(bob,ann).
parent(bob,pat).
parent(pat, jim).

female( pam).
male( tom).
male( bob).
female( liz).
female( pat).
female( ann).
male( jim).

sister(X,Y) :-
parent(Z,X),
parent(Z,Y),
female(X).

brother(X,Y) :-
parent(Z,X),
parent(Z,Y),
male(X).

grandfather(X,Y) :-
parent(X,Z),
parent(Z,Y),
male(X).

grandmother(X,Y):-
parent(X,Z),
parent(Z,Y),
female(X).