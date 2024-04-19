:- style_check(-singleton).

empleado(ortiz).
empleado(zavala).
mecanografa(ramos).
gerente(jimenez).
gerente(mejia).


supervisa(X,Y):- 
    gerente(X),empleado(Y).

supervisa(X,Y):- 
    empleado(X), mecanografa(Y).

supervisa(X,Y):-
    gerente(X),mecanografa(Y).


supervisa(X,Y):-
    gerente(X),empleado(Y),!.

supervisa(X,Y):-
    empleado(X),mecanografa(Y).

supervisa(X,Y):-
    gerente(X),mecanografa(Y),!.
