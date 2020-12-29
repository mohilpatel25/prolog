domains
list=symbol*

predicates
check(symbol,list)

clauses
check(X,[X|_]):-write("Member Found"),nl.
check(_,[]):-write("Member not found"),nl.
check(X,[_|T]):-check(X,T).