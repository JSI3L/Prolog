;a,b,c,d,f,g,h  
;1 4to elemento 
;2 los 3 ultimos
;3 los primeros 3 
;4 eliminar el primero y el ultimo
;5 sumar los primeros 3 
;6 recorrer toda la lista 
;7 invertir los pares de la lista, es decir ab cd -> ba dc


(setq lista '(a b c d e f g h ))
;1
(cadddr lista)
;2
(cdr (cddddr lista))
;3
(cons(car lista)(cons (cadr lista)(cons(caddr lista) '()))) 
;4
(cdr lsita)
;5
(+(car lista)(cadr lista)(caddr lista))
;6

;7
(cons(car lista)(cons(cadr lista)(cons(caddr lista)(cons(cadddr lista)(cons(car(cddddr lista))(cons (cadr(cddddr lista))(cons(caddr(cddddr lista))(cons(cadddr(cddddr lista))'()))))))))