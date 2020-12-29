domains
list=symbol*

predicates
rev(list)
frev(list,list,list)

clauses
rev(L):-frev(L,[],L2), write(L2), nl.
frev([],L1,L1).
frev([H|T],L1,L2):-frev(T,[H|L1],L2).