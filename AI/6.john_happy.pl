happy(X):-pass(X,history),win(X,lottery).
pass(X,_):-study(X);lucky(X).
lucky(john).
study(not(john)).
win(X,lottery):-lucky(X).