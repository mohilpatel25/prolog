domains
list=symbol*

predicates
findbeg(symbol,list)
findend(symbol,list)
findh(symbol,list,integer)
found(list,integer)

clauses
findbeg(X,L):-findh(X,L,1).
findh(H,[H|_],N):-write("Found at ", N),nl.
findh(X,[_|T],N):-NN=N+1,findh(X,T,NN).
findh(_,[],_):-write("Not found"),nl.

findend(X,[X|T]):-found(T,1).
findend(_,[]):-write("Not found"),nl.
findend(X,[_|T]):-findend(X,T).

found([],N):-write("Found at ",N),nl.
found([_|T],N):-NN=N+1,found(T,NN).