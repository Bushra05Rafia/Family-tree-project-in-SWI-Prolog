father(adam,betty).
father(adam,charles).

mother(agath,betty).
mother(agath,charles).

father(betty,david).
mother(ben,david).

father(charles,emma).
mother(corinda,emma).

father(david,frank).
mother(dawn,frank).

father(emma,george).
mother(edward,grorge).

father(frank,harry).
mother(falicty,harry).

father(george,imogen).
mother(gwen,imogen).

parent(Gardian,Son_daughter):-
	mother(Gardian,Son_daughter);
	father(Gardian,Son_daughter).
	
gp(DDNN,Nati):-
	parent(DDNN,Gardian),parent(Gardian,Nati).
	
ggp(DDNN,Nati):-
	parent(DDNN,Gardian),gp(Gardian,Nati).

gggp(DDNN,Nati):-
	parent(DDNN,Gardian),ggp(Gardian,Nati).
	
firstc(C1,C2):-
	gp(X,C1),gp(X,C2).

secondc(C1,C2):-
	ggp(X,C1),ggp(X,C2).
	
once(C1,C2):-
	gp(X,C1),ggp(X,C2),parent(Y,C1),not(gp(Y,C2)).
	
twice(C1,C2):-
	gp(X,C1),gggp(X,C2),parent(Y,C1),not(ggp(Y,C2)).
