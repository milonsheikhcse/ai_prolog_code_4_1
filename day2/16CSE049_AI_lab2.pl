/*Lab assignment-2 ID-16CSE049 */

/* father side declaration */

parent(moyej,monnaf,sohag).
parent(moyej,monnaf,milon).
parent(moyej,monnaf,sohagi).

parent(moyej,nuru,anwar).
parent(moyej,nuru,ahosan).
parent(moyej,nuru,buri).

parent(nuribegum,nuru,anwar).
parent(nuribegum,monnaf,sohag).

male(moyej).
male(monnaf).
male(sohag).
male(milon).
male(nuru).
male(anwar).
male(ahosan).

female(nuribegum).
female(sohagi).
female(buri).

brother(sohag,milon).
brother(ahosan,anwar).
sister(sohagi,sohag).
sister(buri,ahosan).


/* Mother side declaration */

parent(nana,akliya,milon).
female(akliya).

parent(nana,mama,ch1).
parent(nana,mama,ch2).
parent(nana,mama,ch3).

parent(nani,akliya,milon).
parent(nani,mama,ch1).

male(nana).
male(mama).
male(ch1).
male(ch2).

female(nani).
female(akliya).
female(ch3).

brother(ch1,ch2).
sister(ch1,ch3).



/* rule 1 */
cousin(X,Y):- grandfather(Z,X),grandfather(Z,Y), X\=Y.
/* rule 2 */
cousin(X,Y):-grandmother(Z,X),grandmother(Z,Y), X\=Y.
/* rule 3 */
grandMother(X,Y):-mother(X,Z),father(Z,Y).
/* rule 4 */
grandFather(X,Y):-father(X,Z),father(Z,Y).
/* rule 5 */
grandMather(X,Y):-mother(X,Z),mother(Z,Y).
/* rule 6 */
grandFather(X,Y):-father(X,Z),mother(Z,Y).








