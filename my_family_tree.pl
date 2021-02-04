father(shahjahan,shahed).
father(shahjahan,rumani).
father(shahjahan,farju).
father(shahjahan,naoshad).

mother(farida,shahed).
mother(farida,rumani).
mother(farida,farju).
mother(farida,naoshad).

father(shahed,maisha).
father(shahed,bushra).
father(shahed,talha).
father(shahed,amreen).

mother(rumani,tasin).
mother(rumani,samin).

father(naoshad,alvi).
father(naoshad,tanzil).
father(naoshad,esam).


parent(Gardian,Son_daughter):-
	mother(Gardian,Son_daughter);
	father(Gardian,Son_daughter).
	
grand_parent(Dada_Dadu_Nana_Nani,Nati):-
	parent(Dada_Dadu_Nana_Nani,Gardian),parent(Gardian,Nati).
sibling(X,Y) :- 
	parent(Z,X),parent(Z,Y).
	
cousin1(Child1,Child2) :-
     parent(Y1,Child1),
     parent(Y2,Child2),
     sibling(Y1,Y2).
	