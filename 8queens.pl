queens(N,Queens):-
    length(Queens,N),
    board(queen,Board,0,N,_,_),
    queen(Board,0,N,Queens).
board([],[],N,N,_,_).
board([_|Queens],[Col-Vars|Board],Col0,N,[_|VR],VC):-
    Col is Col0+1,
    functor(Vars,f,N),
    constraints(N,Vars,VR,VC),
    board(Queens,Board,Col,N,VR,[_|VC]).
constraints(-,_,_,_):-!.
constraints(N,Row,[R|Rs],[C|Cs]):-
    arg(N,Row,R-C),
    M is N-1,
    constraints(M,Row,Rs,Cs).
queens([],_,[]).
queens([C|Cs],Row0,[Col|Solution]):-
    Row is Row0+1,
    select(Col-Vars,[C|Cs],Board),
    arg(Row,Vars,Row-Row),
    queens(Board,Row,Solution).



