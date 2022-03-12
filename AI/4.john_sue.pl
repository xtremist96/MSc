likes(john,Y):- food(Y).
food(apple).
food(chicken).
food(Y):- eat(X,Y),alive(X,Y).
alive(bill,peanut).
eat(bill,peanut).
eat(sue,Y):- eat(bill,Y).