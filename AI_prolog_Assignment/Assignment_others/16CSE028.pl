parent(jebi, ram).
parent(tom, ram).
parent(tom, nebi).
parent(ram,sebi).
parent(tebi,sebi).
parent(ram,pebi).
parent(hebi,pebi).
parent(pebi, sam).
parent(moh, jodhu).
parent(debi,jodhu).
parent(moh, modhu).
parent(debi,modhu).


female(debi).
female(jebi).
female(hebi).
female(nebi).
female(pebi).
female(sebi).
female(tebi).

male(tom).
male(ram).
male(sam).
male(jodhu).
male(modhu).


sister(X,Y) :-
	parent(Z,X),
	parent(Z,Y),
	not(X = Y),
	female(X).

brother(X,Y) :-
	parent(Z,X),
	parent(Z,Y),
	not(X = Y),
	male(X).

parentalGrandfather(X,Y) :-
	parent(X,Z),
	male(Z),
	parent(Z,Y),
	male(X).

parentalGrandmother(X,Y):-
	parent(X,Z),
	male(Z),
	parent(Z,Y),
	female(X).

maternalGrandfather(X,Y) :-
	parent(X,Z),
	female(Z),
	parent(Z,Y),
	male(X).

maternalGrandmother(X,Y):-
	parent(X,Z),
	female(Z),
	parent(Z,Y),
	female(X).

parentalCousin(X,Y):-
	parent(Z,Y),
	male(Z),
	brother(A,Z),
	parent(A,X).

paternalCousin(X,Y):-
	parent(Z,Y),
	male(Z),
	sister(A,Z),
	parent(A,X).

maternalCousin(X,Y):-
	parent(Z,Y),
	female(Z),
	brother(A,Z),
	parent(A,X).

maternalCousin(X,Y):-
	parent(Z,Y),
	female(Z),
	sister(A,Z),
	parent(A,X).
