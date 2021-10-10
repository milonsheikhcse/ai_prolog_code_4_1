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
sister(P,Q) :-
parent(R,P),
parent(R,Q),
female(P).
brother(P,Q) :-
parent(R,P),
parent(R,Q),
male(P).
grandfather(P,Q) :-
parent(P,R),
parent(R,Q),
male(P).
grandmother(P,Q):-
parent(P,R),
parent(R,Q),
female(P).
