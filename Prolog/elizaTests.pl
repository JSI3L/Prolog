eliza:- 
    writeln('Hola, mi nombre es Eliza, tu chatbot.'),
    writeln('Por favor ingresa tu consulta.'),
    writeln('Usa solo minúsculas y no pongas un punto al final.'),
    readln(Input),
    eliza(Input), !.

% Respuesta cuando el usuario dice "adios"
eliza(Input):- 
    Input == ['adios'],
    writeln('Adiós. Espero haber podido ayudarte.'), !.

eliza(Input):- 
    Input == ['adios', '.'],
    writeln('Adiós. Espero haber podido ayudarte.'), !.

% Procesar la entrada y generar respuesta
eliza(Input) :-
    template(Stim, Resp, IndStim),
    match(Stim, Input),
    replace0(IndStim, Input, 0, Resp, R),
    writeln(R),
    readln(Input1),
    eliza(Input1), !.

% Plantillas para el saludo y preguntas generales
template([hola, mi, nombre, es, s(_), '.'], ['Hola', 'Como', 'estas', 0, '?'], [4]).
template([buendia, mi, nombre, es, s(_), '.'], ['buen', 'día', 'Como', 'estas', 0, '?'], [4]).

template([hola, ',', mi, nombre, es, s(_), '.'], ['Hola', 0, 'Como', 'estas', 'tu', '?'], [5]).
template([buendia, ',', mi, nombre, es, s(_), '.'], ['Buen', 'día', 'Como', 'estas', 'tu', 0, '?'], [5]).

template([hola, _], ['Hola', 'como', 'estas', '?'], []).
template([buendia, _], ['Buen', 'día', 'Como', 'estas', '?'], []).
template([_, bocho, _], ['Safo'], []).
template([_, safo, _], ['Safo'], []).

% Plantillas que responden según el tipo de pregunta
template([yo, s(_), yo, soy, s(_), '.'], [por, 'que', 0, 'eres', 1, '?'], [1, 4]).
template([yo, s(_), tu, '.'], [why, 'do', 'you', 0, 'me', '?'], [1]).
template([yo, soy, s(_), '.'], [porque, 'eres', 'tu', 0, '?'], [2]).

% Pregunta sobre gustos de Eliza (incluye animes)
template([te, gustan, los, animes, de, s(_), _], [likeAnimeFlag], [4]).
template([te, gusta, el, anime, s(_), _], [likeAnimeFlag], [3]).

% Pregunta sobre lo que Eliza hace
template([tu, eres, s(_), _], [flagDo], [2]).

% Pregunta sobre lo que Eliza es
template([que, eres, tu, s(_)], [flagIs], [2]).
template([eres, s(_), '?'], [flagIs], [2]).

template([como, estas, tu, '?'], [yo, 'estoy', 'bien', ',', 'gracias', 'por', 'preguntar', '.'], []).

template([yo, pienso, que, _], ['bueno', 'esa', 'es', 'tu', 'opinion'], []).
template([porque, _], ['esa', 'no', 'es', 'una', 'buena', 'razon', '.'], []).

template([i, have, s(_), with, s(_), '.'], ['You', 'have', 'to', 'deal', 'with', 'your', 0, 'and', 'your', 1, 'in', 'a', 'mature', 'way', '.'], [2, 4]).
template([i, s(_), _], ['i', 'can', 'recommend', 'you', 'a', 'book', 'about', 'that', 'issue'], []).
template([please, s(_), _], ['No', 'i', 'can', 'not', 'help', ',', 'i', 'am', 'just', 'a', 'machine'], []).
template([tell, me, a, s(_), _], ['No', 'i', 'can', 'not', ',', 'i', 'am', 'bad', 'at', 'that'], []).

template(_, ['Please', 'explain', 'a', 'little', 'more', '.'], []).

% Lo que le gusta a Eliza: animes (con el flag 'likeAnimeFlag')
elizaLikesAnime(X, R) :-
    likesAnime(X),
    R = ['Sí', 'me', 'gusta', 'el', 'anime', X].

elizaLikesAnime(X, R) :-
    \+likesAnime(X),
    R = ['No', 'no', 'me', 'gusta', 'el', 'anime', X].

% Animes que le gustan a Eliza
likesAnime(naruto).
likesAnime(attack_on_titan).
likesAnime(demon_slayer).
likesAnime(steins_gate).
likesAnime(spirited_away).
likesAnime(one_piece).
likesAnime(fruits_basket).

% Lo que Eliza puede hacer: flagDo
elizaDoes(X, R):- 
    does(X), 
    R = ['Sí', 'yo', X, 'y', 'me', 'encanta'].

elizaDoes(X, R):- 
    \+does(X), 
    R = ['No', 'yo', 'no', X, '.', 'Es', 'demasiado', 'difícil', 'para', 'mí'].

does(study).
does(cook).
does(work).

% Lo que Eliza es: flagIs
elizaIs(X, R):- 
    is0(X), 
    R = ['Sí', 'yo', 'soy', X].

elizaIs(X, R):- 
    \+is0(X), 
    R = ['No', 'yo', 'no', 'soy', X].

is0(dumb).
is0(weird).
is0(nice).
is0(fine).
is0(happy).
is0(redundant).

% Función para hacer la comparación entre las plantillas y la entrada
match([],[]).
match([], _):- true.

match([S|Stim],[I|Input]) :-
    atom(S), 
    S == I,
    match(Stim, Input), !.

match([S|Stim],[_|Input]) :-
    \+atom(S),
    match(Stim, Input), !.

% Reemplazo de los 'flags' para procesar las respuestas correctas
replace0([], _, _, Resp, R):- 
    append(Resp, [], R), !.

replace0([I|_], Input, _, Resp, R):-
    nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == likeAnimeFlag,
    elizaLikesAnime(Atom, R).

replace0([I|_], Input, _, Resp, R):-
    nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == flagDo,
    elizaDoes(Atom, R).

replace0([I|_], Input, _, Resp, R):-
    nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == flagIs,
    elizaIs(Atom, R).

replace0([I|Index], Input, N, Resp, R):-
    length(Index, M), M =:= 0,
    nth0(I, Input, Atom),
    select(N, Resp, Atom, R1), 
    append(R1, [], R), !.

replace0([I|Index], Input, N, Resp, R):-
    nth0(I, Input, Atom),
    length(Index, M), M > 0,
    select(N, Resp, Atom, R1),
    N1 is N + 1,
    replace0(Index, Input, N1, R1, R), !.
