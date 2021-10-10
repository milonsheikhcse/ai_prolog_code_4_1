/* Lab. Assignment  ID-16CSE049*/
parent(monnaf,milon).
parent(monnaf,sohagi).
parent(monnaf,sohag).

parent(akliya,milon).
parent(akliya,sohagi).
parent(akliya,sohag).

parent(moyezuddin,monnaf).
parent(nuribegum,monnaf).

parent(alom,akliya).
parent(sabarjan,akliya).

male(milon).
male(sohag).
male(monnaf).
male(moyezuddin).
male(alom).

female(sohagi).
female(akliya).
female(nuribegum).
female(sabarjan).

grandfather(X,Y):- parent(X,monnaf), parent(monnaf,Y), male(X).
grandmather(X,Y):- parent(X,monnaf), parent(monnaf,Y), female(Y).
