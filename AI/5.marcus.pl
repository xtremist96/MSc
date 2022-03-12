man(marcus).
pompeian(marcus).
roman(X):- pompeian(X).
ruler(caesar).
hate(X,caesar):- roman(X),not(loyalto(X,caesar)).
loyalto(X,Y):- man(X),man(Y).
loyalto(X,Y):- person(X),ruler(Y),not(tryassasinate(X,Y)).
tryassasinate(marcus,caesar).
person(X):- man(X).