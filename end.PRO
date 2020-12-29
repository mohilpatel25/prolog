domains
list=symbol*

predicates
end
add(symbol,list)
frev(list,list,list)

clauses
end:-   write("Enter letter to enter"),nl,
	readln(A),
	B=[a,b,c],
	add(A,B).

frev([],L1,L1).
frev([H|T],L1,L2):-frev(T,[H|L1],L2).

add(A,B):-frev(B,[],T), 
          Z=[A|T], 
          frev(Z,[],Y), 
          write(Y), nl. 