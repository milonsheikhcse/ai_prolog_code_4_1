points(a,1,6).
points(b,1,3).
points(c,-2,-1).
points(d,-2,2).


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


perallel(A,B,C,D,T):- distance(a,b,AB),distance(c,d,CD);distance(a,d,AD),distance(b,c,BC).

