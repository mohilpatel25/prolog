domains
list=symbol*

predicates
beg
add(symbol,list)

clauses
beg:-   write("Enter letter to enter"),nl,
	readln(A),
	B=[a,b,c],
	add(A,B).
add(X,Y):-Z=[X|Y], write(Z), nl.
