family(person(monnaf,sheikh,date(7,may,1973),works(biwta,22000)),
       person(akliya,sheikh,date(8,may,1980),unemployed),
       [person(sohag,sheikh,date(9,may,1985),works(businessman,15000)),
        person(milon,sheikh,date(14,may,1996),unemployed),
        person(sohagi,sheikh,date(14,may,1996),unemployed)]).


family(_,_,[_,_,_]).

husband(X):-family(X,_,_).      %X is husband

wife(X):-family(_,X,_).         %X is wife

member(X,[X|L]).
member(X,[Y|L]):-member(X,L).

child(X):-family(_,_,Children),member(X,Children).          %X is child.

exists(Person):-husband(Person);wife(Person);child(Person). %any person in database.
dateofbirth(person(_,_,Date,_),Date).                % here dateofbirth fact and person structure.

/**
*     Ans. to the question no 4.1
* queries are gieven below :
*
* a. ?- family(person(_,Title,_,_),_,[]).
*
* b. ?- child(person(Nam,Title,_,works(_,_))).
*
* c. ?- family(person(_,Title,_,unemployed),person(_,_,_,works(_,_))).
*
* d. ?-family(Hus,Wife,Children),dateofbirth(Hus,date(_,_,Y1)),dateofbirth(wife,date(_,_,Y2),(Y1-Y2 >= 15; Y2-Y1 >=15),member(Child, Children).
*/



%      Ans. to the question no. 4.2
%
% Relation is given below:

twins(Child1,Child2):-
    family(_,_,Children), delte(Child1,Children,Och),member(Child2,Och),
    dateofbirth(Child1,Date),
    dateofbirth(Child2,Date).


