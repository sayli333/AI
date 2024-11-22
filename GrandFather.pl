parent(a,b).
parent(b,g).

grandfather(X,Y):- parent(X,Z), parent(Z,Y).
