points(a,8,8).
points(b,9,-5).
points(c,-4,-6).
points(d,-5,7).


distance(N1,N2,AB):-
points(N1,X1,Y1),
points(N2,X2,Y2),
AB is sqrt((X2-X1)**2+(Y2-Y1)**2).

distance(N1,N2,BC):-
points(N1,X1,Y1),
points(N2,X2,Y2),
BC is sqrt((X2-X1)**2+(Y2-Y1)**2).

distance(N1,N2,CD):-
points(N1,X1,Y1),
points(N2,X2,Y2),
CD is sqrt((X2-X1)**2+(Y2-Y1)**2).

distance(N1,N2,DA):-
points(N1,X1,Y1),
points(N2,X2,Y2),
DA is sqrt((X2-X1)**2+(Y2-Y1)**2).


square(A,B,C,D,T):- distance(a,b,AB),distance(b,c,BC),distance(c,d,CD),distance(a,d,AD).

