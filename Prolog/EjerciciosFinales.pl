% Problema 1: Los guardianes de los templos
guardianes :-
    % Definimos los guardianes y sus templos
    Guardianes = [apolo-A, hecate-H, ares-Ar, hermes-He],
    Tempos = [fuego, agua, tierra, aire],
    permutation(Tempos, [A, H, Ar, He]),

    % Restricciones
    A \= fuego, A \= tierra,     % Apolo no cuida fuego ni tierra
    H \= aire,                  % Hécate no cuida aire
    Ar \= agua, Ar \= aire,     % Ares no cuida agua ni aire
    (He = fuego; He = agua),    % Hermes cuida fuego o agua

    % Imprimir solución
    write('Templos asignados:'), nl,
    write(Guardianes), nl.

% Problema 2: Las armas de los héroes
heroes :-
    % Definimos los héroes y sus armas
    Heroes = [aquiles-A, perseo-P, hercules-H, teseo-T],
    Armas = [espada, lanza, arco, escudo],
    permutation(Armas, [A, P, H, T]),

    % Restricciones
    A \= escudo, A \= arco,     % Aquiles no usa escudo ni arco
    P \= espada,               % Perseo no usa espada
    H \= lanza, H \= escudo,   % Hércules no usa lanza ni escudo
    (T = arco; T = escudo),    % Teseo usa arco o escudo

    % Imprimir solución
    write('Armas asignadas:'), nl,
    write(Heroes), nl.

% Problema 3: Las gemas de los titanes
titanes :-
    % Definimos los titanes y sus gemas
    Titanes = [cronos-C, oceano-O, hiperion-H, japeto-J],
    Gemas = [zafiro, rubi, esmeralda, diamante],
    permutation(Gemas, [C, O, H, J]),

    % Restricciones
    C \= zafiro, C \= diamante, % Cronos no tiene zafiro ni diamante
    O \= rubi,                 % Océano no tiene rubí
    H \= zafiro, H \= rubi,    % Hiperión no tiene zafiro ni rubí
    (J = diamante; J = esmeralda), % Japeto tiene diamante o esmeralda

    % Imprimir solución
    write('Gemas asignadas:'), nl,
    write(Titanes), nl.

% Consulta principal para resolver todos los problemas
resolver :-
    write('Problema 1:'), nl,
    guardianes, nl,
    write('Problema 2:'), nl,
    heroes, nl,
    write('Problema 3:'), nl,
    titanes, nl.
