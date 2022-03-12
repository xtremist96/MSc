perform(grasp,
state(middle, middle, onbox, hasnot),
state(middle, middle, onbox, has)).
perform(climb,
state(MP, BP, onfloor, H),
state(MP, BP, onbox, H)).
perform(push(P1,P2),
state(P1, P1, onfloor, H),
state(P2, P2, onfloor, H)).
perform(walk(P1,P2),
state(P1, BP, onfloor, H),
state(P2, BP, onfloor, H)).
getfood(state(_,_,_,has)).
getfood(S1):- perform(Act, S1, S2),
nl, write('In '), write(S1),
nl, write(' try '), write(Act),
getfood(S2).