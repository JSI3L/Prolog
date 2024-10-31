% CONTEXTO  
libro_en_biblioteca_nacional("Don Quijote de la Mancha").
solo_consulta("Don Quijote de la Mancha").
catalogado(libro, biblioteca_nacional).

libro_en_varias_bibliotecas(Libro) :- biblioteca(Libro, _), biblioteca(Libro, _2), _ \= _2.

no_prestar(libro).

biblioteca(biblioteca_central).

numero_libros(biblioteca_central, 10000).

autor_con_libro(Autor) :- libro_autor(Libro, Autor), biblioteca(Libro, _).

autor_con_mas_de_cinco_libros(Autor) :- findall(Libro, libro_autor(Libro, Autor), Libros), length(Libros, N), N > 5.

no_todos_buen_estado.

puede_prestarse(Libro) :- buen_estado(Libro).

puede_pedir_prestado(Usuario) :- registrado(Usuario).

solo_consulta(Libro).

devolucion_en_15_dias(Libro).

libro_no_pedido_prestamo(Libro).

no_puede_pedir_prestado(Usuario) :- tiene_multa(Usuario).

misma_seccion_autor(Libros, Autor) :- findall(Libro, libro_autor(Libro, Autor), Libros).

libro_con_mas_de_un_ejemplar(Libro) :- ejemplares(Libro, N), N > 1.

devolver_para_pedir(Usuario) :- tiene_prestamos(Usuario, N), N > 3.

seccion_ciencias.

no_todos_mas_de_100_paginas.

prestado_todos_infantil(Usuario).

% REGLAS

% Regla 1 
% Si un libro está solo en consulta, ningún usuario puede llevarlo en préstamo.
solo_consulta(Libro) :- no_prestar(Libro).
% Regla 2
puede_solicitar_otro_libro(Usuario) :- tiene_prestamos(Usuario, 3), devuelve_uno(Usuario).
% Regla 3

% Regla 4
no_renueva_prestamos(Usuario) :- tiene_multa(Usuario).
% Regla 5
devolver_uno_prestamos(Usuario) :- tiene_prestamos(Usuario, N), N > 5, pedir_otro(Usuario).
% Regla 6
varias_bibliotecas(Libro) :- ejemplares(Libro, N), N > 3.
% Regla 7
obras_destacadas(Seccion) :- libros_autor_biblioteca(Autor, N), N > 10, seccion_obras_destacadas(Autor, Seccion).
% Regla 8
plazo_menor(Libro) :- solicitado_por(Libro, N), N > 3.
% Regla 9
no_accede_libros_raros(Usuario) :- tiene_multas(Usuario, N), N >= 3.
% Regla 10
solo_prestamo(Libro) :- buen_estado(Libro), ejemplares(Libro, N), N < 2.
% Regla 11
devolver_en_10_dias(Usuario, Libro) :- libro_ciencias(Libro), prestamo(Usuario, Libro).
% Regla 12
seccion_cerrada(Seccion) :- libros_mal_estado(Seccion).
% Regla 13

% Regla 14

% Regla 15
revision_estado(Libro) :- prestado(Libro, N), N > 5.
% Regla 16
asigna_multa(Usuario) :- devolvio_mal_estado(Usuario, _).
% Regla 17
autor_internacional(Autor) :- bibliotecas_autor(Autor, N), N > 2.
% Regla 18

% Regla 19
considerado_donacion(Libro) :- en_biblioteca(Libro, Tiempo), Tiempo > 1, no_prestado(Libro).
% Regla 20
seccion_especial_consulta(Libro) :- popular(Libro), ejemplares(Libro, N), N > 3.
