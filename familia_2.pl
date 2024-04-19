:- style_check(-singleton).

casados(jose,elena).
casados(alfredo,doris).
casados(pablo,emma).

vastago(jose,elena,claudio).
vastago(pablo,emma,jaime).

muchacho(claudio).
muchacho(jaime).

hijo(X):-
    vastago(_,_,X),muchacho(X).

esposo(X):-
    casados(X,_).

esposa(Y):-
    casados(_,Y).

relacion_estrecha(X,Y,Z):-
    casados(X,Y),vastago(X,Y,Z).

main:-
    write("establece quien esta casado con quien"),nl,
    write("escribe de quien deseas saber esta casado"),nl,
    read(CASADO),
    relacion_estrecha(CASADO,Y,Z),
    write(CASADO),nl,
    write("esta casado con: "),
    write(Y),nl,
    write("y tienen un hijo(a) llamado(a): "),
    write(Z).
