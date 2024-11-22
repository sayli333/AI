solution([]).

solution([X/Y|Others]) :-
    solution(Others),
    member(Y, [1,2,3,4,5,6,7,8,9,10]),
    noattack(X/Y, Others).

noattack(_, []).

noattack(X/Y, [X1/Y1|Others]) :-
    Y =\= Y1,
    abs(Y1 - Y) =\= abs(X1 - X),
    noattack(X/Y, Others).

member(X, [X|_]).
member(X, [_|Others]) :- member(X, Others).

template(Solution) :-
    Solution = [1/Y1, 2/Y2, 3/Y3, 4/Y4, 5/Y5, 6/Y6, 7/Y7, 8/Y8, 9/Y9, 10/Y10].

loop :-
    template(Template),
    solution(Template),
    write(Template), nl,
    fail.
loop.


//Output:

% d:/AI/10 Queens.pl compiled 0.00 sec, 0 clauses
