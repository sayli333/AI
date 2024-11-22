parent(john,lisa).
parent(john,mary).

parent(jane,lisa).
parent(jane,mary).

parent(michel, parker).
parent(laura, parker).

parent(arthur,john).

sibling(X,Y):- parent(Z,X), parent(Z,Y), X\=Y.

grandfather(X,Y):- parent(X,Z), parent(Z,Y).


% Output:
/*
d:/40/family.pl compiled 0.00 sec, -5 clauses
?- sibling(lisa, mary).
true.

?- grandfather(arthur,lisa).
true
*/
