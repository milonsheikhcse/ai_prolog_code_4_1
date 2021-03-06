parent(ripa,emra).
parent(emir, emra).
parent(emir, rimi).
parent(emra,mim).
parent(moon,mim).
parent(emra,khusi).
parent(rina,khusi).
parent(khusi, rahmat).
parent(jim, hikmat).
parent(rita,hikmat).
parent(jim, faruk).
parent(rita,faruk).


male(emra).
male(emir).
male(rahmat).
male(hikmat).
male(faruk).

female(ripa).
female(rimi).
female(mim).
female(moon).
female(khusi).
female(rina).
female(rita).


brother(P,Q):-
 parent(R,P),
 parent(R,Q),
 not(P=Q),
 male(P).

sister(P,Q):-
 parent(R,P),
 parent(R,Q),
 not(P=Q),
 female(P).


paternalgrandFather(P,Q):-

 parent(P,R),
 male(R),
 parent(R,Q),
 male(P).

paternalgrandMother(P,Q):-

 parent(P,R),
 male(R),
 parent(R,Q),
 female(P).

maternalgrandFather(P,Q):-

 parent(P,R),
 female(R),
 parent(R,Q),
 male(P).

maternalgrandMother(P,Q):-

 parent(P,R),
 female(R),
 parent(R,Q),
 female(P).

parentalCousin(P,Q):-

 parent(R,Q),
 male(R),
 brother(X,R),
 parent(X,P).

paternalCousin(P,Q):-

 parent(R,Q),
 male(R),
 sister(X,R),
 parent(X,P).

maternalCousin(P,Q):-

 parent(R,Q),
 female(R),
 brother(X,R),
 parent(X,P).

maternalCousin(P,Q):-

 parent(R,Q),
 female(R),
 sister(X,R),
 parent(X,P).
