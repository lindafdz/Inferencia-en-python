
:- style_check(-singleton).

%Hechos
observa("Juan","Marlenne").
observa("Pepe","Mario").
observa("Mario","Juan").
observa("Marlenne","Arturo").
observa("Arturo","Marlenne").
observa("Felipe","Julia").
observa("Julia","Marlenne").

%Predicados
mujer("Marlenne").
mujer("Julia").
hombre("Juan").
hombre("Felipe").
hombre("Pepe").
hombre("Mario").
hombre("Arturo").

%Bicondicion
feliz(X):-
observa(Y,X),
observa(X,Y),
not(Y==X).