/*
 * Problem : 1  make 5 structures
 */


owns(milon,book(phy,author(ishak,amir))).
owns(milon,book(ict,author(forhad,monjur))).
date(14,nov,2020).
computer(cpu(intel),display(samsung),iodevice(10)).
class(student,teacher).


/*
 * Problem : 2
 *
  triangle (point(-1,0),P2,P3 = triangle(P1,point(1,0),point(0,Y)the
  resulting instantiation deffines a family of triangle. How would you
  describe this family?


Ans :

After comparing these two triangles the following variables gets instantiated.
P2=point(l,0)
P3=point(0,Y)
Pl = point(-l, 0)
Now as we can see the distance between P1 and P2 is same.
So, the family of triangle depends on P3.
When value of Y is Y=1 or Y=-1 triangle is called equilateral triangle and if Y is Y>1 or Y<-1 then it is called isosceles triangle.

*/


/*
 Problem : 3

 Ex-2.9:? -big( X), dark( X).
 EXECUTION TRACE:

 (1) Initial list big(X), dark( X).
 (2) Scan the program from top to bottom looking for a clause whose
 head matches the first goal big (X). Clause 1 found.
 This clause has no body, so the goal list, properly instantiated, shrinks to:dark (bear).

*/

dark(bear).
%(3) Scan the program to find a match with dark(bear). Clause 7 found:
dark( Z) :- black(Z).
%Replace the goal by the instantiated body of clause 7, giving a new goal
black(bear).
%  4) Scan the program for the goal black(bear). No clause found. Therefore backtrack to step(3).Now the goal is again
dark(bear).
%Continue scanning the program below clause 7. Clause 8 is found:
dark( Z) :- brown( Z).
%Replace the goal in the goal list by brown(X), giving:
brown(bear).
%  (5)Scan the program and find clause brown( bear).So now the goal list
%       is empty. This indicates successful termination, and the
%       corresponding variable instantiation is:
%  X = bear
%  So find the answer of? - big(X), dark( X). Problem we need 5 steps
%  and to answer of?- dark( X) ,big(X) problem we need 6 steps. So
%  prolog need more work to solve?- dark( X) ,big(X) problem than ?-
%  big(X), dark( X ).






/*
 *
Problem : 4

Ex -2.5: - Assume that a rectangle is represented by the term rectangle( Pl, P2, P3, P4)
where the P's are the vertices of the rectangle positively ordered. Define the relation
regular( R) which is true if R is a rectangle whose sides are vertical and horizontal.

*/
vertical(point(X, Y1), point(X, Y2)) :-
Y1 =\= Y2.
horizontal(point(X1, Y), point(X2, Y)) :-
X1 =\= X2.
regular(point(X1, Y1), point(X2, Y2), point(X3, Y3), point(X4, Y4)) :-
  vertical(point(X1, Y1),point(X2, Y2)),
  horizontal(point(X2, Y2),point(X3, Y3)),
  vertical(point(X3, Y3),point(X4, Y4)),
  horizontal(point(X4, Y4),point(X1, Y1));
  horizontal(point(X1, Y1),point(X2, Y2)),
  vertical(point(X2, Y2),point(X3, Y3)),
  horizontal(point(X3, Y3),point(X4, Y4)),
  vertical(point(X4, Y4),point(X1, Y1)).

/*Query:-
 ?- regular(point(1,1),point(10,1),point(10,5),point(1,5)).
-true
?- regular(point(1,2),point(3,14),point(5,7),point(10,15)).
-false
*/
