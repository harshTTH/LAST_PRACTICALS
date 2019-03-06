% % Question 1
% % PART a
% steal(person,object) :- 
% 	theif(person),
% 	likes(person,object),
% 	valuable(object).
% % PART b
% happy(person):-has_a_child(person).

% Question 2
split([H|T],1,[H],T) :- !.
split([H|T],Size,L1,L2) :-
	Size1 is Size-1,
	split(T,Size1,L3,L2),
	append([H],L3,L1).

% Question 3

is_prime(N):-N=<2,!.
is_prime(N):-is_prime(N,2).
is_prime(N,J) :- 
	J =< N/2,
	X is N mod J,
	X \= 0,
	is_prime(N,J+1).
is_prime(N,J) :- J>N/2.

